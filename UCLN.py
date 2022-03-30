def clearScreen():
    import os
    os.system('cls' if os.name == 'nt' else 'clear')
clearScreen()

num1 = float(input("Nhap so thu nhat: ")) 
if num1 != 0:
    num2 = float(input("Nhap so thu hai: "))

while (num1 == 0) or (num2 == 0):    
    if num1 == 0 :
        clearScreen()
        num1 = float(input("Nhap lai so thu nhat: "))
        
    num2 = float(input("Nhap so thu hai: "))
    if num2 == 0:
        clearScreen()
        print("Nhap lai so thu nhat: ",num1)
        num2 = float(input("Nhap lai so thu hai: "))
    
tam1 = num1
tam2 = num2
temp = num2 % num1
while temp != 0 :
    temp = num1 % num2
    num1 = num2
    num2 = temp
UCLN = num1
print("UCLN cua",tam1,"va",tam2,"la",UCLN)   
