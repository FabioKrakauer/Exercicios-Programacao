class Animal:

    def __init__(self, dados):
        self.raca = dados["raca"]
        self.especie = dados["especie"]
        self.peso = dados["peso"]
        self.cor = dados["cor"]

    def comer(self):
        print(self.raca, "esta indo comer")
    
    def dormir(self):
        print(self.raca, "esta indo dormir")