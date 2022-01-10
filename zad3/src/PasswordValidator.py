class PasswordValidator:
    def __init__(self) -> None:
        self.upperCount = 0
        self.numberCount = 0
        self.otherCount = 0

    def ValidPassword(self, password: str) -> bool:
        if type(password) is not str:
            raise TypeError("Invalid password type")
        else:
            self.upperCount = 0
            self.numberCount = 0
            self.otherCount = 0

            for c in password:
                if c.isupper():
                    self.upperCount += 1
                elif c.isdigit():
                    self.numberCount += 1
                elif not c.isalpha():
                    self.otherCount += 1

            if len(password) < 8:
                return False

            if self.upperCount < 1:
                return False
            if self.numberCount < 1:
                return False
            if self.otherCount < 1:
                return False
            return True
