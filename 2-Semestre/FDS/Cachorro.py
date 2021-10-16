# Defini que a classe cachorro possui as tambem as caracteristicas de animal 
class Cachorro(Animal):

    def __init__(self, dados):
        informacoes = dados

        #Defini a especie do cachorro
        informacoes.especie = "Canis Lupus"

        super().__init__(self, informacoes)

    def latir(self):
        # Defini que agora um cachorro pode latir

    

