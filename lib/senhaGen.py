import string
import random

def senha(size=int(5), chars=string.ascii_letters + string.digits):
    return ''.join(random.choice(chars) for _ in range(size))