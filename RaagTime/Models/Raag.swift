//
//  Raag.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-08.
//

import Foundation

// MARK: - Enums

enum TimeOfDay: String, Codable, CaseIterable {
    case earlyMorning = "Early Morning"
    case morning = "Morning"
    case lateMorning = "Late Morning"
    case afternoon = "Afternoon"
    case evening = "Evening"
    case lateEvening = "Late Evening"
    case night = "Night"
    case midnight = "Midnight"
    
    var timeRange: String {
        switch self {
        case .earlyMorning: return "03-06"
        case .morning: return "06-09"
        case .lateMorning: return "09-12"
        case .afternoon: return "12-15"
        case .evening: return "15-18"
        case .lateEvening: return "18-21"
        case .night: return "21-24"
        case .midnight: return "00-03"
        }
    }
    
    static func current() -> TimeOfDay {
        let hour = Calendar.current.component(.hour, from: Date())
        switch hour {
        case 3..<6: return .earlyMorning
        case 6..<9: return .morning
        case 9..<12: return .lateMorning
        case 12..<15: return .afternoon
        case 15..<18: return .evening
        case 18..<21: return .lateEvening
        case 21..<24: return .night
        case 0..<3: return .midnight
        default: return .midnight
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
            // Morning Raags
            Raag(
                name: "Bhairav",
                time: .morning,
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
                time: .morning,
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
