from behave import *
from random import randint
from src.PasswordValidator import PasswordValidator

use_step_matcher("re")


# GIVEN
@given('there is an PasswordValidator')
def step_impl(context):
    context.password_validator = PasswordValidator()
    context.password = ""

# WHEN


@when('we add (?P<number>[0-9]+) numbers to password')
def step_impl(context, number):
    context.password += str(randint(10**int(number), 10**(int(number)+1)))


@when('we add (?P<letters>.+) to password')
def step_impl(context, letters):
    context.password += letters


@when('we check if the password is correct')
def step_impl(context):
    context.result = context.password_validator.ValidPassword(context.password)

# THEN


@then("password is valid")
def step_impl(context):
    assert context.result == True


@then("password is invalid")
def step_impl(context):
    assert context.result == False


@then("TypeError is raised")
def step_impl(context):
    assert isinstance(context.ex, TypeError)
