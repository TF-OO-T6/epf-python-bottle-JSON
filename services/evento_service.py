import json
from models.evento import Evento

class EventoService:
    def __init__(self):
        self.db_path = 'data/eventos.json'

    def get_all(self):
        try:
            with open(self.db_path, 'r', encoding='utf-8') as f:
                dados = json.load(f)
                return [Evento(**item) for item in dados]
        except FileNotFoundError:
            return []
       
    def get_by_id(self, id_buscado):
       
        todos = self.get_all()
       
        for item in todos:
            if str(item.id) == str(id_buscado):
                return item
        return None
        