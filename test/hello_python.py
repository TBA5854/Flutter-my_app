import requests as req
x=req.get(r'https://opentdb.com/api.php?amount=1&category=18')
print(x.json)