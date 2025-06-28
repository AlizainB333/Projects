from services.connection import connect_to_db
from random import randint
import mysql.connector
from mysql.connector import Error

class Recipe:
    def __init__(self, name, id, instruction, cal_level, user_liked, avg):
        self.name = name
        self.id = id
        self.instruction = instruction
        self.cal_level = cal_level
        self.user_liked = user_liked
        self.avg = avg

class User:
    def __init__(self, id, name):
        self.Id = id
        self.name = name

class Review:
    def __init__(self, id, rating, review):
        self.id = id
        self.rating = rating
        self.review = review

def removeFirstLast(s):
    s.strip()
    return s[1:-1]

def instrListFromStr(inst_str):
    temp = removeFirstLast(inst_str)
    inst_list = temp.split('\'')
    final = []
    for i in range(0, len(inst_list)):
        if (i%2 == 0):
            continue
        final.append(inst_list[i])
    return final


def getAllRecipes(user_id):
    connection = connect_to_db()  
    cursor = connection.cursor()
    recipes = []

    cursor.callproc('GetRecipes', (user_id,)) 

    for result in cursor.stored_results():
        rows = result.fetchall()
        for row in rows:
            if user_id:
                recipes.append(Recipe(row[0], row[1], instrListFromStr(row[2]), row[3], row[4], row[5]))
            else:
                recipes.append(Recipe(row[0], row[1], instrListFromStr(row[2]), row[3], 0, row[4]))

    connection.close()
    return recipes

def getLikedRecipes(user_id):
    connection = connect_to_db()
    cursor = connection.cursor()
    query = "SELECT Recipes.Name, Recipes.Id, Recipes.Instruction, Recipes.Cal_Level, AvgRating FROM Users NATURAL JOIN Likes JOIN Recipes ON (Likes.Recipe_Id = Recipes.Id) LEFT JOIN (SELECT Recipe_Id, AVG(Rating) as AvgRating FROM Interactions NATURAL JOIN Reviews GROUP BY Interactions.Recipe_Id) as average ON (Recipes.Id = average.Recipe_Id)WHERE Users.User_Id = %s"
    cursor.execute(query, (user_id,))
    rows = cursor.fetchall()
    recipes = []
    for row in rows:
        recipes.append(Recipe(row[0], row[1], instrListFromStr(row[2]), row[3], 1, row[4]))
    connection.close()
    return recipes

def likeRecipe(user_id, recipe_id):
    connection = connect_to_db()
    cursor = connection.cursor()
    query = "INSERT IGNORE INTO Likes(User_Id, Recipe_Id) VALUES (%s, %s)"
    cursor.execute(query, (user_id, recipe_id))
    connection.commit()
    connection.close()

def unlikeRecipe(user_id, recipe_id):
    connection = connect_to_db()
    cursor = connection.cursor()
    query = "DELETE FROM Likes WHERE User_Id = %s AND Recipe_Id = %s"
    cursor.execute(query, (user_id, recipe_id))
    connection.commit()
    connection.close()

def addIngredientToFridge(user_id, ing_name):
    connection = connect_to_db()
    cursor = connection.cursor()
    query = "INSERT IGNORE INTO Fridge(User_Id, Ing_Id) VALUES (%s, (SELECT Ing_Id FROM Ingredients WHERE Name = %s))"
    cursor.execute(query, (user_id, ing_name))
    connection.commit()
    connection.close()

def removeIngredientFromFridge(user_id, ing_name):
    connection = connect_to_db()
    cursor = connection.cursor()
    query = "DELETE FROM Fridge WHERE User_Id = %s AND Ing_Id = (SELECT Ing_Id FROM Ingredients WHERE Name = %s)"
    cursor.execute(query, (user_id, ing_name))
    connection.commit()
    connection.close()

def getRandomRecipe():
    connection = connect_to_db()
    cursor = connection.cursor()
    query = "SELECT Recipes.Name, Recipes.Id, Recipes.Instruction, Recipes.Cal_Level, AvgRating FROM Recipes LEFT JOIN (SELECT Recipe_Id, AVG(Rating) as AvgRating FROM Interactions NATURAL JOIN Reviews GROUP BY Interactions.Recipe_Id) as average ON (Recipes.Id = average.Recipe_Id) WHERE Id = %s"
    rand = randint(1, 338268)
    cursor.execute(query, (rand,))
    row = cursor.fetchall()
    while not row:
        rand = randint(1, 338268)
        cursor.execute(query, (rand,))
        row = cursor.fetchall()
    connection.close()
    return Recipe(row[0][0], row[0][1], instrListFromStr(row[0][2]), row[0][3], 0, row[0][4])

def useMyIngredients(user_id):
    connection = connect_to_db()
    cursor = connection.cursor()
    query = "SELECT r.Name, r.Id, r.Instruction, r.Cal_Level, AvgRating FROM Recipes r LEFT JOIN (SELECT Recipe_Id, AVG(Rating) as AvgRating FROM Interactions NATURAL JOIN Reviews GROUP BY Interactions.Recipe_Id) as average ON (r.Id = average.Recipe_Id) WHERE r.Id NOT IN (SELECT DISTINCT ui.Recipe_Id FROM Used_Ingredients ui WHERE ui.Ing_Id NOT IN (SELECT f.Ing_Id FROM Fridge f WHERE f.User_Id = %s));"
    cursor.execute(query, (user_id,))
    rows = cursor.fetchall()
    recipes = []
    for row in rows:
        recipes.append(Recipe(row[0], row[1], instrListFromStr(row[2]), row[3], 1, row[4]))
    connection.close()
    return recipes

def getIngredientsInFridge(user_id):
    connection = connect_to_db()
    cursor = connection.cursor()
    query = "SELECT Ingredients.Name FROM Fridge NATURAL JOIN Ingredients WHERE User_Id = %s "
    cursor.execute(query, (user_id,))
    rows = cursor.fetchall()
    ingr = []
    for row in rows:
        ingr.append(row[0])
    connection.close()
    return ingr

def getGroceryList(user_id):
    connection = connect_to_db()
    cursor = connection.cursor()
    query = "SELECT Ingredients.Name FROM Likes NATURAL JOIN Used_Ingredients NATURAL JOIN Ingredients WHERE User_Id = %s AND Ingredients.Name NOT IN (SELECT Ingredients.Name FROM Fridge NATURAL JOIN Ingredients WHERE User_Id = %s)"
    cursor.execute(query, (user_id, user_id))
    rows = cursor.fetchall()
    ingr = []
    for row in rows:
        ingr.append(row[0])
    connection.close()
    return ingr

def getRecipe(recipe_id):
    connection = connect_to_db()
    cursor = connection.cursor()
    query = "SELECT r.Name, r.Id, r.Instruction, r.Cal_Level, AvgRating FROM Recipes r LEFT JOIN (SELECT Recipe_Id, AVG(Rating) as AvgRating FROM Interactions NATURAL JOIN Reviews GROUP BY Interactions.Recipe_Id) as average ON (r.Id = average.Recipe_Id) WHERE Id = %s"
    cursor.execute(query, (recipe_id,))
    row = cursor.fetchall()
    connection.close()
    return Recipe(row[0][0], row[0][1], instrListFromStr(row[0][2]), row[0][3], 0, row[0][4])

def createNewUser(full_name):
    connection = connect_to_db()
    cursor = connection.cursor()
    cursor.execute("SELECT Max(User_Id) FROM Users")
    val = cursor.fetchall()
    user_id = val[0][0] + 1
    try:
        query = "INSERT IGNORE INTO Users(User_Id, Name) VALUES (%s, %s)"
        cursor.execute(query,(user_id, full_name))
        connection.commit()
    except mysql.connector.Error as err:
        print(f"Error occurred: {err}")
    finally:
        connection.close()
    return user_id

def getUserData(user_id):
    connection = connect_to_db()
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM Users WHERE User_Id= %s", (user_id,))
    row = cursor.fetchall()
    connection.close()
    return User(row[0][1], row[0][0])

def updateName(user_id, new_name) :
    connection = connect_to_db()
    cursor = connection.cursor()
    try:
        cursor.execute("UPDATE Users SET Name = %s WHERE User_Id = %s", (new_name, user_id))
        connection.commit()
    except mysql.connector.Error as err:
        print(f"Error occurred: {err}")
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()

def getReviews(recipe_id):
    connection = connect_to_db()
    cursor = connection.cursor()
    query = "SELECT Reviews.Review_Id, Reviews.Rating, Reviews.Review FROM Reviews NATURAL JOIN Interactions WHERE Recipe_Id = %s"
    cursor.execute(query, (recipe_id,))
    rows = cursor.fetchall()
    reviews = []
    for row in rows:
        reviews.append(Review(row[0], row[1], row[2]))
    connection.close()
    return reviews

def addReview(user_id, recipe_id, rev, rating):
    connection = connect_to_db()
    cursor = connection.cursor()
    cursor.execute("SELECT Max(Review_Id) FROM Reviews")
    val = cursor.fetchall()
    review_id = val[0][0] + 1
    connection.close()

    connection1 = connect_to_db()
    cursor1 = connection1.cursor()
    cursor1.callproc('AddReviewAndInteraction', (recipe_id, review_id, rating, rev, user_id)) 
    connection1.close()

def getMatchingRecipes(user_id):
    connection = connect_to_db()
    cursor = connection.cursor()

    try:
        cursor.callproc('GetRecipeWithLowCalories', (user_id,))
        for result in cursor.stored_results():
            rows = result.fetchall()
        
        recipes = [Recipe(row[0], row[1], instrListFromStr(row[2]), row[3], 0, row[4]) for row in rows]
    
    except mysql.connector.Error as err:
        print(f"Error occurred: {err}")
        recipes = []
    
    finally:
        connection.close()
    
    return recipes
