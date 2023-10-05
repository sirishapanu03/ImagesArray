var course = "44643-Mobile Computing-iOS"

// Split the string by "-"
let components = course.components(separatedBy: "-")

// Extract the first word of the title (first component after splitting the title)
let firstWordOfTitle = components[1].components(separatedBy: " ")[0]

print("First Word of the Title: \(firstWordOfTitle)")
