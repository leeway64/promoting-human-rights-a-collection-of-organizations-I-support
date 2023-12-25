using EzXML

if abspath(PROGRAM_FILE) == @__FILE__
    global_freedom_scores_xml = readxml("doc/Freedom-House-Global-Freedom-Scores.2023.xml")

    global_freedom_scores = root(global_freedom_scores_xml)
    
    a = elements(global_freedom_scores)[1]
    
    println(a["name"])
    println(elements(a)[1].name)
    println(elements(a)[1].content)
end
