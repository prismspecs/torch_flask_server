# running server inside a docker container

1. build it
```docker build . --tag my/torch```

2. run it (some opts not necessary here)
```docker run --expose 9000 --network="host" -v $PWD:/workspace/ --gpus all -it my/torch```

3. run server
```python3 flask_server.py```
