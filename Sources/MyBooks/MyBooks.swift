
protocol MyBooksProtocol {
    var genreCount: Int{get}
}


struct MyBooks: MyBooksProtocol {
    
    private let genreConfig: GenreOptions
    
    init() {
        self.genreConfig = GenreOptions()
    }
    
    var genreCount: Int {
        get {
        return genreConfig.numberOfGenres
        }
    }
    
    
       
    
}
