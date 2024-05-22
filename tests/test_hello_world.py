import io
import importlib
import sys


import pytest


module_name = "my_file"


def test_input_output(monkeypatch):
    # patches the standard output to catch the output of print()
    expected = "Hello world!"
    patch_stdout = io.StringIO()
    with monkeypatch.context() as m:
        # patches the input()
        m.setattr('sys.stdout', patch_stdout)
        sys.modules.pop(module_name, None)
        mod = importlib.import_module(name=module_name)
        mod.main()
    assert patch_stdout.getvalue() == expected, (f"test_result=arbitrary_test_result >> $GITHUB_OUTPUT")