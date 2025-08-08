import requests
from bs4 import BeautifulSoup
import csv

URL = "http://books.toscrape.com/catalogue/page-1.html"

response = requests.get(URL)
soup = BeautifulSoup(response.text, 'html.parser')
books = soup.select('.product_pod h3 a')

titles = [book['title'] for book in books]

# Save to CSV
with open('data/books.csv', 'w', newline='') as f:
    writer = csv.writer(f)
    writer.writerow(['Title'])
    for title in titles:
        writer.writerow([title])

print("Scraped book titles saved to books.csv.")
