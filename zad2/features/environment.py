from src.PlanetAge import PlanetAge


def before_scenario(context, scenario):
    context.planet_age = PlanetAge()


def after_scenario(context, scenario):
    context.planet_age = None
