chunks = []
while True:
    chunks.append(b"x" * 1024 ** 3)
    print(len(chunks), "GiB", flush=True)
