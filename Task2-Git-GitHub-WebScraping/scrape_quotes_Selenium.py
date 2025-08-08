from selenium import webdriver
from selenium.webdriver.common.by import By
import time
import pandas as pd

# Set up the driver (update path if needed)
driver = webdriver.Chrome()

# Target URL
url = "http://quotes.toscrape.com"
driver.get(url)
time.sleep(2)  # wait for page to load

quotes = []
authors = []

# Loop through pages
while True:
    quote_elements = driver.find_elements(By.CLASS_NAME, "quote")
    for quote in quote_elements:
        text = quote.find_element(By.CLASS_NAME, "text").text
        author = quote.find_element(By.CLASS_NAME, "author").text
        quotes.append(text)
        authors.append(author)

    # Move to next page
    try:
        next_button = driver.find_element(By.LINK_TEXT, "Next")
        next_button.click()
        time.sleep(1)
    except:
        break

driver.quit()

# Save to CSV
df = pd.DataFrame({
    "quote": quotes,
    "author": authors
})
df.to_csv("data/quotes.csv", index=False)
print("Scraping complete. Data saved to quotes.csv.")
