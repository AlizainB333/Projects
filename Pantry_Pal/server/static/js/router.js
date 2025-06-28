const routes = {
    home: "/",
    fridge: "/fridge",
    preferences: "/preferences",
    liked: "/liked",
    recipe: "/recipe",
    ingredients: "/ingredients",
    login: "/login",
    groceries: "/groceries",
    add_ingredient: "/add_to_fridge"
};

function navigateTo(route) {
    const currentSearchParams = new URLSearchParams(window.location.search);
    const uid = currentSearchParams.get('uid');
    if (uid == null) {
        window.location.href = routes[route];
    } else {
        window.location.href = routes[route] + "?uid=" + uid;
    } 
}

var fridge_btn = document.getElementById("FridgeBtn")
if (fridge_btn != null) {
    fridge_btn.addEventListener("click", function () {
        const url = new URL(window.location.href);
        const user_id = url.searchParams.has('uid');
        if (user_id) {
            navigateTo('fridge');
        } else {
            alert('Please Log in or Create an account')
        }
            
    });
}


var liked_btn = document.getElementById("LikedBtn")
if (liked_btn != null) {
    liked_btn.addEventListener("click", function () {
        const url = new URL(window.location.href);
        const user_id = url.searchParams.has('uid');
        if (user_id){
            navigateTo('liked');
        } else {
            alert('Please Log in or Create an account')
        }
    });
}

var rand_rec_btn = document.getElementById("RandomRecipe")
if (rand_rec_btn != null) {
    rand_rec_btn.addEventListener("click", function () {
        navigateTo('recipe')
    });
}

var use_ingr = document.getElementById("UseIngr")
if (use_ingr != null) {
    use_ingr.addEventListener("click", function () {
        const url = new URL(window.location.href);
        const user_id = url.searchParams.has('uid');
        if (user_id){
            navigateTo('ingredients');
        } else {
            alert('Please Log in or Create an account')
        }
    });
}

var groceries = document.getElementById("Groceries")
if (groceries != null) {
    groceries.addEventListener("click", function () {
        const url = new URL(window.location.href);
        const user_id = url.searchParams.has('uid');
        if (user_id) {
            navigateTo('groceries');
        } else {
            alert('Please Log in or Create an account')
        }
    });
}

function goToRecipe(recipe_id) {
    const currentSearchParams = new URLSearchParams(window.location.search);
    currentSearchParams.set('rid', recipe_id);
    window.location.href = "/recipe?" + currentSearchParams.toString();
}

function addIngredient(event) {
    event.preventDefault(); 
    const currentSearchParams = new URLSearchParams(window.location.search);
    const uid = currentSearchParams.get('uid');
    const formData = new FormData(event.target); 
    const newIng = formData.get("ingredient"); 
    window.location.href = "/add_to_fridge?" + "uid=" + uid + "&ingredient=" + newIng;
}   

function removeIngredient(event) {
    event.preventDefault(); 
    const currentSearchParams = new URLSearchParams(window.location.search);
    const uid = currentSearchParams.get('uid');
    const formData = new FormData(event.target); 
    const newIng = formData.get("ingredient"); 
    window.location.href = "/remove_from_fridge?" + "uid=" + uid + "&ingredient=" + newIng;
}  

function interactRecipe(lb, recipe_id, user_id) {
    if (user_id == "None") {
        alert('Please Log in or Create an account')
    } else {
        lb.classList.toggle('liked-check-0');
        lb.classList.toggle('liked-check-1');
        if (lb.classList.contains('liked-check-1')) {
            window.location.href = "/like_recipe?" + "uid=" + user_id + "&rid=" + recipe_id; 
        } else {
            window.location.href = "/unlike_recipe?" + "uid=" + user_id + "&rid=" + recipe_id;
        }
    }
    
}

function userSettings(user_id) {
    window.location.href = "/settings?uid=" + user_id;
}

function reviewPage(recipe_id) {
    const url = new URL(window.location.href);
    const user_id = url.searchParams.has('uid');
    if (user_id) {
        const currentSearchParams = new URLSearchParams(window.location.search);
        const uid = currentSearchParams.get('uid');
        window.location.href = "/review?uid=" + uid + "&rid=" + recipe_id;
    } else {
        alert('Please Log in or Create an account')
    }
}

function findMatchingRecipe(user_id) {
    if (user_id === "None" || !user_id) {
        alert('Please Log in or Create an account');
    } else {
        window.location.href = "/find_matching_recipe?uid=" + user_id;
    }
}


// function addReview(user_id, recipe_id) {

// }
