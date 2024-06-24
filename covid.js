// List of keys to include for the county data
const keysToInclude = ['alle', 'anne', 'balt', 'bcity', 'calv', 'caro', 'carr', 'ceci', 'char', 'dorc', 'fred', 'garr', 'harf', 'howa', 'kent', 'mont', 'prin', 'quee', 'some', 'stma', 'talb', 'wash', 'wico', 'unkn'];
const raceKeys = ["deathAfrAmer", "deathWhite", "deathHispanic", "deathAsian", "deathOther", "deathNotAvail"];

// Function to build the county data panel
function buildCountydata(sample) {
    d3.json("https://opendata.maryland.gov/resource/mgd3-qk8t.json").then((data) => {
        // Filter the data for the selected sample
        let result = data.find(item => item.reportdate === sample);

        // Select the panel with id `#sample-countydata`
        let sample_countydata = d3.select("#sample-countydata");

        // Clear any existing metadata
        sample_countydata.html("");

        // Display county data for the specified keys
        keysToInclude.forEach((key) => {
            sample_countydata.append("h3").text(`${key.toUpperCase()}: ${result[key] || 0}`);
        });
    });
}

// Function to build the chart
function buildChart(sample) {
    d3.json("https://opendata.maryland.gov/resource/mgd3-qk8t.json").then((data) => {
        // Filter the data for the selected sample
        let result = data.find(item => item.reportdate === sample);

        // Build Stacked Area Chart
        let stackTraces = raceKeys.map(key => {
            return {
                x: keysToInclude, // Race keys on the x-axis
                y: keysToInclude.map(k => parseInt(result[k]) || 0), // Counts on the y-axis
                stackgroup: 'one',
                name: key.toUpperCase()
            };
        });

        let stackLayout = {
            title: 'COVID-19 Deaths by Race',
            xaxis: { title: 'County' },
            yaxis: { title: 'Deaths' },
            margin: { l: 50, r: 50, t: 50, b: 50 }
        };

        // Render the Stacked Area Chart
        Plotly.newPlot('stack', stackTraces, stackLayout);

        // Prepare data for the bar chart
        let cases = keysToInclude.map(key => parseInt(result[key]) || 0); // Convert to integers and handle missing data

        // Build Bar Chart
        let barTrace = {
            x: cases,
            y: keysToInclude.map(key => key.toUpperCase()),
            type: 'bar',
            orientation: 'h'
        };

        let barLayout = {
            title: 'COVID-19 Cases by County',
            xaxis: { title: 'Cases' },
            margin: { l: 120, r: 100, t: 100, b: 100 }
        };

        let barData = [barTrace];

        // Render the Bar Chart
        Plotly.newPlot('bar', barData, barLayout);
    });
}

// Function to initialize the page
function init() {
    d3.json("https://opendata.maryland.gov/resource/mgd3-qk8t.json").then((data) => {
        // Get unique report dates
        let dates = [...new Set(data.map(item => item.reportdate))];

        // Select the dropdown with id `#selDataset`
        let dropdown = d3.select("#selDataset");

        // Populate the dropdown options
        dates.forEach((date) => {
            dropdown.append("option").text(date).property("value", date);
        });

        // Get the first sample from the list
        let firstSample = dates[0];

        // Build charts and metadata panel with the first sample
        buildCountydata(firstSample);
        buildChart(firstSample);
    });
}

// Function to handle option change
function optionChanged(newSample) {
    // Build charts and metadata panel with the new sample
    buildCountydata(newSample);
    buildChart(newSample);
}

// Initialize the page
init();
