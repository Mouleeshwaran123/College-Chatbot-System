import requests
from bs4 import BeautifulSoup
import openpyxl

# URL of the website containing the table
url = 'https://gacsalem7.ac.in/staff/'

# Send a GET request to the URL
response = requests.get(url)

# Parse the HTML content
soup = BeautifulSoup(response.text, 'html.parser')

# Find the table you want to scrape
table = soup.find('table')

# Initialize lists to store table data
rows = []

# Extract table rows
for index, row in enumerate(table.find_all('tr')):
    # Skip first two rows
    if index < 2:
        continue
    # Extract table cells
    cells = [cell.text.strip() for cell in row.find_all(['th', 'td'])]
    # Add row data to list of rows
    rows.append(cells)

# Create a new Excel workbook
workbook = openpyxl.Workbook()

# Create a new worksheet
worksheet = workbook.active
worksheet.title = 'Staff Data'

# Iterate over the rows and populate the worksheet
for row_index, row_data in enumerate(rows, start=1):
    for col_index, cell_data in enumerate(row_data, start=1):
        worksheet.cell(row=row_index, column=col_index, value=cell_data)

# Save the workbook
workbook.save('staff_data.xlsx')

print("Data has been successfully exported to staff_data.xlsx")
