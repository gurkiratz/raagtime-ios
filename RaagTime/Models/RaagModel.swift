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
        case .earlyMorning: return "3:00 AM - 6:00 AM"
        case .morning: return "6:00 AM - 9:00 AM"
        case .lateMorning: return "9:00 AM - 12:00 PM"
        case .afternoon: return "12:00 PM - 3:00 PM"
        case .evening: return "3:00 PM - 6:00 PM"
        case .lateEvening: return "6:00 PM - 9:00 PM"
        case .night: return "9:00 PM - 12:00 AM"
        case .midnight: return "12:00 AM - 3:00 AM"
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
                    "https://www.youtube.com/watch?v=Yqs9Q8cqQy8"
                ]
            ),
            Raag(
                name: "Todi",
                time: .morning,
                thaat: .todi,
                aroh: "सा रे॒ ग॑ म॑ प ध॒ नि सां",
                avroh: "सां नि ध॒ प म॑ ग॑ रे॒ सा",
                pakad: "रे॒ ग॑ म॑ प, नि ध॒ प म॑",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=l8dhYR5jGzg"
                ]
            ),
            Raag(
                name: "Lalit",
                time: .earlyMorning,
                thaat: .purvi,
                aroh: "सा रे॒ ग म॑ प नि सां",
                avroh: "सां नि प म॑ ग रे॒ सा",
                pakad: "नि सा रे॒ म॑, ग म॑ प नि",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=4xCCpQ7wMnE"
                ]
            ),
            
            // Afternoon Raags
            Raag(
                name: "Bhimpalasi",
                time: .afternoon,
                thaat: .kafi,
                aroh: "सा ग म प नि॒ सां",
                avroh: "सां नि॒ ध प म ग रे सा",
                pakad: "म प नि॒ ध प, म ग रे सा",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=9PEh5eBzqf0"
                ]
            ),
            Raag(
                name: "Multani",
                time: .afternoon,
                thaat: .todi,
                aroh: "सा रे॒ ग॑ म॑ प नि सां",
                avroh: "सां नि ध॒ प म॑ ग॑ रे॒ सा",
                pakad: "म॑ प नि सां, नि ध॒ प म॑",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=VxJ8j8tU9HE"
                ]
            ),
            Raag(
                name: "Patdeep",
                time: .afternoon,
                thaat: .asavari,
                aroh: "सा रे ग॒ म प ध॒ नि॒ सां",
                avroh: "सां नि॒ ध॒ प म ग॒ रे सा",
                pakad: "प म प, ध॒ प म ग॒",
                youtubeLinks: []
            ),
            
            // Evening Raags
            Raag(
                name: "Yaman",
                time: .evening,
                thaat: .kalyan,
                aroh: "नि रे ग म॑ ध नि सां",
                avroh: "सां नि ध म॑ ग रे सा",
                pakad: "नि रे ग रे, ग म॑ ध नि",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=W9kd5TqLm-4",
                    "https://www.youtube.com/watch?v=3aMLiTnT3hs"
                ]
            ),
            Raag(
                name: "Puriya",
                time: .evening,
                thaat: .marwa,
                aroh: "रे॒ ग म॑ ध नि सां",
                avroh: "सां नि ध म॑ ग रे॒ सा",
                pakad: "म॑ ग रे॒ नि॒ रे॒, म॑ ध नि सां",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=0Q5vZ4P1F7M"
                ]
            ),
            Raag(
                name: "Marwa",
                time: .lateEvening,
                thaat: .marwa,
                aroh: "रे॒ ग म॑ ध नि सां",
                avroh: "सां रे॒ नि ध म॑ ग रे॒",
                pakad: "नि रे॒ ग म॑, रे॒ नि ध म॑",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=cOQCRSWfxTk"
                ]
            ),
            Raag(
                name: "Shree",
                time: .evening,
                thaat: .purvi,
                aroh: "सा रे॒ ग म प ध॒ नि सां",
                avroh: "सां नि ध॒ प म प ग रे॒ सा",
                pakad: "ग म प, रे॒ ग म प",
                youtubeLinks: []
            ),
            
            // Night Raags
            Raag(
                name: "Bageshree",
                time: .night,
                thaat: .kafi,
                aroh: "सा रे म प नि॒ सां",
                avroh: "सां नि॒ ध नि॒ प म ग म रे सा",
                pakad: "नि॒ सा रे म, प नि॒ ध प म",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=kq7wJCF5zd8"
                ]
            ),
            Raag(
                name: "Darbari Kanada",
                time: .midnight,
                thaat: .asavari,
                aroh: "सा रे ग॒ म प ध॒ नि॒ सां",
                avroh: "सां नि॒ ध॒ प म प ग॒ म रे सा",
                pakad: "रे सा, ग॒ म प, म प ग॒ म रे",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=LW8K86jEZVQ",
                    "https://www.youtube.com/watch?v=5VDHqP9nJ_M"
                ]
            ),
            Raag(
                name: "Malkauns",
                time: .midnight,
                thaat: .bhairavi,
                aroh: "सा ग॒ म ध॒ नि॒ सां",
                avroh: "सां नि॒ ध॒ म ग॒ सा",
                pakad: "नि॒ सा ग॒ म, ग॒ म ध॒ नि॒",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=IA9-Kbz-fZ4"
                ]
            ),
            Raag(
                name: "Kedar",
                time: .night,
                thaat: .kalyan,
                aroh: "सा म प, म प नि॒ ध नि सां",
                avroh: "सां नि ध प, म प ग म रे सा",
                pakad: "म प नि॒ ध नि, प म रे सा",
                youtubeLinks: []
            ),
            Raag(
                name: "Bihag",
                time: .night,
                thaat: .bilawal,
                aroh: "सा ग म प नि सां",
                avroh: "सां नि ध प म ग रे सा",
                pakad: "ग म प नि, ग म रे नि॒ रे सा",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=AQvr3jqnHsE"
                ]
            ),
            
            // Additional Raags
            Raag(
                name: "Jaunpuri",
                time: .afternoon,
                thaat: .asavari,
                aroh: "सा रे ग॒ म ध॒ नि॒ सां",
                avroh: "सां नि॒ ध॒ म प ध॒ म ग॒ रे सा",
                pakad: "म प ध॒ म, ग॒ म रे सा",
                youtubeLinks: []
            ),
            Raag(
                name: "Desh",
                time: .night,
                thaat: .khamaj,
                aroh: "सा रे म प नि॒ सां",
                avroh: "सां नि ध प म ग रे सा",
                pakad: "नि रे प, म ग रे सा",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Yj1N3gcPQag"
                ]
            ),
            Raag(
                name: "Jaijaiwanti",
                time: .night,
                thaat: .khamaj,
                aroh: "सा ग म प नि॒ सां",
                avroh: "सां नि॒ ध नि॒ प म प ग म रे सा",
                pakad: "म प नि॒ ध प, म ग रे सा",
                youtubeLinks: []
            ),
            Raag(
                name: "Durga",
                time: .evening,
                thaat: .bilawal,
                aroh: "सा रे म प ध सां",
                avroh: "सां ध प म रे सा",
                pakad: "म प ध सां, ध प म रे",
                youtubeLinks: []
            ),
            Raag(
                name: "Mian Ki Malhar",
                time: .night,
                thaat: .kafi,
                aroh: "सा रे म प नि॒ सां",
                avroh: "सां नि॒ ध प म ग रे सा",
                pakad: "म रे सा नि॒ रे, म प नि॒",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=ZvZ1r4vZ5cM"
                ]
            ),
            Raag(
                name: "Bhupali",
                time: .evening,
                thaat: .kalyan,
                aroh: "सा रे ग प ध सां",
                avroh: "सां ध प ग रे सा",
                pakad: "ग प ध सां, ध प ग रे",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=KQldZhHEXsE"
                ]
            ),
            Raag(
                name: "Jhinjhoti",
                time: .night,
                thaat: .khamaj,
                aroh: "सा ग म ध नि सां",
                avroh: "सां नि॒ ध नि ध प म ग रे ग सा",
                pakad: "ग म ध नि, ध म ग रे सा",
                youtubeLinks: []
            ),
            Raag(
                name: "Pahadi",
                time: .afternoon,
                thaat: .bilawal,
                aroh: "सा ग म प नि सां",
                avroh: "सां नि प म ग सा",
                pakad: "सा ग म प, नि प म ग",
                youtubeLinks: []
            ),
            Raag(
                name: "Tilang",
                time: .night,
                thaat: .khamaj,
                aroh: "सा रे म प ध नि॒ सां",
                avroh: "सां नि॒ ध प म रे ग रे सा",
                pakad: "म प ध नि॒, रे म प ध",
                youtubeLinks: []
            ),
            Raag(
                name: "Brindavani Sarang",
                time: .afternoon,
                thaat: .kafi,
                aroh: "सा रे म प ध सां",
                avroh: "सां नि॒ ध प म ग रे सा",
                pakad: "रे म प, नि॒ ध प म",
                youtubeLinks: []
            )
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
