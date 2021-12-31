
func pow(base: Int, exponent: Int) -> Int {
    if base == 1 {
        return exponent
    } else {
        return pow(base: base - 1, exponent: exponent * exponent)
    }
}


class Category {
    let name: String
    let subcategories:[Category]
    
    init(name: String, sucategories: [Category]) {
        self.name = name
        self.subcategories = sucategories
    }
}


func what(categories: [Category]) {
    
    let result = categories.map({(category: Category) -> String in
        return category.name
    })
    
    if result.isEmpty {
        
    }
}
