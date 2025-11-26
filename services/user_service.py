import json
import os
from models.user import User

class UserService:
    def __init__(self):
        self.db_path = 'data/users.json'
        
        if not os.path.exists(self.db_path):
            with open(self.db_path, 'w') as f:
                json.dump([], f)

    def _load_users(self):
        try:
            with open(self.db_path, 'r') as f:
                return json.load(f)
        except:
            return []

    def _save_users(self, users):
        with open(self.db_path, 'w') as f:
            json.dump(users, f, indent=4)

    def create_user(self, name, email, password):
        users = self._load_users()
        
        for u in users:
            if u['email'] == email:
                return False
        
        new_user = User(name, email, password)
        users.append(new_user.to_dict())
        self._save_users(users)
        return True

    def authenticate(self, email, password):
        users = self._load_users()
        
        for u in users:
            if u['email'] == email and u['password'] == password:
                return u['name']
        
        return None