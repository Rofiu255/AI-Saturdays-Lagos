

## WEEK 2 TASK

Welcome to week 2 of the ML flipped Cohort. In this week's assessment, In this week’s assessment, you’ll demonstrate your understanding of Git & GitHub, introduction to data science, and basic web scraping.
Your task is to:
1. Create a GitHub account (if you don’t already have one).
2. Create a new repository and name it appropriately.
3. Create a readme.md file which will contain information regarding this project
4. Scrape a publicly available website of your choice using any method you're comfortable with (e.g., requests, BeautifulSoup, Selenium).
5. Choose a website you're personally interested in, preferably one that could be useful for a future machine learning project.
6. Ensure that the website allows web scraping — do not scrape websites with strict scraping restrictions or paywalls. This is important for ethical usage.
7. Push your code and scraped data to the GitHub repository you created.
8. Ensure the repo is publicly accessible




# Week 2 Web Scraping Project

This project demonstrates basic web scraping using Python's `requests` and `BeautifulSoup`.

## Website Used
- [Books to Scrape](http://books.toscrape.com) – A legal practice site for scraping.
- Scraped [quotes.toscrape.com](http://quotes.toscrape.com)
- Extracted all quotes and their authors across pages

## What It Does
- Scrapes book titles from page 1
- Saves them to `data/books.csv`
- `data/quotes.csv` contains scraped data

## How to Run
```bash
python scrape_books_Req-BeautifulSoup.py
python scrape_quotes_Selenium.py


## Tools
- Python
- Selenium
- Pandas
