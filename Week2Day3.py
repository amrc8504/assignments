from audioop import add
from hello import helloWorld
helloWorld()
# Ask the user 5 bits of input: Do you want to : Show/Add/Delete/clear or Quit?

def userQty():
    name = input("Quantity: ")
    return name
def userAdd():
    add = input("What would you like to add do your cart? ")
    return add
def userInfo():
    data = {}
    
    while True:
        result = input("Make your shopping list. Please type (Show/Add/Delete/Clear/Quit). ")
        
        if result.lower() == 'add':
            data[userQty()] = userAdd()
        elif result.lower() == 'show':
            print(data)
            
        elif result.lower() == 'delete':
            print("Still working on that, use 'clear' for now please.")
            #Could not figure out how to remove one item
            
        elif result.lower() == 'clear':
            dLi = input("Clear your list?: [y/n] ").lower()
            if dLi in ["y","yes"]:
                data = {}
                print("Your list has been cleared.")
                print(data)
            elif dLi in ["n", "no"]:
                print("Action Abandoned.")
        elif result.lower() == 'quit':
            break
        else:
            print('Oops! Something went wrong. Please type "(Show/Add/Delete/Clear/Quit)"')
    print(data)
    return data

userInfo()