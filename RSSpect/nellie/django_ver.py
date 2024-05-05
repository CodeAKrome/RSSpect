#!env python
"""Django install check"""

import django


try:
    print(f"Django ver. {django.get_version()} is installed.")
except Exception as e:
    print("Error Django not installed:", e)

try:
    django.setup()
    print("Django is installed and configured correctly.")
except Exception as e:
    print("Error configuring Django. django.setup() error:", e)
    print(
        "Please ensure Django is installed and your Django project is properly configured."
    )
