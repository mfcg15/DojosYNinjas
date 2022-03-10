from flask import render_template, request, redirect
from _app.models.dojo import Dojo
from _app.models.ninja import Ninja
from _app import app

@app.route("/")
def index():
    return redirect('/dojos')

@app.route("/dojos")
def dojos():
    dojos = Dojo.get_all()
    return render_template('dojo.html', all_dojos = dojos)

@app.route('/create_dojo', methods=["POST"])
def dojoNew():
    data = {
        "nombre": request.form["nombre"],
    }
    Dojo.save(data)
    return redirect('/dojos')

@app.route("/dojos/<int:id>")
def dojosNinja(id):
    idDojo = id
    data = {
        "id": idDojo,
    }
    dojo = Dojo.get_dojo(data)
    dojoNinja = Ninja.get_dojo_ninja(data)
    tamaño = len(dojoNinja)
    return render_template('dojoninja.html', dojo = dojo, dojoNinja = dojoNinja, tamaño = tamaño)
