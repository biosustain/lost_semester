from time import sleep

from tqdm import tqdm


def hello():
    """Hello."""
    print("bye")


def show_progress():
    for _ in tqdm(range(10), total=10, desc="hello!"):
        sleep(1)
    return


if __name__ == "__main__":
    show_progress()
