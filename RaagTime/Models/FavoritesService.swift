//
//  FavoritesService.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-12.
//

import Foundation

@MainActor
@Observable
class FavoritesService {
    static let shared = FavoritesService()
    
    private let key = "favoriteRaagIds"
    
    private(set) var favoriteIds: Set<UUID> {
        didSet { save() }
    }
    
    private init() {
        // Load from UserDefaults
        if let data = UserDefaults.standard.data(forKey: key),
           let ids = try? JSONDecoder().decode(Set<UUID>.self, from: data) {
            self.favoriteIds = ids
        } else {
            self.favoriteIds = []
        }
    }
    
    func isFavorite(_ raagId: UUID) -> Bool {
        favoriteIds.contains(raagId)
    }
    
    func toggleFavorite(_ raagId: UUID) {
        if favoriteIds.contains(raagId) {
            favoriteIds.remove(raagId)
        } else {
            favoriteIds.insert(raagId)
        }
    }
    
    func getFavoriteIds() -> Set<UUID> {
        favoriteIds
    }
    
    private func save() {
        if let data = try? JSONEncoder().encode(favoriteIds) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }
}
