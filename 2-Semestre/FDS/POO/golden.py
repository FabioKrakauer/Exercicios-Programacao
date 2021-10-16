from cachorro import Cachorro

class Golden(Cachorro):

    def __init__(self, dados):
        informacoes = dados

        informacoes["raca"] = "Golden"
        super().__init__(informacoes)

    def latir(self):
        print("Golden está comendo!")