import requests
from bs4 import BeautifulSoup
import re

def get_citation_count(doi):
    search_url = f'https://scholar.google.com/scholar?hl=en&q={doi}'
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3'
    }
    
    response = requests.get(search_url, headers=headers)
    soup = BeautifulSoup(response.text, 'html.parser')
    
    citation_text = soup.find('a', string=re.compile('Cited by'))
    if citation_text:
        citation_count = re.search(r'Cited by (\d+)', citation_text.text)
        if citation_count:
            return int(citation_count.group(1))
    return 0

def update_citations_in_file(filepath):
    print("Reading file...")
    with open(filepath, 'r') as file:
        content = file.read()

    print("Processing entries...")
    # Find all DOIs and update their citations
    pattern = r'(doi: link\("https://doi\.org/([^"]+)"\)[^\n]*\n\s*citations: )\d+'
    def replace_citation(match):
        doi = match.group(2)
        print(f"Found DOI: {doi}")
        citations = get_citation_count(doi)
        print(f"Citations: {citations}")
        return f"{match.group(1)}{citations}"

    updated_content = re.sub(pattern, replace_citation, content)

    print("Writing updated content...")
    with open(filepath, 'w') as file:
        file.write(updated_content)

if __name__ == "__main__":
    publications_file = "src/publications.typ"
    print(f"Updating citations in {publications_file}...")
    update_citations_in_file(publications_file)
    print("Done!")