import os
class Ui_to_Py_Converter:
    def __init__(self, UI_name):
        os.system(f"py -m PyQt5.uic.pyuic -x ./UI/{UI_name}.ui -o {UI_name}.py")
Ui_to_Py_Converter("SignUpandloginForms")