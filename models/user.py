class User:
    def __init__(self, name, email, password, id=None, **kwargs):
        self.id = id
        self.name = name
        self.email = email
        self.password = password
        
        for key, value in kwargs.items():
            setattr(self, key, value)

    def to_dict(self):
        return self.__dict__