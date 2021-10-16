# Defini que a classe cachorro possui tambem as caracteristicas de um animal
from animal import Animal
class Cachorro(Animal):

    def __init__(self, dados):
        informacoes = dados

        # Defini a especie do cachorro
        informacoes["especie"] = "Canis Lupus"
        super().__init__(informacoes)

    def latir(self):
        print(self.raca, ":AU AU AU")