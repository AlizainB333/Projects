from flask import Flask, render_template, request, redirect, flash
from services.database import getAllRecipes, getLikedRecipes, getRandomRecipe, useMyIngredients, getIngredientsInFridge, getGroceryList, getRecipe, createNewUser, addIngredientToFridge, removeIngredientFromFridge, likeRecipe, unlikeRecipe, getUserData, updateName, getReviews, addReview, getMatchingRecipes

app = Flask(__name__)

@app.route('/')
def index():
    user_id = request.args.get('uid')
    recipe_list = getAllRecipes(user_id)
    return render_template('index.html', recipes = recipe_list, user = user_id )

@app.route('/fridge')
def fridge():
    user_id = request.args.get('uid')
    ingrs = getIngredientsInFridge(user_id)
    return render_template('fridge.html', user = user_id, ingrs = ingrs)

@app.route('/liked')
def liked() :
    user_id = request.args.get('uid')
    liked_recipes = getLikedRecipes(user_id)
    return render_template('index.html', recipes = liked_recipes, user = user_id)

@app.route('/recipe')
def recipe():
    recipe_id = request.args.get('rid')
    recipe = getRandomRecipe()
    if recipe_id != None:
        recipe = getRecipe(recipe_id)
    user_id = request.args.get('uid')
    return render_template('recipe.html', recipe = recipe, user = user_id)

@app.route('/ingredients')
def ingredients() :
    user_id = request.args.get('uid')
    recipes = useMyIngredients(user_id)
    return render_template('index.html', recipes = recipes, user = user_id)

@app.route('/groceries')
def grocery():
    user_id = request.args.get('uid')
    ingrs = getGroceryList(user_id)
    return render_template('fridge.html', user = user_id, ingrs = ingrs)

@app.route('/login', methods=['GET', 'POST'])
def login():
    user_id = request.args.get('uid')
    new_user = request.args.get('nuser')
    full_name = request.args.get('fullName')
    if (new_user == 'on'):
        user_id = createNewUser(full_name)
    redirect_str = "/?uid=" + str(user_id)
    return redirect(redirect_str)

@app.route('/add_to_fridge')
def add_to_fridge():
    user_id = request.args.get('uid')
    new_ing = request.args.get('ingredient')
    addIngredientToFridge(user_id, new_ing)
    redirect_str = "/fridge?uid=" + str(user_id)
    return redirect(redirect_str)

@app.route('/remove_from_fridge')
def remove_from_fridge():
    user_id = request.args.get('uid')
    new_ing = request.args.get('ingredient')
    removeIngredientFromFridge(user_id, new_ing)
    redirect_str = "/fridge?uid=" + str(user_id)
    return redirect(redirect_str)

@app.route('/like_recipe')
def like_recipe():
    user_id = request.args.get('uid')
    recipe_id = request.args.get('rid')
    likeRecipe(user_id, recipe_id)
    redirect_str = "/?uid=" + str(user_id)
    return redirect(redirect_str)

@app.route('/unlike_recipe')
def unlike_recipe():
    user_id = request.args.get('uid')
    recipe_id = request.args.get('rid')
    unlikeRecipe(user_id, recipe_id)
    redirect_str = "/?uid=" + str(user_id)
    return redirect(redirect_str)

@app.route('/settings')
def settings():
    user_id = request.args.get('uid')
    user = getUserData(user_id)
    return render_template('settings.html', user= user)

@app.route('/update_name')
def update_name():
    user_id = request.args.get('uid')
    new_name = request.args.get('fullName')
    updateName(user_id, new_name)
    redirect_str = "/settings?uid=" + str(user_id)
    return redirect(redirect_str)

@app.route('/review')
def review():
    user_id = request.args.get('uid')
    recipe_id = request.args.get('rid')
    reviews = getReviews(recipe_id)
    return render_template("reviews.html", user = user_id, recipe = recipe_id, reviews= reviews)

@app.route('/add_review')
def add_review():
    user_id = request.args.get('uid')
    recipe_id = request.args.get('rid')
    rev = request.args.get('rev')
    rating = request.args.get('rating')
    addReview(user_id, recipe_id, rev, rating)
    redirect_str = "/review?uid=" + str(user_id) + "&rid=" + str(recipe_id)
    return redirect(redirect_str)

@app.route('/find_matching_recipe')
def find_matching_recipe():
    user_id = request.args.get('uid')
    if not user_id:
        flash("User ID is required to find matching recipes.")
        return redirect('/')
    matching_recipes = getMatchingRecipes(user_id)

    # not sure abt rendering/ returning the matched recipes that is <= 1 cal level. I am not entirely sure my function in database.py is correct
    # the idea is that a recipe is returned by the transcaction and i display it w this call
    return render_template('recipe.html', recipes=matching_recipes, user=user_id)


if __name__ == "__main__":
    app.run(debug=True)
