# MTGO Metagame Analysis
UNC Bootcamp Project 3 - Data Visualization Track

Final Interactive Dashboard: https://public.tableau.com/app/profile/davin.frankosky1360/viz/MTGMetagameAnalysis/MTGO5-0LeagueAnalysis?publish=yes

## Overview and Purpose
The goal of this project is to tell a story using data visualizations. Here I will use Python, JSON, SQL, and Tableau to build a custom-created dataset from over 100 Magic the Gathering Online tournaments, encompassing thousands of cards, to build a dashboard that reflects card usage and pricing information for the month of January 2024.

This dashboard will serve multiple purposes:
1) Metagame analysis: Highlight trends in the tournament scene to better inform deckbuilding decisions.
2) Potentially discover investment opportunities for emerging cards.
3) Continue to build out functionality for a fun hobby and share with players in the community.

## Dataset and Process Summary
1) Use Python with BeautifulSoup to scrape card data from https://www.mtgo.com/decklists, (specifically format leagues) for all of January 2024. These are all decks that went 5-0.
2) Organize the information into dataframes using Pandas in Python.  This is done in "MTGO_Decklist_Scrape.ipynb".
3) Incorporate online card pricing information from https://www.goatbots.com. This is done in "MTG API Datapull.ipynb".
4) Utilize Python-based library, MTG SDK (https://github.com/MagicTheGathering/mtg-sdk-python), to pull in additional information for cards. This is also done in "MTG API Datapull.ipynb".
5) Clean and organize the final dataframes. Export as CSVs for building a Postgres SQL database. 
![ERD for my SQL Database](https://github.com/Koskadelli/Magic-Decklist-Analysis-Tool/blob/main/MTG%20DB%20ERD.png?raw=true)
6) Connect the SQL database to Tableau. 
7) In Tableau: Build interactive visualizations, organize those into a dashboard, and publish the final dashboard to Tableau Public. Interact with the final visualization dashboard here: https://public.tableau.com/app/profile/davin.frankosky1360/viz/MTGMetagameAnalysis/MTGO5-0LeagueAnalysis?publish=yes

## Ethical Considerations
1) On my dashboard and in this readme, I cited sources and gave credit. For example, my main dashboard contains links to both MTGO.com and Goatbots.com, per their request on their Pricing History page. 
2) This dashboard does not use any Personally Identifiable Information (PII).
3) MTG API rate limits were followed, and I confirmed that the MTG SDK package has a MIT free use license. 
4) Followed Wizards of the Coast Fan Content policy: https://company.wizards.com/en/legal/fancontentpolicy

## Datasource References
1) MTGO Decklists: https://www.mtgo.com/decklists
2) MTGO Card Pricing Information: https://www.goatbots.com
3) MTG API: https://docs.magicthegathering.io/
4) MTG SDK (Python MTG API package): https://github.com/MagicTheGathering/mtg-sdk-python/

## Coding References
Various coding assistance throughout my Python via ChatGPT. 



