import pytest
from fixtures import env


@pytest.fixture
def mqtt(env):
    import dummy.mqtt as mqtt_mod

    return mqtt_mod


def test_connect(mqtt):
    assert True
