# PROJECT 3: COVID-19 DATA VISUALIZATION FOR MARYLAND

## OVERVIEW
This project was undertaken as part of the George Washington University Data Analysis Bootcamp, with a focus on the visualization track within the 'Healthcare' field related to COVID-19. The impact of COVID-19 within the state of Maryland and its counties was analyzed and visualized. The objective was to provide clear, actionable insights through various data visualizations to help understand the spread and impact of the virus within this specific region.

## SCOPE
The project's scope is limited to the state of Maryland and its counties. Analysis and visualizations focus solely on this geographic area for relevant insights.

## VISUALIZATIONS
These visualizations provide a detailed and interactive method to explore and understand the impact of COVID-19 in Maryland, which can aid in public health decision-making and resource allocation. The project includes the following comprehensive representations of the COVID-19 data:

1. **Interactive Map: Community Transmission by County (Total Cases)**
   - Displays the geographical spread of COVID-19 cases across different counties in Maryland.
   - Highlights the total number of cases in each county.
   - Utilizes libraries like Plotly and Dash for an interactive experience.

2. **Top 10 ZIP Codes with Highest Case Counts**
   - Identifies the ZIP codes with the highest number of COVID-19 cases.
   - Overlays data on a Maryland map with detailed case counts for each ZIP code.
   - Uses synthetic GeoJSON data to illustrate ZIP code boundaries.

3. **COVID-19 Related Hospitalization**
   - Shows the number of hospitalizations due to COVID-19 across Maryland.

4. **COVID-19 Positivity Rate**
   - Visualizes the rate of positive COVID-19 tests in comparison to the total tests conducted.

5. **Totals by Date of Death**
   - Presents the total number of deaths over time, providing insights into mortality trends.

6. **Cases and Deaths by Age Group or Age Range**
   - Breaks down the number of cases and deaths by different age groups, highlighting the demographic impact of the virus.

### Different interactive features include:
- An overall view of the Maryland State
- Customizable view (by County)
- Historic and current cases
- Charts showing the count of cases, broken down by ZIP codes, hospitalizations, and demographic factors

## DATA AND DELIVERY

### Data Cleanup and Analysis
The dataset, **MD COVID-19 - MASTER Case Tracker**, was provided by the Maryland Department of Health Prevention and Health Promotion Administration (MDH PHPA), Chesapeake Regional Information System for our Patients (CRISP), and Maryland Department of Health Vital Statistics Administration (MDH VSA). It includes cases, tests, positivity rates, hospitalizations, and confirmed and probable deaths for COVID-19 in Maryland. The data has been housed in a database (SQL, MongoDB, SQLite, etc.) and cleaned for analysis.

### Data Source
Data retrieved from MD COVID-19 MASTER Case Tracker, available at Maryland's Open Data portal: *[https://opendata.maryland.gov/Health-and-Human-Services/MD-COVID-19-MASTER-Case-Tracker/mgd3-qk8t/about_data](https://opendata.maryland.gov/Health-and-Human-Services/MD-COVID-19-MASTER-Case-Tracker/mgd3-qk8t/about_data).*

### References for any Code Derived from External Sources
The visualization application for the project was built using similar codes from the dash bootstrap components, derived from the **COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University**.

## PROJECT USAGE AND INTERACTION GUIDE
1. **Cloning the Repository:**
   - Clone the repository from GitHub using the command:
Clone the repository from GitHub using the command:
   ```
     [git clone https://github.com/Andreanimako/covid-19-visualization.git]
   ```
     
2. **Setting Up the Environment:**
   - Navigate to the project directory.
   - Create and activate a virtual environment.
   - Install the required dependencies.

3. **Running the Application:**
Run the Dash app and open a web browser to navigate to interact with the visualizations.

## ETHICAL CONSIDERATIONS
Efforts were made to ensure the ethical use of data throughout the development of this project and:
- Data was sourced from reputable and publicly available sources, such as the CDC COVID-19 Case Surveillance dataset. 
- The data was used within the bounds of fair use and in adherence to all relevant licenses and terms of use. 
- Additionally, any sensitive information was anonymized to protect individual privacy.

## ACKNOWLEDGEMENTS
Gratitude is extended to the following organizations for their support of the Group Project's COVID-19 mapping and visualization efforts:
- Center for Disease Control and Prevention (CDC)
- Maryland Department of Health (MDH)
- COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University

## TEAM COLLABORATING AND MILESTONES
An agile project management approach was followed by the group members to ensure smooth collaboration and timely completion of tasks. Key milestones included:
- Project Ideation
- Data Fetching
- Data Analysis
- Creating Documentation
- Creating the Presentation

## GROUP MEMBERS
- Andrea Nimako
- Lynda Sempele
- Jessica Snowden
- Kevin Ngala

## DISCUSSION
It is intended that this project provides valuable insights into the impact of COVID-19 in Maryland and aids in making informed public health decisions.

---
© 2024 George Washington University Data Analysis Bootcamp
