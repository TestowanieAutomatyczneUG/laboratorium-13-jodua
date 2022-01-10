from behave import *
from src.FizzBuzz import FizzBuzz

use_step_matcher("re")

# GIVEN


@given("there is an FizzBuzz")
def step_impl(context):
    context.fizz_buzz = FizzBuzz()

# WHEN


@when('we pass number (?P<number>[0-9]+) to game method')
def step_impl(context, number):
    context.result = context.fizz_buzz.game(int(number))


@when(u'we pass array to game method')
def step_impl(context):
    try:
        context.result = context.fizz_buzz.game(object)
    except TypeError as ex:
        context.result = ex


@when('we pass dict to game method')
def step_impl(context):
    try:
        context.result = context.fizz_buzz.game(object)
    except TypeError as ex:
        context.result = ex
# THEN


@then("we get Fizz as result")
def step_impl(context):
    assert context.result == "Fizz"


@then("we get Buzz as result")
def step_impl(context):
    assert context.result == "Buzz"


@then("we get FizzBuzz as result")
def step_impl(context):
    assert context.result == "FizzBuzz"


@then("we get (?P<number>[0-9]+) as result")
def step_impl(context, number):
    assert context.result == int(number)


@then("TypeError is raised")
def step_impl(context):
    assert isinstance(context.result, TypeError)
