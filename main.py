# --- ARQUIVO: main.py ---
from app import App 

def create_app():
    return App()

if __name__ == '__main__':
    app = create_app()
    
    print("🚀 Tentando iniciar servidor...")
    app.run()