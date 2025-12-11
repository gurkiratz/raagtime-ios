//
//  Raag.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-08.
//

import Foundation

// MARK: - Enums

enum TimeOfDay: String, Codable, CaseIterable {
    case t03_06 = "03-06"
    case t06_09 = "06-09"
    case t09_12 = "09-12"
    case t12_15 = "12-15"
    case t15_18 = "15-18"
    case t18_21 = "18-21"
    case t21_24 = "21-24"
    case t00_03 = "00-03"
    
    var displayName: String {
        switch self {
        case .t03_06: return "Early Morning"
        case .t06_09: return "Morning"
        case .t09_12: return "Late Morning"
        case .t12_15: return "Afternoon"
        case .t15_18: return "Evening"
        case .t18_21: return "Late Evening"
        case .t21_24: return "Night"
        case .t00_03: return "Midnight"
        }
    }
    
    static func current() -> TimeOfDay {
        let hour = Calendar.current.component(.hour, from: Date())
        switch hour {
        case 3..<6: return .t03_06
        case 6..<9: return .t06_09
        case 9..<12: return .t09_12
        case 12..<15: return .t12_15
        case 15..<18: return .t15_18
        case 18..<21: return .t18_21
        case 21..<24: return .t21_24
        case 0..<3: return .t00_03
        default: return .t00_03
        }
    }
}

enum Thaat: String, Codable, CaseIterable {
    case bilawal = "Bilawal"
    case kalyan = "Kalyan"
    case khamaj = "Khamaj"
    case bhairav = "Bhairav"
    case purvi = "Purvi"
    case marwa = "Marwa"
    case kafi = "Kafi"
    case asavari = "Asavari"
    case bhairavi = "Bhairavi"
    case todi = "Todi"
}

// MARK: - Models

struct Aroh {
    let panjabi: String
    let hindi: String
    let english: String
}

struct Avroh {
    let panjabi: String
    let hindi: String
    let english: String
}

struct Raag: Identifiable, Codable {
    let id: UUID
    var name: String
    var time: TimeOfDay
    var thaat: Thaat
    var aroh: String
    var avroh: String
    var pakad: String?
    var youtubeLinks: [String]?
    
    init(id: UUID = UUID(),
         name: String,
         time: TimeOfDay,
         thaat: Thaat,
         aroh: String,
         avroh: String,
         pakad: String? = nil,
         youtubeLinks: [String]? = nil) {
        self.id = id
        self.name = name
        self.time = time
        self.thaat = thaat
        self.aroh = aroh
        self.avroh = avroh
        self.pakad = pakad
        self.youtubeLinks = youtubeLinks
    }
}

// MARK: - Sample Data

class RaagDataStore {
    static let shared = RaagDataStore()
    
    private(set) var raags: [Raag] = []
    
    private init() {
        loadSampleData()
    }
    
    private func loadSampleData() {
        raags = [
            // Morning Raags (06-09)
            Raag(
                name: "Bhairav",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "सा रे॒ ग म प ध॒ नि सां",
                avroh: "सां नि ध॒ प म ग रे॒ सा",
                pakad: "म प ध॒ म, ग रे॒ सा",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=xG7fTvW0YnY",
                    "https://www.youtube.com/watch?v=Zg6fZ5qYJzE"
                ]
            ),
            Raag(
                name: "Ahir Bhairav",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "सा रे॒ ग म प ध नि सां",
                avroh: "सां नि ध प म ग रे॒ सा",
                pakad: "सा रे॒ ग म, ध नि सां रे॒",
                youtubeLinks: [
                    "https://youtu.be/d_F0fShQZa4?si=zRh4IeyPv6Ijtadz",
                    "https://youtu.be/jBABgCoLt54?si=6K1p-LSBfcIZmO6X"
                ]
            ),
        ]
    }
    
    // MARK: - CRUD Operations
    
    func getRaags() -> [Raag] {
        return raags
    }
    
    func getRaag(by id: UUID) -> Raag? {
        return raags.first { $0.id == id }
    }
    
    func getRaags(for time: TimeOfDay) -> [Raag] {
        return raags.filter { $0.time == time }
    }
    
    func getRaags(for thaat: Thaat) -> [Raag] {
        return raags.filter { $0.thaat == thaat }
    }
    
    func searchRaags(query: String) -> [Raag] {
        guard !query.isEmpty else { return raags }
        return raags.filter { $0.name.localizedCaseInsensitiveContains(query) }
    }
    
    func getCurrentTimeRaags() -> [Raag] {
        let currentTime = TimeOfDay.current()
        return getRaags(for: currentTime)
    }
    
    func addYoutubeLink(to raagId: UUID, link: String) {
            if let index = raags.firstIndex(where: { $0.id == raagId }) {
                if raags[index].youtubeLinks == nil {
                    raags[index].youtubeLinks = []
                }
                raags[index].youtubeLinks?.append(link)
            }
        }
}
