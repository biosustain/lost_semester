def hello() -> int:
    x = 2
    print(f"{x=}")
    return 2

def hello_back(x: int) -> int:
    x = x * 2
    print(f"In back {x=}")
    return x

def how_are_you(x: int) -> int:
    x = x + 5
    print(f"In how are {x=}")
    return x


def bye(x: int) -> float:
    y = x / 3
    print(f"In bye {y=}")
    return y


if __name__ == "__main__":
    x = hello()
    x = hello_back(x)
    x = how_are_you(x)
    x = bye(x)
    print("Fantastic hello")
