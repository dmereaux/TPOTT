from robot.api.deco import  keyword, library    #grace a cela je peux renommer mes mots cles 
from    robot.api import    SkipExecution   #grace a cela je peux skipmes mots cles
class tarif:
    __version__=2.1
    limit = 12
    def     __init__(self,age:int=12):
        self.limit=age
    @keyword('ratp_tarif')
    def calcul_tarif(self,age:int):
        if age > self.limit :
            return  "plein tarif"
        else :
            return "demi tarif"
#keyword
    def any_arguments(*args):
        for arg in args:
            print(arg)
    any_arguments.robot_name="lister"

    def skippy(self):
        raise   SkipExecution('message pour skip')
