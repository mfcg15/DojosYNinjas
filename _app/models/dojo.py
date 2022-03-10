from _app.config.connection import connectToMySQL

class Dojo:
    def __init__( self , data ):
        self.id = data['id']
        self.nombre = data['nombre']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']
        self.ninjas = []
    
    @classmethod
    def save(cls, data ):
        query = "INSERT INTO dojos (nombre,created_at, updated_at ) VALUES ( %(nombre)s , NOW() , NOW() );"
        return connectToMySQL('esquema_dojos_y_ninjas').query_db( query, data)

    @classmethod
    def get_all(cls):
        query = "SELECT * FROM dojos;"
        results = connectToMySQL('esquema_dojos_y_ninjas').query_db(query)
        dojos = []
        for dojo in results:
            dojos.append(dojo)
        return dojos

    @classmethod
    def get_dojo(cls,data):
        query = "SELECT * FROM dojos where id = %(id)s;"
        results = connectToMySQL('esquema_dojos_y_ninjas').query_db(query,data)
        dojo = []
        for i in results:
            dojo.append(i)
        return dojo
