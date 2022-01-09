class FizzBuzz:
    def game(self, num):
        if type(num) == int:
            result = ""
            if num % 3 == 0:
                result += "Fizz"
            if num % 5 == 0:
                result += "Buzz"
            if result == "":
                return num
            else:
                return result
        else:
            raise TypeError("Number must be a integer")
