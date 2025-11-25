import json
from models.museu import Museu

class MuseuService:
    def __init__(self):
        self.db_path = 'data/museus.json'

    def get_all(self):
        try:
            with open(self.db_path, 'r', encoding='utf-8') as f:
                dados = json.load(f)
                return [Museu(**item) for item in dados]
        except FileNotFoundError:
            return []