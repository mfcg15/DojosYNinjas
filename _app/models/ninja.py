from _app.config.connection import connectToMySQL

class Ninja:
    def __init__( self , data ):
        self.id = data['id']
        self.first_name = data['first_name']
        self.last_name = data['last_name']
        self.age = data['age']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']
    
    @classmethod
    def save(cls, data ):
        query = "INSERT INTO ninjas ( first_name , last_name , age , dojo_id, created_at, updated_at ) VALUES ( %(first_name)s , %(last_name)s , %(age)s, %(dojo_id)s , NOW() , NOW() );"
        return connectToMySQL('esquema_dojos_y_ninjas').query_db( query, data)

    @classmethod
    def get_dojo_ninja(cls,data):
        query = "select * from ninjas inner join dojos on ninjas.dojo_id = dojos.id where dojos.id = %(id)s;"
        results = connectToMySQL('esquema_dojos_y_ninjas').query_db(query,data)
        dojoNinjas = []
        for i in results:
            dojoNinjas.append(i)
        return dojoNinjas