"""Unit tests for the `module` module."""

from mypackage.module import hello


def test_hello():
    """Test that hello actually does not return anything."""
    res = hello()
    assert res is None
