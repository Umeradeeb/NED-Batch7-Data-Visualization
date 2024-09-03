# Class Notes

## Regex
- **Definition**: A sequence of characters read character by character or used for search operations.

## ETL
- **Definition**: Stands for Extract, Transform, and Load.

## Python Package for Validations
- **Pydantic**: Used for validations like password criteria, etc.

## Data Extraction
- **SQLAlchemy**: A Python SQL toolkit and Object-Relational Mapping (ORM) library for extracting data.

## SQL Model
- **Definition**: A combination of SQLAlchemy and Pydantic.

## Python Packages Repository
- **PyPI (Python Package Index)**: All packages are hosted on [pypi.org](https://pypi.org).

## Poetry
- **Purpose**: Used for package management, directory management, publishing packages, and more.

## PowerShell Classwork
- **Project Creation**: Created a package project1 in the directory `project1`.

### Command Logs
```powershell
PS C:\Users\MAK TECH\Desktop\PGD python\NED-Batch7-Data-Visualization\03-Poetry> ls

    Directory: C:\Users\MAK TECH\Desktop\PGD python\NED-Batch7-Data-Visualization\03-Poetry

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         8/31/2024   9:56 PM                project1

PS C:\Users\MAK TECH\Desktop\PGD python\NED-Batch7-Data-Visualization\03-Poetry> cd project1/
PS C:\Users\MAK TECH\Desktop\PGD python\NED-Batch7-Data-Visualization\03-Poetry\project1> cd project1
PS C:\Users\MAK TECH\Desktop\PGD python\NED-Batch7-Data-Visualization\03-Poetry\project1\project1> ls

    Directory: C:\Users\MAK TECH\Desktop\PGD python\NED-Batch7-Data-Visualization\03-Poetry\project1\project1

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         8/31/2024   9:56 PM              0 __init__.py

PS C:\Users\MAK TECH\Desktop\PGD python\NED-Batch7-Data-Visualization\03-Poetry\project1\project1> cd..
PS C:\Users\MAK TECH\Desktop\PGD python\NED-Batch7-Data-Visualization\03-Poetry\project1> ls

    Directory: C:\Users\MAK TECH\Desktop\PGD python\NED-Batch7-Data-Visualization\03-Poetry\project1

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         8/31/2024   9:56 PM                project1
d-----         8/31/2024   9:56 PM                tests
-a----         8/31/2024   9:56 PM            291 pyproject.toml
-a----         8/31/2024   9:56 PM              0 README.md

Versioning in pyproject.toml
version = "0.1.0":
The first 0 implies the core framework.
The second digit (1) implies addition or deletion of a function.
The third digit (0) implies removal of bugs.
TOML
Definition: Stands for Tom's Obvious, Minimal Language. A TOML file is a simple way to store configuration settings in a format that's easy for both humans and computers to read.
Poetry Commands
Add a Package: poetry add numpy (for numpy).
Purpose of .lock file: Ensures that the environment will run in the future, even after updates.
Pytest
Definition: A package for Quality Assurance (QA) testing.
Installation:
poetry add pytest
poetry run pytest
Test Files: Test files should be in the tests folder and their names should be in the format test_<name>.py.


Example Functions and Tests
def add_two_numbers(num1: int, num2: int) -> int:
    return num1 + num2

print(add_two_numbers(1, 2))

print("Hello World!")

from project1.main import *

def test_add_two_numbers():
    assert add_two_numbers(1, 2) == 3

def test_add_two_numbers1():
    assert add_two_numbers(4, 2) == 6
