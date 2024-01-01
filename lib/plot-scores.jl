using StatsPlots
using EzXML

using DataStructures

if abspath(PROGRAM_FILE) == @__FILE__
    # Import data from the XML file
    global_freedom_scores_xml = readxml("doc/Freedom-House-Global-Freedom-Scores.2023.xml")
    global_freedom_scores = root(global_freedom_scores_xml)

    # Convert data into a Dict
    all_countries_scores_dict = Dict()
    for country in eachelement(global_freedom_scores)
        country_scores_dict = OrderedDict()
        for score in eachelement(country)
            country_scores_dict[score.name] = score.content
        end
        all_countries_scores_dict[country["name"]] = country_scores_dict
    end
    
    
    # Get the list of countries to plot
    countries = []
    for (key, value) in all_countries_scores_dict
        push!(countries, key)
    end
    
    # Sort the array alphabetically, since groupedbar sorts the x-axis groups alphabetically
    sort!(countries)
    
    
    # Retrieve the data into an 8x3 matrix
    all_scores = []
    for country in countries
        # The categories are sorted alphabetically by groupedbar, so they must be in this specific order
        country_scores = [all_countries_scores_dict[country]["Civil-liberties"], all_countries_scores_dict[country]["Political-rights"], all_countries_scores_dict[country]["Total-score"]]
        country_scores = map(x->parse(Int, x), country_scores)  # Convert scores from strings to Ints
        push!(all_scores, country_scores)
    end

    all_scores = vcat(transpose.(all_scores)...)  # Convert a nested array into an 8x3 matrix
    
    
    categories = repeat(["Civil liberties", "Political rights", "Total score"], inner = 8)  # inner number is how many countries there are
    x_axis_countries = repeat(countries, outer = 3)  # outer number is how many categories there are

    groupedbar(x_axis_countries, all_scores, group = categories, xlabel = "Selected countries", ylabel = "Scores",
        title = "Global Freedom Scores for selected countries", bar_width = 0.67,
        lw = 0, framestyle = :box, minorgrid = true, minorticks = true)
    
    gui()
end
