import sys
import time
from colorama import init
from termcolor import cprint 
from termcolor import colored
from pyfiglet import figlet_format
init(strip=not sys.stdout.isatty()) 

str_inp = "20/11 vui ve nha!!! =)) "
res = str_inp.split()
for i in res:
    cprint(figlet_format(i, font='starwars'),
                           'magenta','on_grey', attrs=['bold'])
    time.sleep(0.75)
print("\033[1;35;40m \n")
print("      **       ** \n","   ******   ****** \n"," ********* ********* \n","********************* \n","********************* \n","********************* \n"," ******************* \n","   *************** \n","     *********** \n","       ******* \n","         *** \n","          * \n")
