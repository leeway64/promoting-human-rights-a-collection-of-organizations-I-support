using EzXML

if abspath(PROGRAM_FILE) == @__FILE__
    global_freedom_scores_xml = readxml("doc/Freedom-House-Global-Freedom-Scores.2023.xml")

    global_freedom_scores = root(global_freedom_scores_xml)
end
