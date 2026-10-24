//
//  ViewController.swift
//  JSONDecoderPractice№2
//
//  Created by Виктор on 24.10.2026.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        decodeMovie()
    }
    private func decodeMovie() {
        let json = """
        {
            "movie_title": "Interstellar",
            "release_year": 2014,
            "rating": 8.7
        }
        """
        
        let data = Data(json.utf8)
        let decoder = JSONDecoder()
        
        do {
            let movie = try decoder.decode(Movie.self, from: data)
            
            print("Фильм: \(movie.title)")
            print("Год: \(movie.year)")
            print("Рейтинг: \(movie.rating)")
        } catch {
            print("Ошибка декодирования: \(error)")
        }
    }
}
