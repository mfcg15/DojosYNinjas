from flask import render_template, request, redirect
from _app.models.dojo import Dojo
from _app.models.ninja import Ninja
from _app import app

@app.route("/ninjas")
def Newninjas():
    dojos = Dojo.get_all()
    return render_template('ninja.html', all_dojos = dojos)

@app.route('/create_ninja', methods=["POST"])
def ninjaNew():
    data = {
        "first_name": request.form["first_name"],
        "last_name" : request.form["last_name"],
        "age" : request.form["age"],
        "dojo_id" : int(request.form["dojo_id"])
    }
    Ninja.save(data)
    return redirect('/dojos')