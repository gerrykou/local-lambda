import requests
from bs4 import BeautifulSoup


def handler(event, context):
    x = requests.get('https://example.com/')
    html = x.text
    soup = BeautifulSoup(html, 'html.parser')
    return f'{soup.title.string}'
