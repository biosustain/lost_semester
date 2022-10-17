"""Unit tests for the `module` module."""

from mypackage.module import hello


def test_hello_is_none():
    """Test that hello actually does not return anything."""
    res = hello()
    assert res is None


def test_hello_with_fixtures(just_none):
    assert hello() is just_none
