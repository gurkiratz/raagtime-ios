//
//  RaagDataStore.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-11.
//

import Foundation

// MARK: - Sample Data

class RaagDataStore {
    static let shared = RaagDataStore()
    
    private(set) var raags: [Raag] = []
    
    private init() {
        loadRaags()
    }

    private func loadRaags() {
        raags = [
            Raag(
                name: "Abheri",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - g - m - P - n - S'",
                avroh: "S' - n - d - P - m - g - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=s5a3pthL_tU",
                    "https://www.youtube.com/watch?v=s5a3pthL_tU",
                    "https://www.youtube.com/watch?v=sk_NktgvcJM"
                ]
            ),
            Raag(
                name: "Abhogi",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - R - g - m - D - S'",
                avroh: "S' - D - m - g - D - g - m - R - S",
                pakad: "S - g, m - D - g, m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=ecl1qEJpF7g",
                    "https://www.youtube.com/watch?v=gGE-Fg3lFAI",
                    "https://www.youtube.com/watch?v=ecl1qEJpF7g",
                    "https://www.youtube.com/watch?v=yEpy2hyT1Rk",
                    "https://www.youtube.com/watch?v=pugLYKSSy5U",
                    "https://www.youtube.com/watch?v=mT3RXItH-Q0",
                    "https://www.youtube.com/watch?v=X04akAjLmyY",
                    "https://www.youtube.com/watch?v=Tifhj9pzHZ8",
                    "https://www.youtube.com/watch?v=-tldRY3myH0",
                    "https://www.youtube.com/watch?v=mduvGM3KUxg",
                    "https://www.youtube.com/watch?v=Lsdztmgm03g",
                    "https://www.youtube.com/watch?v=4G_cmUgURZo",
                    "https://www.youtube.com/watch?v=mduvGM3KUxg"
                ]
            ),
            Raag(
                name: "Adana",
                time: .t00_03,
                thaat: .asavari,
                aroh: "S - R - m - P - d - n - S'",
                avroh: "S' - d~ - n - P, m - P - g~ - m - R - S",
                pakad: "m - P - d~ - n - S, n - P - m - P - g~ - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=bTjO_ubm4aI",
                    "https://www.youtube.com/watch?v=qiKX9cJ0OTM",
                    "https://www.youtube.com/watch?v=dTaGVxg_f7U",
                    "https://www.youtube.com/watch?v=vEw5xZv6VFI",
                    "https://www.youtube.com/watch?v=KWfnOODVH4w",
                    "https://www.youtube.com/watch?v=7AYHKNG_qBo"
                ]
            ),
            Raag(
                name: "Ahiri",
                time: .t06_09,
                thaat: .bhairavi,
                aroh: "S - r - g - m - P - D - n - S'",
                avroh: "S' - n - D - P - m - g - r - S",
                pakad: "P - D - n - D - m - g - r - g - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=RbV-83Ns4C0",
                    "https://www.youtube.com/watch?v=YEk9FTr0K5g",
                    "https://www.youtube.com/watch?v=u3FtKojcQZs",
                    "https://www.youtube.com/watch?v=QAWrXoxqQhs",
                    "https://www.youtube.com/watch?v=UdtkzNxxStg"
                ]
            ),
            Raag(
                name: "Amrit Varshini",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - G - M - P - N - S'",
                avroh: "S' - N - P - M - G - S",
                pakad: "G - M - P - N - S' - N - P - M - P - G - M - P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=8d5OQnltoQA",
                    "https://www.youtube.com/watch?v=SjiGYt3WQ5o",
                    "https://www.youtube.com/watch?v=mdtscFTGvNs",
                    "https://www.youtube.com/watch?v=y51bibJAdJk",
                    "https://www.youtube.com/watch?v=Q_lFhOSztZI"
                ]
            ),
            Raag(
                name: "Anand Leela",
                time: .t06_09,
                thaat: nil,
                aroh: "S - R - G - m - P - N - S'",
                avroh: "S' - N - d - P - m - G - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Araj",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - G, m - P - m - P, D - n - S'",
                avroh: "S - r' - S - N, D - P - m - G, r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=H93ZGFO4U_E",
                    "https://www.youtube.com/watch?v=kwixU2p_tpU",
                    "https://www.youtube.com/watch?v=bktm6nczIvQ"
                ]
            ),
            Raag(
                name: "Asa",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "S - R - m - P - D - S'",
                avroh: "S' - N - D - P - m - G - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=wYzX4kRHhUA",
                    "https://www.youtube.com/watch?v=2QJANFfEero",
                    "https://www.youtube.com/watch?v=JlYan6KbIZc",
                    "https://www.youtube.com/watch?v=glORNAahnzA",
                    "https://www.youtube.com/watch?v=xSOOwpKObVo"
                ]
            ),
            Raag(
                name: "Asavari",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - m - P - d - S'",
                avroh: "S' - n - d - P - m - g - R - S",
                pakad: "R - m - P - S' - (n)d - P, R - m - P - n - d - P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=l7QnK841MgM",
                    "https://www.youtube.com/watch?v=d3DrwIXvbBc",
                    "https://www.youtube.com/watch?v=wD59zgK9Q48",
                    "https://www.youtube.com/watch?v=Qbx4HHQPsrs"
                ]
            ),
            Raag(
                name: "Asavari, Jogi",
                time: .t09_12,
                thaat: .bhairavi,
                aroh: "S - r - m - P - d - S'",
                avroh: "S' - R - n - d - P, d - P - m - G - (m)r - S",
                pakad: "R - n - d - P, d - m - P - G - (m)r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=IyNUpzFVIe8",
                    "https://www.youtube.com/watch?v=p_8OMGnfWgM"
                ]
            ),
            Raag(
                name: "Asavari, Komal Rishabh",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - r - m - P - d - S'",
                avroh: "S' - n - d - P - m - g - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=l6uZAs63lOg",
                    "https://www.youtube.com/watch?v=w7u3FC61FFE",
                    "https://www.youtube.com/watch?v=3_KCEqgLKU8",
                    "https://www.youtube.com/watch?v=wbbjrSNCkwE",
                    "https://www.youtube.com/watch?v=drCOqSTXkSc"
                ]
            ),
            Raag(
                name: "Asavari, Sindhura",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - m - P - D - S'",
                avroh: "S' - n - D - P, d - m - P - (m)g, R - m - m - g, S - R - S",
                pakad: "m - P - D - S', n - d - P, D - m - P - D - S'",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=-cmIQ6XXvjo",
                    "https://www.youtube.com/watch?v=M0y7LTKGIcw"
                ]
            ),
            Raag(
                name: "Bageshree",
                time: .t00_03,
                thaat: .kafi,
                aroh: "S - g - m - D - n - S'",
                avroh: "S' - n - D - m - P - D - g, m - g - R - S",
                pakad: "'n - S - m - g - m - D - n - D - m, m - P - D - g - m - g - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=MYBeP0EtlQ4",
                    "https://www.youtube.com/watch?v=MYBeP0EtlQ4",
                    "https://www.youtube.com/watch?v=wQUTXNIOxT0",
                    "https://www.youtube.com/watch?v=ozTybr6ujXk",
                    "https://www.youtube.com/watch?v=GLDoZAZyD9M",
                    "https://www.youtube.com/watch?v=74BhPHgZu8w",
                    "https://www.youtube.com/watch?v=LONpzQYsN6Y",
                    "https://www.youtube.com/watch?v=I9tM2wKGt9I",
                    "https://www.youtube.com/watch?v=Zqg-nDE7qnA",
                    "https://www.youtube.com/watch?v=-PfRUBRBIOI",
                    "https://www.youtube.com/watch?v=YhFZMiCxVSE",
                    "https://www.youtube.com/watch?v=NE0sT4Im4gA",
                    "https://www.youtube.com/watch?v=E75SfJgCyoE",
                    "https://www.youtube.com/watch?v=Q8Yhx_-Zc5k",
                    "https://www.youtube.com/watch?v=aIl7sO9h7II",
                    "https://www.youtube.com/watch?v=rUoWx__itDo",
                    "https://www.youtube.com/watch?v=142GWu_tSk4",
                    "https://www.youtube.com/watch?v=51ohXkti0K0",
                    "https://www.youtube.com/watch?v=VSPtQcYgUrc",
                    "https://www.youtube.com/watch?v=xqnWe7Sma50",
                    "https://www.youtube.com/watch?v=rJyYbTFhsDI"
                ]
            ),
            Raag(
                name: "Bageshree, Audav",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - g - m - D - n - S'",
                avroh: "S' - n - D - m - g - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=ucRzRLJVGsQ"
                ]
            ),
            Raag(
                name: "Bahar",
                time: .t00_03,
                thaat: .kafi,
                aroh: "'n - S - m, - P - g - m - n - D - N - S'",
                avroh: "S' - n - P, - m - P - g - m - R - S",
                pakad: "S - m, m - P - g - m, n - D - N - S'",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=cvsat14QGto",
                    "https://www.youtube.com/watch?v=rEm1LIrIHJ8",
                    "https://www.youtube.com/watch?v=s6NWmEl_Wro"
                ]
            ),
            Raag(
                name: "Bahar, Bageshree",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - g - m - D - n - D - S'",
                avroh: "S - n - D - m, P - (P)g, m - g - R - S",
                pakad: "D - n - D - m, P - m - g - m, R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=QftjaFfLmhs"
                ]
            ),
            Raag(
                name: "Bahar, Basant",
                time: .t00_03,
                thaat: .bhairavi,
                aroh: "S - G, M - G, M - n - D - S'",
                avroh: "D - n - S' - n - P, M - G, M - G, M - G - r - S",
                pakad: "S - m - P, (m)g - m, N - D - M - P - M - G - M - G",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=duHWRTS9r-Y",
                    "https://www.youtube.com/watch?v=qsSjurXIDwY",
                    "https://www.youtube.com/watch?v=VSPtQcYgUrc",
                    "https://www.youtube.com/watch?v=awYov7bPXTk"
                ]
            ),
            Raag(
                name: "Bahar, Bhairav",
                time: .t06_09,
                thaat: .bhairavi,
                aroh: "S - r - G - m - P - m, m - D - n - S' - N - r' - S'",
                avroh: "S' - n - D - P - m - G - R, g - r - S - 'N - r - S, 'N - D - S",
                pakad: "D - n - D - P - m - G - R, g - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=HPhpUlzGB_w"
                ]
            ),
            Raag(
                name: "Bahar, Hindol",
                time: .t03_06,
                thaat: nil,
                aroh: "S - G - M - G, m - P - G - m, n - D - S'",
                avroh: "S - n - P - m - P - G - m, S - D - M - G, M - G - S",
                pakad: "m - n - D, D - N - S' - n - P, M - G, M - G - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=BTEeg0ZHBuo"
                ]
            ),
            Raag(
                name: "Bahar, Kanada",
                time: .t21_24,
                thaat: .asavari,
                aroh: "S - m, m - P - (m)g - m, n - d - N - S'",
                avroh: "R' - N - S' - (S)D - n - P - m - P - g - m - R - S",
                pakad: "N - S - R' - N - S' - (n)d - (n)d - n - P, m - P, n - P - m - g - m",
                youtubeLinks: []
            ),
            Raag(
                name: "Bahar, Kedar",
                time: .t18_21,
                thaat: nil,
                aroh: "S - R - S - m - P - g - m - P - S'",
                avroh: "S' - R' - S - N - D - P - m - P - m - g - m - g - m - P - g - m - R - S - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=OO8KT2d8cAY"
                ]
            ),
            Raag(
                name: "Bahar, Paraj",
                time: .t03_06,
                thaat: nil,
                aroh: "'N - S, - G - M - P - d, P, n - D - N - S'",
                avroh: "S' - r' - g' - r', S - N - d - P, m - G, M - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Bahar, Rageshree",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - G - m - D - G - m, m - D - N - S'",
                avroh: "S' - D - n - P, m - P - (m)g - m, (D)G - m, (G) - R - S",
                pakad: "S - G - m - D - G - m, D - n - S' - n - P, m - P - (m)g - m",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Qg88CknV1zY",
                    "https://www.youtube.com/watch?v=ilgw0TfaZ-0",
                    "https://www.youtube.com/watch?v=c5KsbMemuPk",
                    "https://www.youtube.com/watch?v=29xMhkm76ro"
                ]
            ),
            Raag(
                name: "Bahar, Sindhu",
                time: .t18_21,
                thaat: nil,
                aroh: "S - m, m - P - (m)g - m, m - P - D - S'",
                avroh: "R' - N - S' - n - D, P, m - P - n - P - (m)g - m, R - S - R - S",
                pakad: "m - P - D - S, n - D - P, n - n - P - m - P - (m)g",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=uPSa6DhvsM4",
                    "https://www.youtube.com/watch?v=ZZmIV-3V1Xw",
                    "https://www.youtube.com/watch?v=cnBqvwZ-Wio"
                ]
            ),
            Raag(
                name: "Barwa",
                time: .t09_12,
                thaat: .kafi,
                aroh: "S - R - m - P - N - S'",
                avroh: "S' - n - D - P - D - m - G - R - g - S",
                pakad: "G - R - g - S - N' - S, R - m - P - D - m - G - R - g - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=bWHNVEFpvOY",
                    "https://www.youtube.com/watch?v=LIzomhUGq0k",
                    "https://www.youtube.com/watch?v=UtakDxZvrCw",
                    "https://www.youtube.com/watch?v=4JO-wTOZ6vo"
                ]
            ),
            Raag(
                name: "Basant",
                time: .t03_06,
                thaat: nil,
                aroh: "S - G - M - d - N - S'",
                avroh: "S' - N - d - P - M - G, M - G - r - S",
                pakad: "M - d - r' - S' - N - d - P - M - G - M - G",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=duHWRTS9r-Y",
                    "https://www.youtube.com/watch?v=_5pF3hCtySM",
                    "https://www.youtube.com/watch?v=SKGBgOpacYg",
                    "https://www.youtube.com/watch?v=MyPLIzf0Tzg",
                    "https://www.youtube.com/watch?v=Fg5IlJfBq-0"
                ]
            ),
            Raag(
                name: "Basant, Gambhir",
                time: .t06_09,
                thaat: .bhairavi,
                aroh: "S - m - g - M - r - g - m - P, n - D - n - P - S'",
                avroh: "S' - d - P - m - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Basant, Kanak",
                time: .t00_03,
                thaat: .kafi,
                aroh: "S - R - m - P - n - S'",
                avroh: "S' - n - P - m - g - R - m - g - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Basant Mukhari",
                time: .t06_09,
                thaat: nil,
                aroh: "S - r - G - m - P - d - n - S'",
                avroh: "S' - n - d - P - m - G - r - S",
                pakad: "P - d - n - d - P, G - m - (G) r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=EsHrMLK7mrQ",
                    "https://www.youtube.com/watch?v=Xn2EQKwWWnU",
                    "https://www.youtube.com/watch?v=DUYx3UzNVjw",
                    "https://www.youtube.com/watch?v=84ikJGauhOA",
                    "https://www.youtube.com/watch?v=34LVZes29Bg",
                    "https://www.youtube.com/watch?v=ALZCRUJIDFI",
                    "https://www.youtube.com/watch?v=9LSz4ICF-6U",
                    "https://www.youtube.com/watch?v=8PEeD7AmyVI",
                    "https://www.youtube.com/watch?v=1yvdPjmnUNY",
                    "https://www.youtube.com/watch?v=ChJ9ofNAZbA",
                    "https://www.youtube.com/watch?v=F5TfdjT1QV0",
                    "https://www.youtube.com/watch?v=MbUj8q-sgJk",
                    "https://www.youtube.com/watch?v=QioCeM0TBaI"
                ]
            ),
            Raag(
                name: "Basant Pancham",
                time: .t00_03,
                thaat: nil,
                aroh: "S - G - M - d - N - S'",
                avroh: "S' - N - d - P, M - m - G, M - G - r - S",
                pakad: "S' - N - D - P, M - m - g",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=cb10gSBvyH0",
                    "https://www.youtube.com/watch?v=Q8KAuN0f1SU",
                    "https://www.youtube.com/watch?v=z6GFonv0Mdw",
                    "https://www.youtube.com/watch?v=iGcqnB_4UZ8",
                    "https://www.youtube.com/watch?v=fnZdbOB3ZH8"
                ]
            ),
            Raag(
                name: "Bengali",
                time: .monsoon,
                thaat: .bilawal,
                aroh: "S - R - m - P - D - S'",
                avroh: "R' - N - P - D - m - P - G - S",
                pakad: "S - R - m - P - D - m - P - G -  S - R - P - m",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=MC9UmOna0dY",
                    "https://www.youtube.com/watch?v=IuOCQAfICpQ"
                ]
            ),
            Raag(
                name: "Bhairav",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - G - m - P - d - N - S'",
                avroh: "S' - N - d - P - m - G - r - S",
                pakad: "G - m - P - d - d - P - m - G - r - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=r4KI5X-HFUU",
                    "https://www.youtube.com/watch?v=TkGNPTq-lxY",
                    "https://www.youtube.com/watch?v=Xf57MS-MFrc",
                    "https://www.youtube.com/watch?v=NMHoLg5PxRM",
                    "https://www.youtube.com/watch?v=NL0_AiVAfio",
                    "https://www.youtube.com/watch?v=S6yYZqVHiVA"
                ]
            ),
            Raag(
                name: "Bhairav, Ahir",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - G - m - P - D - n - S'",
                avroh: "S' - n - D - P - m - G - r - S",
                pakad: "m - P - D - n - D - P - m - P - G - mr - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=zD6AMEFKScM",
                    "https://www.youtube.com/watch?v=g-fB7ABnBq0",
                    "https://www.youtube.com/watch?v=X87PFownIXQ",
                    "https://www.youtube.com/watch?v=q_zw4anS34k",
                    "https://www.youtube.com/watch?v=ybi-R32f430",
                    "https://www.youtube.com/watch?v=WIxxFjxjD7Q",
                    "https://www.youtube.com/watch?v=CyyJGusG0Gs",
                    "https://www.youtube.com/watch?v=uML6-rU7CZA",
                    "https://www.youtube.com/watch?v=Jcr3KzZCuKc",
                    "https://www.youtube.com/watch?v=Jcr3KzZCuKc",
                    "https://www.youtube.com/watch?v=9GlMrtTfSD0"
                ]
            ),
            Raag(
                name: "Bhairav, Anand",
                time: .t06_09,
                thaat: nil,
                aroh: "S - r - G - m - P - m, P - S'",
                avroh: "S' - D - n - P - m - G - m - r - S",
                pakad: "r - G - m, P - S' - D - n - P - m - G - m - r",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=sDXpDG43_r4",
                    "https://www.youtube.com/watch?v=ay4uKAZNLTc"
                ]
            ),
            Raag(
                name: "Bhairav, Bairagi",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - m - P - n - S",
                avroh: "S - n - P - m - r - S",
                pakad: "r - m - P, n - P - n, n - m - r - n, P - n - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=zonNvYMQBnU",
                    "https://www.youtube.com/watch?v=-1CbCLtlaAw",
                    "https://www.youtube.com/watch?v=kSJdMxZbBK0",
                    "https://www.youtube.com/watch?v=RjUqMO4UZSk",
                    "https://www.youtube.com/watch?v=sdaAKN1_MA0",
                    "https://www.youtube.com/watch?v=aVSXTx7UE3c",
                    "https://www.youtube.com/watch?v=aVSXTx7UE3c"
                ]
            ),
            Raag(
                name: "Bhairav, Bangal",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r, G - m - P - d, S'",
                avroh: "S' - d - P - m - P - G - m, r - S",
                pakad: "S - 'd - S, S - r, d - d - P - G - m - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=hlMdMyLqb1I",
                    "https://www.youtube.com/watch?v=BjQWIYpCT1g"
                ]
            ),
            Raag(
                name: "Bhairav, Hijaj",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - R - G - m - P - d - n - S'",
                avroh: "S' - n - d - P - m - G - m - P - r - S'",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=2gU3GdyZfdo"
                ]
            ),
            Raag(
                name: "Bhairavi",
                time: .t06_09,
                thaat: .bhairavi,
                aroh: "S - r - g - m - P - d - n - S'",
                avroh: "S' - n - d - P - m - g - r - S",
                pakad: "'n - S - g - m - d - P - g - m - P - g - m - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=d1g1xNY2MtY",
                    "https://www.youtube.com/watch?v=KoexpTUTJ0Y",
                    "https://www.youtube.com/watch?v=06BFyRNgaP4",
                    "https://www.youtube.com/watch?v=19ceSuuBZQM",
                    "https://www.youtube.com/watch?v=CpZpahdKG3A",
                    "https://www.youtube.com/watch?v=313TvJ8vuLs",
                    "https://www.youtube.com/watch?v=nhla17QvU5M",
                    "https://www.youtube.com/watch?v=6UKoLTO8UyU",
                    "https://www.youtube.com/watch?v=l2qjyUzk_pQ",
                    "https://www.youtube.com/watch?v=iSoGH8i1XOo",
                    "https://www.youtube.com/watch?v=Nt878hVqhsk",
                    "https://www.youtube.com/watch?v=MUhqBJrAEpU",
                    "https://www.youtube.com/watch?v=AqA_4zxZ6K4",
                    "https://www.youtube.com/watch?v=gzRg_D12i0M",
                    "https://www.youtube.com/watch?v=V3S-r9tYudo",
                    "https://www.youtube.com/watch?v=cun0VORaZig",
                    "https://www.youtube.com/watch?v=-FuW2ZcgOmA",
                    "https://www.youtube.com/watch?v=t79HROZDsCM",
                    "https://www.youtube.com/watch?v=STkDbJrq9Ek",
                    "https://www.youtube.com/watch?v=7JRLyQNMwV8",
                    "https://www.youtube.com/watch?v=PpG_1v2sUaU",
                    "https://www.youtube.com/watch?v=uKjhHebmZJM",
                    "https://www.youtube.com/watch?v=7uSg_dpobD8"
                ]
            ),
            Raag(
                name: "Bhairavi, Adi",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - g - R - g - m - P - d - S'",
                avroh: "S' - d - P - m - P - g - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=cB3wEbrWZOc",
                    "https://www.youtube.com/watch?v=A-vjIqSgzec"
                ]
            ),
            Raag(
                name: "Bhairav, Kabir",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - G - m, P - d - N - S'",
                avroh: "S', r' - n - d - P - m - G - m - (r)G, m - r - S",
                pakad: "m, d - n - d - P - m, r' - n - d - P - P - d - d - P - m",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=UEv_NDkOpog",
                    "https://www.youtube.com/watch?v=0N-tuYa3FdQ"
                ]
            ),
            Raag(
                name: "Bhairav, Kaushi",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - m - G - m - P - m - m - (N)d - (N)d - S'",
                avroh: "S' - R' - n - D - P - m - (G)m - G - m - P - r - S - (r)'d - (S)'n - S - m",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Bhairav, Komal",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r, g - m - P - d - n - S'",
                avroh: "S' - n - d - P - d - n - d - P, m - g - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Bhairav, Mangal",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - m - P - D - S'",
                avroh: "S' - D - P - m - (G)r, S - r - G - r - S, (S)'D - 'D - S",
                pakad: "m - P - D - P, m - (G)r, S - r - S, (S)'D - 'D - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=pdaVfrDEHt0",
                    "https://www.youtube.com/watch?v=mmPe_DWFmzo",
                    "https://www.youtube.com/watch?v=IAU69jFtJtU",
                    "https://www.youtube.com/watch?v=fMPmQuNbnbU",
                    "https://www.youtube.com/watch?v=3aWJRUEnreU",
                    "https://www.youtube.com/watch?v=Oj9zG5aCkYU",
                    "https://www.youtube.com/watch?v=ij5wTywIths"
                ]
            ),
            Raag(
                name: "Bhairav, Nat",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - R - G - m - P - d - N - S'",
                avroh: "S' - N - d - P - m - G - R - S",
                pakad: "S - R - G - m - d - P, G - m - R - S, R - 'N - 'd - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=ioCol1URze8",
                    "https://www.youtube.com/watch?v=vahW9GJ6kEg",
                    "https://www.youtube.com/watch?v=0ucv8x8OjcE",
                    "https://www.youtube.com/watch?v=uMY_ECALRTU",
                    "https://www.youtube.com/watch?v=eetewueCwOk",
                    "https://www.youtube.com/watch?v=Meq8Fr7hvF0",
                    "https://www.youtube.com/watch?v=qZLA1bhBhcU",
                    "https://www.youtube.com/watch?v=JZnPFOH5vUg",
                    "https://www.youtube.com/watch?v=49zW-B6wG_4"
                ]
            ),
            Raag(
                name: "Bhairav, Prabhaat",
                time: .t06_09,
                thaat: nil,
                aroh: "N - r - G - m - M - G, G - m - P - d - N - S'",
                avroh: "S' - N - d - P - m, m - d - M - m - G, r - G - M - G - r - S",
                pakad: "G - m - (N)d - (N)d - P - G - m, M - d - M - m - G - m",
                youtubeLinks: []
            ),
            Raag(
                name: "Bhairav, Saveri",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - m - P - d - S'",
                avroh: "S' - N - d - P - m - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Bhairav, Shivmat",
                time: .t06_09,
                thaat: .bhairavi,
                aroh: "S - r - S, G - m - P, (N)d - (N)d - S'",
                avroh: "S' - n - d - P - m - g - m - P, m - G - m - (G)r, g - r - S",
                pakad: "g - m - P, d - d - S', r' - n - d - P, d - n - d - P - m",
                youtubeLinks: []
            ),
            Raag(
                name: "Bhairav, Sourashtra",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - 'N - S - m - G - D - N - S",
                avroh: "S - d - d - P - G - m - P - G - M - r - S",
                pakad: "m - D - N - S' - S' - N - d - m",
                youtubeLinks: []
            ),
            Raag(
                name: "Bhairav, Udasi",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - G - m - M - n - S'",
                avroh: "S' - n - M - m - G - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=M_89FgsU8bc"
                ]
            ),
            Raag(
                name: "Bhankar",
                time: .t03_06,
                thaat: .bhairav,
                aroh: "'N - r - S,G - m - P, G - M - D - M - G, M - D - S'Nr'S'",
                avroh: "S' - r' - N - D, M - m - G, m - G - r - S",
                pakad: "S' - r' - N - D - M - m, G - m - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Kdq_V1m2dVY",
                    "https://www.youtube.com/watch?v=c5YJeoCVlR4",
                    "https://www.youtube.com/watch?v=5wuY9ImPsFE"
                ]
            ),
            Raag(
                name: "Bhatiyar",
                time: .t03_06,
                thaat: .marwa,
                aroh: "S - r - S - G - m, D - P -  G - M - D - S'",
                avroh: "r' - N - D - P - m - G - M - G - r - S",
                pakad: "S - D - P - D - m - P - G - M - D - S, r - N - D - P - D - m - P - G - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=S7dyWpe3VAQ",
                    "https://www.youtube.com/watch?v=HMnQQKozkww",
                    "https://www.youtube.com/watch?v=hZDKA03l52c",
                    "https://www.youtube.com/watch?v=BJKwQlUqdXE",
                    "https://www.youtube.com/watch?v=PsXWOBNb-VE",
                    "https://www.youtube.com/watch?v=7hhX-Ru6YU4",
                    "https://www.youtube.com/watch?v=fyKUISfkKMU",
                    "https://www.youtube.com/watch?v=dzanON9Spko",
                    "https://www.youtube.com/watch?v=xBUwrJOfuPo",
                    "https://www.youtube.com/watch?v=fveOYRT4DDw",
                    "https://www.youtube.com/watch?v=jri96JhBOCE",
                    "https://www.youtube.com/watch?v=XEOo5F0THbA",
                    "https://www.youtube.com/watch?v=fYKzWsLl4wo",
                    "https://www.youtube.com/watch?v=NzJpMaID7YE",
                    "https://www.youtube.com/watch?v=GXE0jcjMO4A",
                    "https://www.youtube.com/watch?v=KEDpNHmOv1c",
                    "https://www.youtube.com/watch?v=CxzeiOObgS4",
                    "https://www.youtube.com/watch?v=HgOzhHftDdo",
                    "https://www.youtube.com/watch?v=6qdXfh6rYSU"
                ]
            ),
            Raag(
                name: "Bhavani",
                time: .t00_03,
                thaat: .bilawal,
                aroh: "S - R - m - D - S'",
                avroh: "S', D - m, R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=GN8gQwAawg4",
                    "https://www.youtube.com/watch?v=5rquILqmXR4"
                ]
            ),
            Raag(
                name: "Bhim",
                time: .t12_15,
                thaat: .kafi,
                aroh: "S - G - m - P - (S')n - S'",
                avroh: "g' - R' - S' - n - D - m - (P)D - m - (P)G - R - S",
                pakad: "n - S' - g' - R' - S' - n - (P)D - m - (P)G - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=dmGhakW9MXc",
                    "https://www.youtube.com/watch?v=aXgt9fpw_Z0",
                    "https://www.youtube.com/watch?v=rAi575vQSa4",
                    "https://www.youtube.com/watch?v=vRTvl9nEVgQ",
                    "https://www.youtube.com/watch?v=uSNtEIp-Ew0",
                    "https://www.youtube.com/watch?v=gN8V2YB3OUY",
                    "https://www.youtube.com/watch?v=mEeeClc7-o4",
                    "https://www.youtube.com/watch?v=cjGtWqYu7lU",
                    "https://www.youtube.com/watch?v=hDBYMVnloYY",
                    "https://www.youtube.com/watch?v=dqYx6fAH1_I",
                    "https://www.youtube.com/watch?v=Izh3FMozEA0",
                    "https://www.youtube.com/watch?v=CUqPVaq6CNY",
                    "https://www.youtube.com/watch?v=-lzurpNhpIQ"
                ]
            ),
            Raag(
                name: "Bhimpalasi",
                time: .t15_18,
                thaat: .kafi,
                aroh: "'n - S - g - m - P - n - S'",
                avroh: "S' - n - D - P - m - g - R - S",
                pakad: "'n - S - m, g - m - P, m - g - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Nlpw8D3Vfkk",
                    "https://www.youtube.com/watch?v=6DnYWPJd_QQ",
                    "https://www.youtube.com/watch?v=qcKxMW6aLnk",
                    "https://www.youtube.com/watch?v=YdHe4dTc4Dw",
                    "https://www.youtube.com/watch?v=uEqYzdz3Zvg",
                    "https://www.youtube.com/watch?v=uQghAGGP5fI",
                    "https://www.youtube.com/watch?v=MjL3qCVdC44",
                    "https://www.youtube.com/watch?v=oU4Jr5H7uA8",
                    "https://www.youtube.com/watch?v=0htwNbSQhDE",
                    "https://www.youtube.com/watch?v=mQYHymKb1QE",
                    "https://www.youtube.com/watch?v=65KjzkY2ut8",
                    "https://www.youtube.com/watch?v=780FNl9vnhw"
                ]
            ),
            Raag(
                name: "Bhinna Shadja",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "S - G - m - D - N - S'",
                avroh: "S' - N - D - m - G - S",
                pakad: "S - G - m - D - m - G - S - G - m - G - 'D - 'N - S - m",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=ppQlc3NjuMw",
                    "https://www.youtube.com/watch?v=YbZWV15k2MI",
                    "https://www.youtube.com/watch?v=Bv6Ba27ddJo",
                    "https://www.youtube.com/watch?v=g5Ne-Zfcx4w",
                    "https://www.youtube.com/watch?v=SJkoITCimFg",
                    "https://www.youtube.com/watch?v=UQKVbgq99hs",
                    "https://www.youtube.com/watch?v=uEHnSh5stSk",
                    "https://www.youtube.com/watch?v=AFolXUJpnrU",
                    "https://www.youtube.com/watch?v=_oQuyV_tsNs",
                    "https://www.youtube.com/watch?v=JCb8WFTfeg4",
                    "https://www.youtube.com/watch?v=Xy8QXD87KrE"
                ]
            ),
            Raag(
                name: "Bhup",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - R - G - P - D - S'",
                avroh: "S' - D - P - G - R - S - 'D - S",
                pakad: "S - G - R - S - 'D - S - R - G",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=qKjJD-kqioM",
                    "https://www.youtube.com/watch?v=5n-Y-WDCW2s",
                    "https://www.youtube.com/watch?v=i8IiZNsxyC0",
                    "https://www.youtube.com/watch?v=tRrRGtyvizI",
                    "https://www.youtube.com/watch?v=sPOaoaRkJqI"
                ]
            ),
            Raag(
                name: "Bibhas",
                time: .t06_09,
                thaat: .marwa,
                aroh: "S - r - G, M - G, P - D - N - D - S'",
                avroh: "S', N - D, M - D, M - G - r - S",
                pakad: "G - P - d - P - G - P - G - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=1pnnqJC9rJk",
                    "https://www.youtube.com/watch?v=qINe_MlOKz0",
                    "https://www.youtube.com/watch?v=yG5J8bZdYKE",
                    "https://www.youtube.com/watch?v=ilMVSV_Ptrc",
                    "https://www.youtube.com/watch?v=_e2hjPABbKc",
                    "https://www.youtube.com/watch?v=qf528Wrb0c0",
                    "https://www.youtube.com/watch?v=XkYu6N8KGm0"
                ]
            ),
            Raag(
                name: "Bihag",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "'N - S - G - m - P - N - S'",
                avroh: "S' - N - (D) - P - M - P - G - m - G - R - S",
                pakad: "'N - S - G - m - P, P - M - P - G - m - G - (R) S - ?N - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=DhLAfLQvvKU",
                    "https://www.youtube.com/watch?v=lBYm_ePHO6k",
                    "https://www.youtube.com/watch?v=EWCoZfEcq74",
                    "https://www.youtube.com/watch?v=kB6stVPGFLk",
                    "https://www.youtube.com/watch?v=3HAmy7R-vQI",
                    "https://www.youtube.com/watch?v=T704esRbdbo",
                    "https://www.youtube.com/watch?v=feKZuWVsO48",
                    "https://www.youtube.com/watch?v=e6xlMooUXTo",
                    "https://www.youtube.com/watch?v=WZ2T5vKWn6g",
                    "https://www.youtube.com/watch?v=ITBx_-TJJSM",
                    "https://www.youtube.com/watch?v=fhEqUS5SlJI"
                ]
            ),
            Raag(
                name: "Bihagda",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "'N - S - G - m - P - N - S'",
                avroh: "S' - N - D - P, n - D - P, D - G - m - G - R - S",
                pakad: "n - D - P, D - G - m - G, R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=_uUhQLUqF9o",
                    "https://www.youtube.com/watch?v=qVpSdz0EUgE",
                    "https://www.youtube.com/watch?v=d1JlDTfccSw",
                    "https://www.youtube.com/watch?v=RwHqHl71q48",
                    "https://www.youtube.com/watch?v=wNBV9AalUk8",
                    "https://www.youtube.com/watch?v=31Z33ZoHzZs",
                    "https://www.youtube.com/watch?v=X8aNezdPglw"
                ]
            ),
            Raag(
                name: "Bihag, Nat",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - R - G - m - P, P - N - N - S'",
                avroh: "S' - N - D - P, G - m - n - D - P - m - G, (P)m - G - R - S",
                pakad: "G - m - n - D - P, P - m - G, R - G - m - P - m - G - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=iTZlrM9TsDI",
                    "https://www.youtube.com/watch?v=b9DhcPqGd0g"
                ]
            ),
            Raag(
                name: "Bihag, Pat",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "S - G - m - P - N - S'",
                avroh: "S' - N - D - P, G - m - (R)G - R - S",
                pakad: "N - D - P - P - G - m, G - m - (R)G",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=2kBNfqvZbZA"
                ]
            ),
            Raag(
                name: "Bihag, Sawani",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "S - G - m - P - N - S'",
                avroh: "S - N - D - P - m - G - R - S",
                pakad: "G - m - P - S\\ P - P, P - D - m, m - P - G, m - P - m - P\\G - R  - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=BcYkV01a5hM"
                ]
            ),
            Raag(
                name: "Bilawal",
                time: .t06_09,
                thaat: nil,
                aroh: "Sa Re Ga Ma Pa Dha Ni Sa",
                avroh: "Sa Ni Dha Pa Ma Ga Re Sa",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=oTg3QBVYFSc",
                    "https://www.youtube.com/watch?v=wBoogwYb-Ls"
                ]
            ),
            Raag(
                name: "Bilawal, Alahaiya",
                time: .t06_09,
                thaat: .bilawal,
                aroh: "S - GR - G - P - ND - N - S'",
                avroh: "S' - N - D - n - D - P - m - G - m - R - S",
                pakad: "G - P - D - n - S', S' - N - D - n - D - P - m - G - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=44cBXCZy4gE",
                    "https://www.youtube.com/watch?v=YuY0Miv9Krg",
                    "https://www.youtube.com/watch?v=my5Zh8ze3eY",
                    "https://www.youtube.com/watch?v=E_3q_ARsNnk",
                    "https://www.youtube.com/watch?v=dAtlWlVP98o",
                    "https://www.youtube.com/watch?v=Q8u8EWfQ11w"
                ]
            ),
            Raag(
                name: "Bilawal, Devgiri",
                time: .t06_09,
                thaat: .bilawal,
                aroh: "S - (G)R - (P)G - P, N - D - N - S'",
                avroh: "S - N - D - P, (D)P - m - G - R, (R) - 'N - R - 'N, R - G - m - G - (R)G - R - S",
                pakad: "G - m - G - R, 'N - R - 'N, G - G - R - 'N - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Bilawal, Jaij",
                time: .t09_12,
                thaat: .khamaj,
                aroh: "S - R - G - m - G - R, m - P - N - S'",
                avroh: "S' - n - D - P - m - G - R, R - G - (m)R - S",
                pakad: "R - G - m - P, D - m - G - R, P - m - G - (m)R, G - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=rsYYzr_GAyU"
                ]
            ),
            Raag(
                name: "Bilawal, Kukubh",
                time: .t06_09,
                thaat: .khamaj,
                aroh: "S - R - G - P - (N)D - N - S'",
                avroh: "S' - N - D - n - D - P, m - G - (M)R - S - S - R - S",
                pakad: "G - R - G - P - m - G - m - R, S - S - R",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=sW2iFRGeGug",
                    "https://www.youtube.com/watch?v=MKRLHzhJm-w",
                    "https://www.youtube.com/watch?v=dqhwEV-N9XA",
                    "https://www.youtube.com/watch?v=3I05ux4bC6M",
                    "https://www.youtube.com/watch?v=QrEXuKshz4c",
                    "https://www.youtube.com/watch?v=AhvuxNiji44"
                ]
            ),
            Raag(
                name: "Bilawal, Nat",
                time: .t09_12,
                thaat: .bilawal,
                aroh: "S - G - m, P - m - G, M - P - D - N - S'",
                avroh: "S' - N - D - n - P, m - G, m - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Bilawal, Sarpada",
                time: .t06_09,
                thaat: .khamaj,
                aroh: "S - (G)R - G, G - R - G - m, P - (n)D - N - S'",
                avroh: "S' - N - D - P, D - n - D - P - m, G - R, G - (m)R - S",
                pakad: "D - n - D - P - m, G - R, G - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=JVj_ok0zGIQ"
                ]
            ),
            Raag(
                name: "Bilawal, Shukla",
                time: .t06_09,
                thaat: .khamaj,
                aroh: "S - G - m, P - G - m - P - D - N - S'",
                avroh: "S' - n - D - P - D - M, (P)G, R - S",
                pakad: "m - P - D - n - G - m, G - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=jQ9UQyU20vk"
                ]
            ),
            Raag(
                name: "Bilawal, Sukhiya",
                time: .t09_12,
                thaat: .bilawal,
                aroh: "S - G - m - P, P - N - DNS'",
                avroh: "S' - D - NDP, m - P - G, RS",
                pakad: "S - G - mP - mP - G - RS",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Z_D_pC4w0es",
                    "https://www.youtube.com/watch?v=mhvkeqHxPF4",
                    "https://www.youtube.com/watch?v=Nah7QC5YuOs",
                    "https://www.youtube.com/watch?v=T9xzHyjcrGs"
                ]
            ),
            Raag(
                name: "Bilawal, Yamani",
                time: .t06_09,
                thaat: .kalyan,
                aroh: "S - R - G - P - D - N - S'",
                avroh: "S' - N - D - P, D - n - D - P - M - G - m - G - R, G - R - S",
                pakad: "D - n - D - P - M - G, m - G - R",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=0kPgJbG-tsI",
                    "https://www.youtube.com/watch?v=3t2P-ZBjjaQ"
                ]
            ),
            Raag(
                name: "Chakradhar",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "S - G - m - D - N - S'",
                avroh: "S' - N - D - P - m - G - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=VHTZlAlpbSk",
                    "https://www.youtube.com/watch?v=t_aywTJS9sE",
                    "https://www.youtube.com/watch?v=kF_Sd9Q6wCg",
                    "https://www.youtube.com/watch?v=pRFReiJSMnw"
                ]
            ),
            Raag(
                name: "Champak",
                time: .t18_21,
                thaat: .khamaj,
                aroh: "S - (R)G m, G - m - P - D - N - N - D - S'",
                avroh: "S' - R' - n - D - (P)m, (m)P - (P)G - (R)S - R - S",
                pakad: "S - (R)m, (P)D - m, (P)G - R - S - R - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Chandrakant",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - R - G - P - D - N - S'",
                avroh: "S' - N - D - P, M - G - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=58a3s1AuASs"
                ]
            ),
            Raag(
                name: "Chandrakauns",
                time: .t21_24,
                thaat: nil,
                aroh: "S - g - m - d - N - S'",
                avroh: "S' - N - d - m - g - m - g - S - 'N - S",
                pakad: "g - m - g - 'N - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=kN7np4jgeqY",
                    "https://www.youtube.com/watch?v=qT-HxY_rBi0",
                    "https://www.youtube.com/watch?v=YAgDFAfddRQ",
                    "https://www.youtube.com/watch?v=yLa9Y1zECdw",
                    "https://www.youtube.com/watch?v=2UxKmXJV2j4",
                    "https://www.youtube.com/watch?v=61hg-d_gnj0",
                    "https://www.youtube.com/watch?v=z151ynizS4A",
                    "https://www.youtube.com/watch?v=j0VnXxXaDAU",
                    "https://www.youtube.com/watch?v=xtHQaXevhsA",
                    "https://www.youtube.com/watch?v=We5gXUZfhwI",
                    "https://www.youtube.com/watch?v=_h1s3ljVOEU",
                    "https://www.youtube.com/watch?v=9I9mj7xNh34"
                ]
            ),
            Raag(
                name: "Chandranandan",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - g - m - d - N - S'",
                avroh: "R' - n - d - P - m - G - S - g - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=7QLv628hupw",
                    "https://www.youtube.com/watch?v=cSrD8S54jnI",
                    "https://www.youtube.com/watch?v=u4oIs5iMWCM",
                    "https://www.youtube.com/watch?v=mhYIePQDLO4"
                ]
            ),
            Raag(
                name: "Chandraprabha",
                time: .t21_24,
                thaat: nil,
                aroh: "S - R - m - d - N - S'",
                avroh: "S' - N - d - m - R - S",
                pakad: "m",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=DK1S5woxk98"
                ]
            ),
            Raag(
                name: "Chandrika",
                time: .t00_03,
                thaat: .bilawal,
                aroh: "S - R - m - P - N - S'",
                avroh: "S' - D - P, m - P - D, P - m - R, 'N - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Ha1BQP3ACoc"
                ]
            ),
            Raag(
                name: "Chandrika, Udan",
                time: .t12_15,
                thaat: .kafi,
                aroh: "S - g - m - P - n - S'",
                avroh: "S' - n - P - D - P - m - g - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=n5CmwjdY8mA"
                ]
            ),
            Raag(
                name: "Chandrika, Uday",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - g - m - P - d - N - S'",
                avroh: "S' - d - P - m - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Chandrika, Uday Ravi",
                time: .t18_21,
                thaat: .bilawal,
                aroh: "S - R - G - m - D - N - S'",
                avroh: "S' - N - D - m - G - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Charukeshi",
                time: .t09_12,
                thaat: nil,
                aroh: "S - R - G - m - P - d - n - S'",
                avroh: "S' - n - d - P - m - G - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=ksz_COxebHg",
                    "https://www.youtube.com/watch?v=32qS9y3-N4U",
                    "https://www.youtube.com/watch?v=x4WvfJFxeo8",
                    "https://www.youtube.com/watch?v=tcX0pE0hLNE",
                    "https://www.youtube.com/watch?v=pzb5V8AYM68",
                    "https://www.youtube.com/watch?v=55TwzTULzzQ",
                    "https://www.youtube.com/watch?v=ZYeKRrB8o0E",
                    "https://www.youtube.com/watch?v=pj8mWhewXdQ",
                    "https://www.youtube.com/watch?v=kZzQWLw-3-k",
                    "https://www.youtube.com/watch?v=oFIKb-x01rQ",
                    "https://www.youtube.com/watch?v=DlMuPo0cd0Q",
                    "https://www.youtube.com/watch?v=x4WvfJFxeo8"
                ]
            ),
            Raag(
                name: "Chhayanat",
                time: .t21_24,
                thaat: .kalyan,
                aroh: "S - R - G - m - PR, G - m - D - P, P - S' - N - S'",
                avroh: "R' - S' - ND - PR, G - M - R - S",
                pakad: "P - R, G - m - P - m - G - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=8LpQLk71aFw",
                    "https://www.youtube.com/watch?v=7rZsPF2Md4A",
                    "https://www.youtube.com/watch?v=XdvAIGx4gC8",
                    "https://www.youtube.com/watch?v=pkNoJ1bWHK8",
                    "https://www.youtube.com/watch?v=n8X-8UXTOF8",
                    "https://www.youtube.com/watch?v=UL--vj9CW9s",
                    "https://www.youtube.com/watch?v=3nch9vH_zGE",
                    "https://www.youtube.com/watch?v=FP40eCXwmhs",
                    "https://www.youtube.com/watch?v=KVtEU5etEno",
                    "https://www.youtube.com/watch?v=M0fpc5CRBsc"
                ]
            ),
            Raag(
                name: "Daulati",
                time: .t00_03,
                thaat: .kafi,
                aroh: "S - R - P - m - n - P - N - S'",
                avroh: "S' - N - P - g - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=X6czPdZI8CQ"
                ]
            ),
            Raag(
                name: "Deepak",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "S - G - m - P, D - N - S'",
                avroh: "S' - n - D - P - m - G - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=k25zubw8j8E",
                    "https://www.youtube.com/watch?v=4ERKKHlRG9Q",
                    "https://www.youtube.com/watch?v=RuveoktyJ6k"
                ]
            ),
            Raag(
                name: "Des",
                time: .t00_03,
                thaat: .khamaj,
                aroh: "S - R - m - P - N - S'",
                avroh: "S' - n - D - P - m - G - R - 'N - S",
                pakad: "R - m - P, n - D - P, D - m - G - R, G - 'N - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=vfmW50d-rh4",
                    "https://www.youtube.com/watch?v=_jYsdU961lY",
                    "https://www.youtube.com/watch?v=hnnle5fuZlE",
                    "https://www.youtube.com/watch?v=y3yPA1TpXRo",
                    "https://www.youtube.com/watch?v=6sT3DJsUIzo",
                    "https://www.youtube.com/watch?v=4dCkQapm9VU",
                    "https://www.youtube.com/watch?v=3utGH37HzCk",
                    "https://www.youtube.com/watch?v=GfW01ltdG9Q",
                    "https://www.youtube.com/watch?v=SKLJLTfkrDo",
                    "https://www.youtube.com/watch?v=fOb_WYTCk_M",
                    "https://www.youtube.com/watch?v=d8k_HjwOWE4"
                ]
            ),
            Raag(
                name: "Deshakhya",
                time: .t21_24,
                thaat: .kafi,
                aroh: "'N - S - m - R, P - m, n - P, S'",
                avroh: "S', n - P, m - P, g - m, R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Desh Gaud",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - S, P - d - N - S'",
                avroh: "S' - N - d - P, S - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=NEoOPVbwrv8"
                ]
            ),
            Raag(
                name: "Desi",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - m - P -  m - P - n - S'",
                avroh: "S' - P - D - P - d - m - P, R - g - S - R - 'n - S",
                pakad: "P - D - m - P - g - r - S - r - 'n - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=0RFxxbhq8o4",
                    "https://www.youtube.com/watch?v=NVJcReculIw",
                    "https://www.youtube.com/watch?v=GgNOensuRzU",
                    "https://www.youtube.com/watch?v=3VpiNzbxnBE",
                    "https://www.youtube.com/watch?v=BAzm0gT4Yuw"
                ]
            ),
            Raag(
                name: "Desi, Komal",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - m - P - n' - S'",
                avroh: "S' - n - d - P - m - g- r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Deskar",
                time: .t06_09,
                thaat: .bilawal,
                aroh: "S - R - G - P - D - S'",
                avroh: "S' - D - P, D - P - G, P - G - R - S",
                pakad: "D - P - G - P - G - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=VspmmF-mElA",
                    "https://www.youtube.com/watch?v=B2YT_CJEn2k",
                    "https://www.youtube.com/watch?v=5p2IUDczkrM",
                    "https://www.youtube.com/watch?v=9Oj2KH2utuo",
                    "https://www.youtube.com/watch?v=YpnDdblLULA"
                ]
            ),
            Raag(
                name: "Dev Gandhar",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - m - P - d - (D)m, P - d - n - S'",
                avroh: "S' - n - d - P - m - P - (m)g  - R  - S, R - n - S - R - G - m, P - (m)g - R - S",
                pakad: "m - P - d - m - P - (m)g - R - S, R - n - S - R - G - m",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=TtnnuaTchro",
                    "https://www.youtube.com/watch?v=dbLXEjIkPZ8",
                    "https://www.youtube.com/watch?v=n75jQJhcoog"
                ]
            ),
            Raag(
                name: "Dhanashree",
                time: .t18_21,
                thaat: .bilawal,
                aroh: "N - S - G - m - P - N - S'",
                avroh: "S' - N - D - P, P - Dm, P - G, G - m - G - R - S",
                pakad: "N - (D)P, D - (P)m, P - (m)G, m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=4mWfem0GpAY"
                ]
            ),
            Raag(
                name: "Dhanashree, Multani",
                time: .t21_24,
                thaat: .bhairavi,
                aroh: "'n - S - m - g - M - P, (m)g - m - P - S' - n - S'",
                avroh: "S' - N - d - P - M - g - M - g, g - M - P - (M)g, M - g - r - S",
                pakad: "'n - S - m - g, g - M - P - M - P, d - P - (M)g - M - g",
                youtubeLinks: []
            ),
            Raag(
                name: "Dhanashree, Puriya",
                time: .t15_18,
                thaat: nil,
                aroh: "'N - r - G - M - d - N - r' - S'",
                avroh: "r' - N - d - P, M - G - M - r - G - r - S",
                pakad: "'N - r - G, M - P, d - P, M - G, M - r - G, r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=PUZAZqT6JME",
                    "https://www.youtube.com/watch?v=FOoIgtApCVM",
                    "https://www.youtube.com/watch?v=_2sYBhDU7DA",
                    "https://www.youtube.com/watch?v=JbDktrsnH40",
                    "https://www.youtube.com/watch?v=ktN-fsAInFE",
                    "https://www.youtube.com/watch?v=IERqQEw_BwE",
                    "https://www.youtube.com/watch?v=11v9ALkOiio",
                    "https://www.youtube.com/watch?v=Nk5162mSOZI",
                    "https://www.youtube.com/watch?v=txm-1pm2cjw",
                    "https://www.youtube.com/watch?v=2pXGhrHnN1Y",
                    "https://www.youtube.com/watch?v=N3mzgfrmRsw",
                    "https://www.youtube.com/watch?v=PcI-lwEzevA",
                    "https://www.youtube.com/watch?v=5K7qTJWNtNI",
                    "https://www.youtube.com/watch?v=0VB7jujlb5o",
                    "https://www.youtube.com/watch?v=SBQZMwZ7a2I",
                    "https://www.youtube.com/watch?v=HIEo4_PBizI",
                    "https://www.youtube.com/watch?v=n4jTh3g9oow",
                    "https://www.youtube.com/watch?v=IiBYbUARzCc",
                    "https://www.youtube.com/watch?v=CA74rAvq064",
                    "https://www.youtube.com/watch?v=iuph_wUmDYk",
                    "https://www.youtube.com/watch?v=ZNqSvrkbaBc",
                    "https://www.youtube.com/watch?v=yfBcWKv6ZGg",
                    "https://www.youtube.com/watch?v=J_tydKsVRmk",
                    "https://www.youtube.com/watch?v=eASyoJvQ2ng"
                ]
            ),
            Raag(
                name: "Dhani",
                time: .monsoon,
                thaat: .kafi,
                aroh: "'n - S - g - m - P - n - S'",
                avroh: "S' - n - P - M - g - R - S",
                pakad: "g - m - n - P - g - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=qZwNtm3F8Uo",
                    "https://www.youtube.com/watch?v=ratNvE4_fA0",
                    "https://www.youtube.com/watch?v=NeiY6jWHPLQ",
                    "https://www.youtube.com/watch?v=7MmDHRo5OiQ"
                ]
            ),
            Raag(
                name: "Dhanya Dhaivat",
                time: .t03_06,
                thaat: .marwa,
                aroh: "S - r - G, P - D - S'",
                avroh: "S' - D - P, G - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=yx5mHVh6O70",
                    "https://www.youtube.com/watch?v=UFXMazdxgUE"
                ]
            ),
            Raag(
                name: "Dhavalshree",
                time: .monsoon,
                thaat: nil,
                aroh: "'N - S - G - P - M - d - P - M - D - N - D - P - M - D - N - S",
                avroh: "r' - N - d - P - M - G - M - r - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Durga",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "S - R - m - R - P - D - S'",
                avroh: "S' - D - P - D - m - R - 'D - S",
                pakad: "S' - D - m - P - D - m - R - 'D - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=IFGEHxvoFQQ",
                    "https://www.youtube.com/watch?v=iwQ1z6g1-Zw",
                    "https://www.youtube.com/watch?v=XDqZY9jjfwk",
                    "https://www.youtube.com/watch?v=GpdA4Wpv2Fo",
                    "https://www.youtube.com/watch?v=z9asN7RfPI0",
                    "https://www.youtube.com/watch?v=6txwij498Nc",
                    "https://www.youtube.com/watch?v=VspmmF-mElA",
                    "https://www.youtube.com/watch?v=6y4ngTMDslU",
                    "https://www.youtube.com/watch?v=GOt9AnM0Mq8"
                ]
            ),
            Raag(
                name: "Gandhakriya",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - G - r - m - P - N - d - N - S'",
                avroh: "S' - N - d - P - m - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Gandhari",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - m - P - d - n - S'",
                avroh: "S' - n - d - n - d - P - m - g - r - S",
                pakad: "R - m - P - d - P - n - d - S - n - d - P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=OlBoLfUF4Iw",
                    "https://www.youtube.com/watch?v=8Y8Hl6NM97k",
                    "https://www.youtube.com/watch?v=IhfjywBtN5k",
                    "https://www.youtube.com/watch?v=X8Cz0WHcYyg"
                ]
            ),
            Raag(
                name: "Gara",
                time: .t06_09,
                thaat: .kafi,
                aroh: "S - G - m - P - D - N - S'",
                avroh: "S' - n - D - P - m - G, R - g - R - S, N - (R)S - 'n - 'D - S",
                pakad: "S - G - M - P - G - M - G, R - g - R - S, 'N - R - S - 'N - 'D",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=rYhI-lnk0ZM",
                    "https://www.youtube.com/watch?v=x9CgbUUiC_U",
                    "https://www.youtube.com/watch?v=mSTYCm4EICU"
                ]
            ),
            Raag(
                name: "Gauri",
                time: .t18_21,
                thaat: .bhairav,
                aroh: "S - (r)G - r, G - G - m - P - m, P - d - N - S'",
                avroh: "S' - N - D - (m)P, d - (m)P - m - (r)G, (r)G - r - 'N - S - 'N - S",
                pakad: "m - d - P - d - m - P - G - m, r - G - r, S - r - ('N)S - 'N",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=M7Smic3iDXQ"
                ]
            ),
            Raag(
                name: "Gauri, Lalita",
                time: .t18_21,
                thaat: nil,
                aroh: "S - r - G - m, M - m - G, G - m - P - d - P, P - d - N - S'",
                avroh: "S' - N - d - P, d - m, M - d - M - m, G - (M)r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=PuJ1Iag6xkg",
                    "https://www.youtube.com/watch?v=43m4du6Qtu0",
                    "https://www.youtube.com/watch?v=gSN-VrfolfA",
                    "https://www.youtube.com/watch?v=_CIgpolgRAE",
                    "https://www.youtube.com/watch?v=yfhCXWe0BcE"
                ]
            ),
            Raag(
                name: "Girija",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - G - m - d - N - S'",
                avroh: "S' - N - d - m - G - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=nKDnF9UuX9E",
                    "https://www.youtube.com/watch?v=nKDnF9UuX9E"
                ]
            ),
            Raag(
                name: "Gopika Basant",
                time: .t06_09,
                thaat: .asavari,
                aroh: "S - g - m - P - d - n - S'",
                avroh: "S' - n - d - P - m - g - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Gunakali",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - m - P - d - S'",
                avroh: "S' - d - P - m - r - S",
                pakad: "r - m - P - d - d - P - m - r - r - 'd - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=m9iVdkKgXDE",
                    "https://www.youtube.com/watch?v=1pipa1DhbVk",
                    "https://www.youtube.com/watch?v=qPCmS-24aoM"
                ]
            ),
            Raag(
                name: "Gunakali, Utari",
                time: .t06_09,
                thaat: .asavari,
                aroh: "S - r - g - m, - m - P - (n)d - n - S'",
                avroh: "S' - n - (n)d -P, d - m - P, (P)g, g - m - r - S",
                pakad: "d - m, P - d - m - P - (m)g, g - m - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=1pipa1DhbVk",
                    "https://www.youtube.com/watch?v=ywNoFQFs2yE"
                ]
            ),
            Raag(
                name: "Gyankali",
                time: .t09_12,
                thaat: .bhairavi,
                aroh: "S - r - m - d - n - S'",
                avroh: "S' - n - d - m - r - S",
                pakad: "r - m - d - n - d - m - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=6hihk9Sh_0E",
                    "https://www.youtube.com/watch?v=vfhxeMpuszA"
                ]
            ),
            Raag(
                name: "Hameer",
                time: .t21_24,
                thaat: .kalyan,
                aroh: "S - R - S - G - m - D - N - D - S'",
                avroh: "S' - N - D - P - M - P - G - m - R - S",
                pakad: "S - R - S - G - m - D",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=2UDJ-pYDSzw",
                    "https://www.youtube.com/watch?v=SI0RxeQjeyw",
                    "https://www.youtube.com/watch?v=6JGbNVd_04c",
                    "https://www.youtube.com/watch?v=qcRjHo4FF8E",
                    "https://www.youtube.com/watch?v=tEhvaV2QSFA",
                    "https://www.youtube.com/watch?v=FeXKOkbUMcw"
                ]
            ),
            Raag(
                name: "Harikauns",
                time: .t21_24,
                thaat: nil,
                aroh: "S - g - M - D - n - S'",
                avroh: "S' - n - D - M - g - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=-aDpdMNGRQY",
                    "https://www.youtube.com/watch?v=bXSQBNsljCg",
                    "https://www.youtube.com/watch?v=FIwqNPPPQ6A",
                    "https://www.youtube.com/watch?v=_hWT4mbnHBg"
                ]
            ),
            Raag(
                name: "Haunsdhwani",
                time: .t18_21,
                thaat: .bilawal,
                aroh: "S - R - G - P - N - S'",
                avroh: "S' - N - P - G - R - S",
                pakad: "R - G - P - (G)R, G - P - N - P - G - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=NQgjPSoAkZQ",
                    "https://www.youtube.com/watch?v=DaI4qJzBqdg",
                    "https://www.youtube.com/watch?v=DUWxXx0NRwQ",
                    "https://www.youtube.com/watch?v=IlijUJsxk9c",
                    "https://www.youtube.com/watch?v=TBHOX5NcZds",
                    "https://www.youtube.com/watch?v=c44BGHqQnYg",
                    "https://www.youtube.com/watch?v=FiWEMLhKDQI",
                    "https://www.youtube.com/watch?v=Dpi8VOX4c5g",
                    "https://www.youtube.com/watch?v=061_wWqkG5Y"
                ]
            ),
            Raag(
                name: "Haunskinkini",
                time: .t12_15,
                thaat: .kafi,
                aroh: "'N - S - G - m - P - N - S'",
                avroh: "S - n - D - P - m - P - g, m - P - (m)g - R - S - 'N - 'N - S",
                pakad: "S' - G - m - P, P - n - D - P, m - P - (m)g - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=DzebOP9xH_I",
                    "https://www.youtube.com/watch?v=HMi-k1wo2oc",
                    "https://www.youtube.com/watch?v=XZSAMbtYEDQ"
                ]
            ),
            Raag(
                name: "Haunsnad",
                time: .t18_21,
                thaat: .marwa,
                aroh: "S - r - G - M - N - S'",
                avroh: "S' - N - P - M - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Hemant",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "S - G - m - D - N - S'",
                avroh: "S' - N - D - P - m - G - m - R - S",
                pakad: "G - m - D - N - S, N - D - P - m - G - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=L63G-Rme0Q0",
                    "https://www.youtube.com/watch?v=DXsZtLDsVIE",
                    "https://www.youtube.com/watch?v=jNvb5jT3QM8",
                    "https://www.youtube.com/watch?v=_bpDUbZ4wzU",
                    "https://www.youtube.com/watch?v=NeibZJAhg1U",
                    "https://www.youtube.com/watch?v=TNECRo3w2Cc",
                    "https://www.youtube.com/watch?v=q022SBvsZnE",
                    "https://www.youtube.com/watch?v=RSO3oa5K8MY",
                    "https://www.youtube.com/watch?v=rq1SSBAi-U4",
                    "https://www.youtube.com/watch?v=YvGWTBZRsjE"
                ]
            ),
            Raag(
                name: "Hemavanti",
                time: .t06_09,
                thaat: .todi,
                aroh: "S - r - M - P - d - N - S'",
                avroh: "S' - N - d - P - M - g - r - S'",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=sa_2yNkwS_s",
                    "https://www.youtube.com/watch?v=niRAg04xADU",
                    "https://www.youtube.com/watch?v=DXLIIbDO-3I"
                ]
            ),
            Raag(
                name: "Hevitri",
                time: .t03_06,
                thaat: .bhairav,
                aroh: "S - r - G - m - P - D - S'",
                avroh: "S' - n - D - P - m - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Hindol",
                time: .t03_06,
                thaat: .kalyan,
                aroh: "S - G - M - D - N - D - S'",
                avroh: "S' - N - D - M - G - S",
                pakad: "S - G - M - N - D - M - G - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=dB1tamzB_qE",
                    "https://www.youtube.com/watch?v=KJRLjsShqRU",
                    "https://www.youtube.com/watch?v=QaWOYuNci9w"
                ]
            ),
            Raag(
                name: "Hindol, Marg",
                time: .t03_06,
                thaat: .marwa,
                aroh: "S - G - M, D - N - D, S'",
                avroh: "S' - r - N - D, M - g, P - G - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Hindol, Saanjh Ki",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - G, M - D - M - n, M - D - S'",
                avroh: "S', N - D - N, D - M - G, S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=ACPlFRC4GeA",
                    "https://www.youtube.com/watch?v=kwUdMh-X0DM",
                    "https://www.youtube.com/watch?v=5jL0Ynv8HXM",
                    "https://www.youtube.com/watch?v=ACPlFRC4GeA",
                    "https://www.youtube.com/watch?v=HX3V0vnP6cE",
                    "https://www.youtube.com/watch?v=oRX31OwaNhQ",
                    "https://www.youtube.com/watch?v=hdIGwuO7Ls4",
                    "https://www.youtube.com/watch?v=kbhmpxkf6iY"
                ]
            ),
            Raag(
                name: "Hindol, Sampoorna",
                time: .t03_06,
                thaat: .kalyan,
                aroh: "S - M - g, (D)M - (N)D - S'",
                avroh: "S' - (N)D - M - g, P - (M)G, M - G - S(R) - 'D - S",
                pakad: "M - (N)D - S', S - (N)D - M - G, P - (M) - G, S - (R)'D - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Homshikha",
                time: .t00_03,
                thaat: .khamaj,
                aroh: "S - G, P - D, N - S'",
                avroh: "S' - n, D - P, G - g - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Jaijaiwanti",
                time: .t18_21,
                thaat: .kafi,
                aroh: "S - R - G - m - P - m - G - m - P - N - S'",
                avroh: "S' - n - D - P - m - G - R - g - R - S",
                pakad: "R - g - R - S, 'N - S - 'D - 'n - R",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=p1XddjLg818",
                    "https://www.youtube.com/watch?v=9wMPD4DJvOY",
                    "https://www.youtube.com/watch?v=3usA5LouPfk",
                    "https://www.youtube.com/watch?v=_Am29aDMCdY",
                    "https://www.youtube.com/watch?v=LFL2QU19_Hg",
                    "https://www.youtube.com/watch?v=mRXFB-BZydU",
                    "https://www.youtube.com/watch?v=3kP7LAwrd5o"
                ]
            ),
            Raag(
                name: "Jaijaiwanti (Des Ang)",
                time: .t18_21,
                thaat: .khamaj,
                aroh: "'N - S - R - G - m - P - N - S'",
                avroh: "S' - n - D - P - m - G - R - 'N - S - 'D - 'n - R",
                pakad: "R - G - m - P - D - G - m - R - G - 'N - S - 'D - 'n - R",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=3usA5LouPfk",
                    "https://www.youtube.com/watch?v=68iYAvI7Ex8"
                ]
            ),
            Raag(
                name: "Jaikauns",
                time: .t21_24,
                thaat: .kafi,
                aroh: "'N - S, g - m - M - m, D - N - S'",
                avroh: "S' - N - D, m - M - m, g - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Jairaj",
                time: .t00_03,
                thaat: .bilawal,
                aroh: "S - R - m - P, m - D - N - S'",
                avroh: "S' - D - P - M, D - P, m - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Jait",
                time: .t18_21,
                thaat: .marwa,
                aroh: "S - r - G - P - D - P - S'",
                avroh: "S' - P - D - P - G - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=cjF0VxYXv1Q",
                    "https://www.youtube.com/watch?v=HygLaWSqBHY"
                ]
            ),
            Raag(
                name: "Jaitshree",
                time: .monsoon,
                thaat: nil,
                aroh: "'N - S - G - P - M - d - P - M - P - N - S'",
                avroh: "R' - N - d - P - S' - P - M - G - M - r - G - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=qAa7l7rf8gE",
                    "https://www.youtube.com/watch?v=smEOhmg2IUI",
                    "https://www.youtube.com/watch?v=2kzdtDuKznw",
                    "https://www.youtube.com/watch?v=lMvoPO9cxMM"
                ]
            ),
            Raag(
                name: "Jaiwanti",
                time: .t09_12,
                thaat: .todi,
                aroh: "S - r - g, M - P - S'",
                avroh: "S' - d - P, M - g - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=edDJPBCRqeU",
                    "https://www.youtube.com/watch?v=4mXdsXGdaLw"
                ]
            ),
            Raag(
                name: "Janasamohini",
                time: .t18_21,
                thaat: .khamaj,
                aroh: "S - R - G - P - D - n - S'",
                avroh: "S' - n - D - P - G - P - G - R, S - 'n - 'D - S",
                pakad: "P - D - n - D - P - G - R, S - 'n - 'D - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=DKQ6MixP3o4",
                    "https://www.youtube.com/watch?v=3akrWVndHlE",
                    "https://www.youtube.com/watch?v=S9w5iyJQHkc",
                    "https://www.youtube.com/watch?v=SKxbsNhz_So",
                    "https://www.youtube.com/watch?v=7jjEG9xu1-Q"
                ]
            ),
            Raag(
                name: "Jaunpuri",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - m - P - d - n - S'",
                avroh: "S' - n - d - P - m - g - R - S",
                pakad: "m - P - d - n - S - n - d - P - m - P - g - R - m - P - d - P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=gwIioHPtqA0",
                    "https://www.youtube.com/watch?v=YcNO9lMWGqU",
                    "https://www.youtube.com/watch?v=XtFeyKxut2w",
                    "https://www.youtube.com/watch?v=zscctZJKIY8",
                    "https://www.youtube.com/watch?v=xRYvRFXaaj8",
                    "https://www.youtube.com/watch?v=rvjLi_tcVKU",
                    "https://www.youtube.com/watch?v=fddwIeKPzvs",
                    "https://www.youtube.com/watch?v=_54KcuYrAnc",
                    "https://www.youtube.com/watch?v=BxNYA-2uNVc"
                ]
            ),
            Raag(
                name: "Jayant",
                time: .t03_06,
                thaat: .kafi,
                aroh: "S - g - m - P - D - S'",
                avroh: "S' - n - D - P, m - g - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Jhinjhoti",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - R - m - P - D - S'",
                avroh: "S' - n - D - P - m - G - R - G - (R) - S",
                pakad: "D - S - R - m - G - P - m - G - R - S - 'n - 'D - 'P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=1q8FhIWjkoM",
                    "https://www.youtube.com/watch?v=ufUCBbMrk1g",
                    "https://www.youtube.com/watch?v=QX6okSI91C0",
                    "https://www.youtube.com/watch?v=1lgN4SwU3ao",
                    "https://www.youtube.com/watch?v=oI5E9f1ZCnc",
                    "https://www.youtube.com/watch?v=htmEGHQ_98k"
                ]
            ),
            Raag(
                name: "Jog",
                time: .t00_03,
                thaat: .kafi,
                aroh: "'n - S - G - m - P - n - S'",
                avroh: "S' - n - P - m - G - S - g - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=1DYWEC_Rfy0",
                    "https://www.youtube.com/watch?v=HwCIDG-ahp0",
                    "https://www.youtube.com/watch?v=0O-wwqD9v0w",
                    "https://www.youtube.com/watch?v=Z2MVPxRllNY",
                    "https://www.youtube.com/watch?v=8aik0BsG2i0",
                    "https://www.youtube.com/watch?v=rFjasQ7y7fg",
                    "https://www.youtube.com/watch?v=jkNlOUF6OLE",
                    "https://www.youtube.com/watch?v=SK3FmfOeJ4w",
                    "https://www.youtube.com/watch?v=jTQKpXWSyvI",
                    "https://www.youtube.com/watch?v=p0b3rPd2vQY"
                ]
            ),
            Raag(
                name: "Jogiya",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - m - P - d - S'",
                avroh: "S' - N - d - P - d - m - r - S",
                pakad: "N - d - P - P - d - m - r - m - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=PcxkbOWyLSk",
                    "https://www.youtube.com/watch?v=b8RCPjFFHw0",
                    "https://www.youtube.com/watch?v=j7yQRI5_SeM",
                    "https://www.youtube.com/watch?v=_ii-XCqE0tQ",
                    "https://www.youtube.com/watch?v=Z1qWYe74M0w",
                    "https://www.youtube.com/watch?v=DGT6m9l87Ks",
                    "https://www.youtube.com/watch?v=y8g9WCczGXY"
                ]
            ),
            Raag(
                name: "Jogkauns",
                time: .t00_03,
                thaat: .asavari,
                aroh: "S - G - m - P - N - d - N - S'",
                avroh: "S' - N - d - (S)n - S', n - d - m - P - m - G, S - G - m - g - S",
                pakad: "S - N - d - S - n - S, n - S - (m)g - (m)g, S - G - G - m, m - (n)d - (n)d - m, P - m - G - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=O92FgzquyS8",
                    "https://www.youtube.com/watch?v=2vXkZJaMYnI",
                    "https://www.youtube.com/watch?v=mfuLTboT0qc",
                    "https://www.youtube.com/watch?v=TTKY92oj2uw",
                    "https://www.youtube.com/watch?v=kThoPthWgm0",
                    "https://www.youtube.com/watch?v=4NNUMtenQr8",
                    "https://www.youtube.com/watch?v=CgaR4GVnWUg",
                    "https://www.youtube.com/watch?v=pkEOBS_2IZA",
                    "https://www.youtube.com/watch?v=u4Flq9q-uBM",
                    "https://www.youtube.com/watch?v=LAlRWbCS9uQ",
                    "https://www.youtube.com/watch?v=rSuWR2kt6wY"
                ]
            ),
            Raag(
                name: "Jungala",
                time: .t00_03,
                thaat: .asavari,
                aroh: "S - R - g - m - P - D - N - S'",
                avroh: "S', n - d, P - D, P - m - g - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=OZIab2kvl8c"
                ]
            ),
            Raag(
                name: "Kaamaai",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - G, m - P, n - S'",
                avroh: "S' - n, D - P, m - G - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=XrrogF-lLTA"
                ]
            ),
            Raag(
                name: "Kaamkesh",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - m - G - m - P - D - N - S'",
                avroh: "S' - n - D - P - m - G - m - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Kafi",
                time: .t18_21,
                thaat: .kafi,
                aroh: "S - R - g - m - P - D - n - S'",
                avroh: "S' - n - D - P - D - m - g - R - S",
                pakad: "S - R - R - g - m - P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=rTuNr68MoyE",
                    "https://www.youtube.com/watch?v=jtzioa3ddKE",
                    "https://www.youtube.com/watch?v=46ocs6I6R0M",
                    "https://www.youtube.com/watch?v=ZNxorE2hZn0",
                    "https://www.youtube.com/watch?v=VuwhAGlS0-E"
                ]
            ),
            Raag(
                name: "Kakambheri",
                time: .t06_09,
                thaat: .bhairavi,
                aroh: "S - r - g - m - P - d - S'",
                avroh: "S' - n - d - P - m - g - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Kala Bharan",
                time: .t18_21,
                thaat: .khamaj,
                aroh: "S - R - G - m - P - D - n - S'",
                avroh: "S' - D - P - G - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Kalawati",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - G - P - D - n - D - S'",
                avroh: "S' - n - D - P - G - P - G - S",
                pakad: "G - P - D - n - D - S' - n - D - P - G - P - G - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=OtaJ7uoFEdk",
                    "https://www.youtube.com/watch?v=yGFSRmHqx78",
                    "https://www.youtube.com/watch?v=nPsgEdzNrus",
                    "https://www.youtube.com/watch?v=quvwkOLnmmI",
                    "https://www.youtube.com/watch?v=ECaOuAOEKW4",
                    "https://www.youtube.com/watch?v=bxKTh4YRogE",
                    "https://www.youtube.com/watch?v=mweJRwNEo_Y",
                    "https://www.youtube.com/watch?v=1e_HoMXwozY"
                ]
            ),
            Raag(
                name: "Kalingda",
                time: .t03_06,
                thaat: .bhairav,
                aroh: "S - r - G - m - P - d - N - S'",
                avroh: "S' - N - d - P - m - G - r - S",
                pakad: "P - d - m - P - G - m - S - r - G - m",
                youtubeLinks: []
            ),
            Raag(
                name: "Kalyan, Chandra",
                time: .t18_21,
                thaat: nil,
                aroh: "S - r - M - P - d - P - N - S'",
                avroh: "S' - N - r - N - d - P - M - d - P - M - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Kalyan, Durga",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - R - G - M - P - D - N - S'",
                avroh: "S' - N - D - P - M - G - R, m - (m)R - (R)'D - S",
                pakad: "D - P - M - G - R, m - (m)R - (R)'D - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Kalyan, Gorakh",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - R - m - D - n - D - S'",
                avroh: "S' - n - D - P - m - R - S - 'n - 'D - S",
                pakad: "P - D - n - D - m - R - (S') - n - 'd - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=KNkqH7K3CRw",
                    "https://www.youtube.com/watch?v=lf8lAiKGT30"
                ]
            ),
            Raag(
                name: "Kalyan, Hem",
                time: .t18_21,
                thaat: .bilawal,
                aroh: "'P - 'D - 'P - S - R - S - G - m - P - D -  P - S'",
                avroh: "S - D - P - G - m - P - G - m - R - S",
                pakad: "P - D - P - S - R - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Kalyan, Jait",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - R - G - P - D - S",
                avroh: "S - D - P - G - R - S",
                pakad: "S - G - P, P - D - G - P, P - S' - P, P - D - G - P",
                youtubeLinks: []
            ),
            Raag(
                name: "Kalyan, Kesari",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - R - G - P - D - S'",
                avroh: "S' - D - M - P - M - G - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=xh5qjWGaaoo",
                    "https://www.youtube.com/watch?v=IfCT5qixZU0",
                    "https://www.youtube.com/watch?v=xMZ3FGwT3no"
                ]
            ),
            Raag(
                name: "Kalyan, Khem",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - G - R - G - m - P - N - S'",
                avroh: "S' - N - D - M - G - R, G - M - (G)R - 'N - 'D - 'N - S",
                pakad: "S, S - 'N - 'D, 'N - S - G - R, R - S - (S)'P, 'D - 'N - S - G - R",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=tsMqn8MaVkg",
                    "https://www.youtube.com/watch?v=slqHxg5o7H0",
                    "https://www.youtube.com/watch?v=HTtSVXCWC6E",
                    "https://www.youtube.com/watch?v=0_0XgsFp86E",
                    "https://www.youtube.com/watch?v=GWwqjaPb6vM",
                    "https://www.youtube.com/watch?v=hxTeD3sHvwU",
                    "https://www.youtube.com/watch?v=Zs3YfMD4BQU",
                    "https://www.youtube.com/watch?v=CMUuQKEqpZ0",
                    "https://www.youtube.com/watch?v=MX0spnyW8Xc"
                ]
            ),
            Raag(
                name: "Kalyan, Lakshmi",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S, R - G - m - R, M - P, D, N - S'",
                avroh: "S' - N - D - P, M, m, G - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Sk9-h3IqocQ"
                ]
            ),
            Raag(
                name: "Kalyan, Purba",
                time: .t18_21,
                thaat: .marwa,
                aroh: "S - r - G - M - P - D - N - S'",
                avroh: "S' - N - D - P - M - G - (M)r - G - r - S",
                pakad: "N - D - P - M - G , M - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=SjZBqJokFPU"
                ]
            ),
            Raag(
                name: "Kalyan, Puriya",
                time: .t15_18,
                thaat: .marwa,
                aroh: "'N - r - G - M - D - N - r' - S'",
                avroh: "S' - N - D - P - M - G - r - S",
                pakad: "M - N - D - P - M - G - r - G - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=CauWcykOqGA",
                    "https://www.youtube.com/watch?v=v3YbH1HrJ-A",
                    "https://www.youtube.com/watch?v=9MXhJ2KTzqE",
                    "https://www.youtube.com/watch?v=oUxQ0KUU-eY"
                ]
            ),
            Raag(
                name: "Kalyan, Raj",
                time: .t21_24,
                thaat: .kalyan,
                aroh: "N - R - G - M - D - N - S'",
                avroh: "S' N - D - M - G - R, N - R - S",
                pakad: "G - (M)D, D - (M)G - R, N - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=aZsjueDunnU",
                    "https://www.youtube.com/watch?v=eaSZrSkpJEc"
                ]
            ),
            Raag(
                name: "Kalyan, Samant",
                time: .t21_24,
                thaat: .kalyan,
                aroh: "S - R - G - P - D - S'",
                avroh: "S' - N - D - P - M - G - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Kalyan, Shree",
                time: .t06_09,
                thaat: .kalyan,
                aroh: "S, R, M, P, D - P, S'",
                avroh: "S', D - P, M - P, R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Kalyan, Shuddha",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - R - G - P - D - S'",
                avroh: "S - ND - P, P - MG - R - S",
                pakad: "S - ('N)'D - 'P, 'D - S, R - G - P - (M)G, P - (G)R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=xg2ovq4uya0",
                    "https://www.youtube.com/watch?v=AhDb_QAGaDQ",
                    "https://www.youtube.com/watch?v=PFFf3JSFbnY",
                    "https://www.youtube.com/watch?v=Geui2j-YlFs",
                    "https://www.youtube.com/watch?v=14vp5GV88NU",
                    "https://www.youtube.com/watch?v=ERjcbhDiGIQ",
                    "https://www.youtube.com/watch?v=Vz8tduA98fA",
                    "https://www.youtube.com/watch?v=ax6Dc3OK3_c",
                    "https://www.youtube.com/watch?v=nDKPObr1dYk",
                    "https://www.youtube.com/watch?v=_IJFWImeOaE",
                    "https://www.youtube.com/watch?v=EK0XSU2g-nM"
                ]
            ),
            Raag(
                name: "Kalyan, Shyam",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - R - M - P - N - S'",
                avroh: "S' - N - D - P - M - P - G - m - R - S",
                pakad: "R - P, G - m - R, 'N - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=oTeVjVqrlJA",
                    "https://www.youtube.com/watch?v=x7WwEczBkDU",
                    "https://www.youtube.com/watch?v=2qVDLGBUvsU",
                    "https://www.youtube.com/watch?v=vMvCGSDtx64"
                ]
            ),
            Raag(
                name: "Kalyan, Yaman",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "N - R - G - M - D - N - S'",
                avroh: "S' - N - D - P - M - G - m - G - R - S",
                pakad: "'N - R - G - M - P - R - GmG - R - G - R - 'N - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Ty8Js132VZo",
                    "https://www.youtube.com/watch?v=ocvk__Lul3Y",
                    "https://www.youtube.com/watch?v=uDln1qKNwiU",
                    "https://www.youtube.com/watch?v=KgvS-7Di9kE",
                    "https://www.youtube.com/watch?v=RiPzOeTv8dc"
                ]
            ),
            Raag(
                name: "Kamboji",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - R - G, P, D - S'",
                avroh: "S' - n, D - P, m - G - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=rgfd64KzVv0",
                    "https://www.youtube.com/watch?v=kHdN5HBKzTA",
                    "https://www.youtube.com/watch?v=leqr3jj29Tg",
                    "https://www.youtube.com/watch?v=cphIilCyTSw"
                ]
            ),
            Raag(
                name: "Kamboji, Gop",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - R - g - m - P - D - S'",
                avroh: "S' - n - D - P - m - g - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Kamod",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - r - P - m - P - D - P - N - D - S",
                avroh: "S' - N - D - P - M - P - D - P,  G - m - P - G - m - R - S",
                pakad: "S - R - P - g - m - P - g - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=8g4g8T0dRl0",
                    "https://www.youtube.com/watch?v=sTqMne7lGoE"
                ]
            ),
            Raag(
                name: "Kanada, Bageshree",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - R - (m)g - m - P, (m)g - m - D - n - S'",
                avroh: "S' - n - D - P - m - P - (m)g - m - R - S",
                pakad: "P - m - P - D - (m)g - m - R - S - R - (m)g",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=VtVb_eXnhIU"
                ]
            ),
            Raag(
                name: "Kanada, Darbari",
                time: .t21_24,
                thaat: .asavari,
                aroh: "S - R - g~ - m - P - d~ - n - S'",
                avroh: "R' - n - S' - d~ - n - P, m - P - g~ - m - R - S",
                pakad: "S - R - g~, R - S - 'd~, 'n - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=SQCk50joPLk",
                    "https://www.youtube.com/watch?v=vB8p6TRM0jg",
                    "https://www.youtube.com/watch?v=ZiGNg4yibbE",
                    "https://www.youtube.com/watch?v=hc9K11Gwopg",
                    "https://www.youtube.com/watch?v=lC3-b_PyGIc",
                    "https://www.youtube.com/watch?v=oF2hZcbBRlM",
                    "https://www.youtube.com/watch?v=cb6kvPdQPSY",
                    "https://www.youtube.com/watch?v=kCA98wnrQtM"
                ]
            ),
            Raag(
                name: "Kanada, Gunji",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - R - G - (R)G - m, m - P - (m)g, D - n - S'",
                avroh: "S' - D - n - P, (m)g - (m)g - m - R - S",
                pakad: "S - (R)'n - (S)'n - S, S - R - (m)g - (m)g - m - R - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Kanada, Hussaini",
                time: .t21_24,
                thaat: nil,
                aroh: "S - 'n - R - g - m - P - D - n - P - S'",
                avroh: "S' - D - n - P - m - P - g - m - R - S",
                pakad: "S - 'n - R - S, g - m - R - S, P - m - P, D - n - P, S' - n - S' - R' - S' - D - n - P , m - n - P,",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=M0rVlylWRUA"
                ]
            ),
            Raag(
                name: "Kanada, Kafi",
                time: .t00_03,
                thaat: .kafi,
                aroh: "S - R - R - g - m - R - n - D - P - m - P - S'",
                avroh: "S' - n - D - P - n - P - m - P - g - m - R - S",
                pakad: "S - S - R - R - g - g - m - m - P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Ys3bqcT8CDE",
                    "https://www.youtube.com/watch?v=Hb-71082kwY",
                    "https://www.youtube.com/watch?v=DeMoMa_F51Y",
                    "https://www.youtube.com/watch?v=11gSPJKxOgc",
                    "https://www.youtube.com/watch?v=fluembkVZAo"
                ]
            ),
            Raag(
                name: "Kanada, Kaushi",
                time: .t00_03,
                thaat: .bhairavi,
                aroh: "'N - S - m, g - m - d - n - S'",
                avroh: "S' - n - d - m, P - m - g - R, g - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=5Ei44Nr7JFY",
                    "https://www.youtube.com/watch?v=vjDFXaitZw0",
                    "https://www.youtube.com/watch?v=656Vve0xHIU",
                    "https://www.youtube.com/watch?v=1LfU7IAwbC4",
                    "https://www.youtube.com/watch?v=bjkSty3OwRI",
                    "https://www.youtube.com/watch?v=-vrTTWbRqW0",
                    "https://www.youtube.com/watch?v=RG36psBH9R0"
                ]
            ),
            Raag(
                name: "Kanada, Nayaki",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - R - m - P - n - S'",
                avroh: "S' - n - P - m - P - g - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=XQBSkESiuZI",
                    "https://www.youtube.com/watch?v=yARf3EtVfl8",
                    "https://www.youtube.com/watch?v=u-SUOcXN7kY",
                    "https://www.youtube.com/watch?v=el1xPKEb9yE"
                ]
            ),
            Raag(
                name: "Kanada, Shahana",
                time: .t21_24,
                thaat: .kafi,
                aroh: "R - n - S - (m)g - m - P, n - D - n - P, m - P - n - P - S'",
                avroh: "S' - n - D - n - P - m - P - (m)g - m - R - S",
                pakad: "n - D - n - P - m - P - (m)g - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=5E2OyFUnS88",
                    "https://www.youtube.com/watch?v=LnTxnkuETOU",
                    "https://www.youtube.com/watch?v=HWVR01WmVOs"
                ]
            ),
            Raag(
                name: "Kanada, Sughrai",
                time: .t18_21,
                thaat: .kafi,
                aroh: "S - R - (m)g - m - P - n - P - S'",
                avroh: "S' - n - D - n - P - m - P - (m)g - m - R - S",
                pakad: "S - n - D, n - n - P - m - R - S - R - (m)g",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=ceB1lG1nT6s",
                    "https://www.youtube.com/watch?v=vUTzeFVv5T0"
                ]
            ),
            Raag(
                name: "Kanada, Suha",
                time: .t18_21,
                thaat: .kafi,
                aroh: "'n - S - (m)g - m, P - n - m - P - S'",
                avroh: "S' - n - P - m - P - (m)g - m - R - S",
                pakad: "'n - S - (m)g - (m)g - m - P - (m)g - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=C5D5X0ChJ3U",
                    "https://www.youtube.com/watch?v=pQxk82DGKhM",
                    "https://www.youtube.com/watch?v=P2UKqPSdk1s",
                    "https://www.youtube.com/watch?v=DwyyLG-iFss",
                    "https://www.youtube.com/watch?v=tC5hFzibFMQ",
                    "https://www.youtube.com/watch?v=QrmZ4PkbaHs",
                    "https://www.youtube.com/watch?v=1FqoBnk34wY",
                    "https://www.youtube.com/watch?v=5govZhkiGo4"
                ]
            ),
            Raag(
                name: "Kanada, Suha Sughrai",
                time: .t18_21,
                thaat: .kafi,
                aroh: "'n - S - R - g - m, P - n - m - P - S'",
                avroh: "S' - n - P - m - P - (m)g - m - R - S",
                pakad: "R - 'n - S - (m)R - m - n - P - n - m - P - (m)g - (m)g - m - R - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Z975lJute5k"
                ]
            ),
            Raag(
                name: "Kanta, Udan",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - R - m - P - m - D - n - S'",
                avroh: "S' - n - D - P - m - D - m - G - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Kapi",
                time: .t18_21,
                thaat: .kafi,
                aroh: "S - R - g - m - P - D - n - S'",
                avroh: "S' - D - P - m - R - g - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=trS7T3sSWyM",
                    "https://www.youtube.com/watch?v=4yv4ea1pFp4",
                    "https://www.youtube.com/watch?v=XI_5A37n4to"
                ]
            ),
            Raag(
                name: "Kedar",
                time: .t21_24,
                thaat: .kalyan,
                aroh: "S - m, m - G - P, M - P - D - P - S'",
                avroh: "S' - N - D - P, M - P - D - P - m, P - m - R - S",
                pakad: "S - M - P, M - P - D - P - m, S - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=yJ3aJc-ByV4",
                    "https://www.youtube.com/watch?v=WmVgN2p2LPc",
                    "https://www.youtube.com/watch?v=w_muCNrsql4",
                    "https://www.youtube.com/watch?v=TMv8Ic8-xaY",
                    "https://www.youtube.com/watch?v=dPQYwv_hfjk",
                    "https://www.youtube.com/watch?v=O7vaAI4_dag",
                    "https://www.youtube.com/watch?v=QEeqIrHdv4o",
                    "https://www.youtube.com/watch?v=99StTwqiuR8",
                    "https://www.youtube.com/watch?v=MMVCppUOjms",
                    "https://www.youtube.com/watch?v=2PBAejLxAfw",
                    "https://www.youtube.com/watch?v=HejWBI-cPOA",
                    "https://www.youtube.com/watch?v=L1UbpZP5uR0"
                ]
            ),
            Raag(
                name: "Kedar, Basanti",
                time: .t18_21,
                thaat: nil,
                aroh: "S - R - S - m, m - P, D - N - S'",
                avroh: "S' - N - D - P, d - M - P, M - G - M - G, M - G - r - S",
                pakad: "S - R - S - m, m - P, d - M - P - M, G - M - G",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=A46biId8nP0",
                    "https://www.youtube.com/watch?v=45WGSwRuHog",
                    "https://www.youtube.com/watch?v=Lhz8o-DS1gQ",
                    "https://www.youtube.com/watch?v=SGasruJas_8",
                    "https://www.youtube.com/watch?v=dhSW7ig2sFQ"
                ]
            ),
            Raag(
                name: "Kedar, Chandni",
                time: .t21_24,
                thaat: .kalyan,
                aroh: "S - m, M - M - P , D - N - S'",
                avroh: "S' - N - D - P, D - P - M, mR - S",
                pakad: "D - N - D - P, D - P - M, m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=0UYtyMXwEuo",
                    "https://www.youtube.com/watch?v=TpxOvO2aZpg",
                    "https://www.youtube.com/watch?v=_RcWbG74ZtA",
                    "https://www.youtube.com/watch?v=FhYeLLowsew"
                ]
            ),
            Raag(
                name: "Kedar, Jaldhar",
                time: .t18_21,
                thaat: .bilawal,
                aroh: "S - R - S - m, m - P - D - S'",
                avroh: "S' - D - P - m - R - S",
                pakad: "D - P - m, R - S, m",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=p1WHScB-Bx8"
                ]
            ),
            Raag(
                name: "Kedar, Maluha",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "R - 'N - S, m - R - S, m - G - P - M - D - M - P - S'",
                avroh: "S' - N - D - M - P,  (P)G - (m)P - G - m - R - S - 'n - 'D - 'P - 'm, 'P - S",
                pakad: "m - R - S - S - 'd - 'P - 'm - 'P - 'P - 'N - 'N - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Kedar, Nat",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - R - S - m, m - G - P, P - D - P - S'",
                avroh: "S' - N - D - P, M - P - D - P - m, d - G - m - R - S",
                pakad: "S - m, G - P, D - P - m, G - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Twog5_gbb4M"
                ]
            ),
            Raag(
                name: "Kedar, Sangam",
                time: .t00_03,
                thaat: .kalyan,
                aroh: "S - G - M - P - D - N - S'",
                avroh: "S' - D - P - M, m - P, G - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=XzSlEA4ck2I"
                ]
            ),
            Raag(
                name: "Kedar, Sawani",
                time: .monsoon,
                thaat: .kalyan,
                aroh: "S - R - S - m, m - P, P - n - D - N - S'",
                avroh: "S' - D - n - m - P, P(D) - P - m, S - R - S",
                pakad: "S - R - S - 'N - 'n - ('n)'m - 'P, 'P - S, S - m - (m)R - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Kedar, Shyam",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - R - S - m, R - M, P, D - N - S'",
                avroh: "S' - N - D - P, D - n - D - P - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=X7TnaRhV8Ng"
                ]
            ),
            Raag(
                name: "Khamaj",
                time: .t18_21,
                thaat: .khamaj,
                aroh: "S - G - m - P - D - N - S'",
                avroh: "S' - n - D - P - m - G - R - S",
                pakad: "G - m - P - n - D - m - P - D - m - G",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Ch2uM6B8wH0",
                    "https://www.youtube.com/watch?v=Pg5KY-FjEMQ",
                    "https://www.youtube.com/watch?v=JGffXxn1X8I",
                    "https://www.youtube.com/watch?v=ajZ-Qp75Nmw",
                    "https://www.youtube.com/watch?v=knQol8rrg5c",
                    "https://www.youtube.com/watch?v=Ue6o95-v5W0",
                    "https://www.youtube.com/watch?v=-5ozGLFOOXg",
                    "https://www.youtube.com/watch?v=4iVJoL6jwD0",
                    "https://www.youtube.com/watch?v=gixJMEb56gw",
                    "https://www.youtube.com/watch?v=uGPrLThuDAE",
                    "https://www.youtube.com/watch?v=He0TUie-O8k",
                    "https://www.youtube.com/watch?v=qp0-V1NWOOo",
                    "https://www.youtube.com/watch?v=1jg9Go8PJMo",
                    "https://www.youtube.com/watch?v=G56u19zup8g"
                ]
            ),
            Raag(
                name: "Khamaj, Manjh",
                time: .t00_03,
                thaat: .khamaj,
                aroh: "S - R - G - P - m, G - m - P - D - n - D, P - D - N - S'",
                avroh: "S' - n - D - P - m, G - R - G - P - m, G - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=jO0Sxm5hQ2k",
                    "https://www.youtube.com/watch?v=4zZ5JGXCyH0",
                    "https://www.youtube.com/watch?v=A0r6HTE8PLw",
                    "https://www.youtube.com/watch?v=Qd8zpfNE1wQ",
                    "https://www.youtube.com/watch?v=A0r6HTE8PLw",
                    "https://www.youtube.com/watch?v=s7-yc8DOxXY",
                    "https://www.youtube.com/watch?v=aPj8nRdJ3B8",
                    "https://www.youtube.com/watch?v=JHnpHSGoPSs",
                    "https://www.youtube.com/watch?v=Ww6aQe7qqWQ"
                ]
            ),
            Raag(
                name: "Khambavati",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - R - m - P - D - S'",
                avroh: "S - n - D - P, D - m - (P)G - (m)S",
                pakad: "n - D - P - D - P - m - P - G - (m)S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=OG6T1ILDpHo",
                    "https://www.youtube.com/watch?v=-Cs3MLLh_GI",
                    "https://www.youtube.com/watch?v=azpbxaK3t0Q",
                    "https://www.youtube.com/watch?v=jS_hrCj-4wA",
                    "https://www.youtube.com/watch?v=QNC2oPxD3es",
                    "https://www.youtube.com/watch?v=egp6K_IzzD4",
                    "https://www.youtube.com/watch?v=GMbRgM1tpMc",
                    "https://www.youtube.com/watch?v=uLmT4xLnAP8",
                    "https://www.youtube.com/watch?v=YZcpHSGxzgw"
                ]
            ),
            Raag(
                name: "Khat",
                time: .t09_12,
                thaat: .asavari,
                aroh: "R - 'n - S - (m)g, m - P, (n)d - n - S'",
                avroh: "R' - S' - n - D - P, (n)m - P - (m)g - m - R - S",
                pakad: "R - 'n - S (m)g, m - P, (n)d - (n)D - n - P, S' - n - D - P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=SaE3gcV3l1o",
                    "https://www.youtube.com/watch?v=vnDED8Isc3k",
                    "https://www.youtube.com/watch?v=iWVsGuwDuHQ"
                ]
            ),
            Raag(
                name: "Khokhar",
                time: .t09_12,
                thaat: .khamaj,
                aroh: "S - R - P - m,  n - D - P, m - P - D - S'",
                avroh: "S' - n - D - P,  D - n - P, m - G - R - g - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=ARsvUHmpIlQ",
                    "https://www.youtube.com/watch?v=F6FxH_lf9GU",
                    "https://www.youtube.com/watch?v=XYWRymdhSGE"
                ]
            ),
            Raag(
                name: "Kirwani",
                time: .monsoon,
                thaat: nil,
                aroh: "S - R - g - m - P - d - N - S'",
                avroh: "S' - N - d - P - m - g - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=YEGFhNyn_9s",
                    "https://www.youtube.com/watch?v=QNY5M4tMDqk",
                    "https://www.youtube.com/watch?v=1xa_tAahpSk",
                    "https://www.youtube.com/watch?v=v61XyjjYM5U",
                    "https://www.youtube.com/watch?v=KpHGjO_Kqq0",
                    "https://www.youtube.com/watch?v=u2usJjqLg4M",
                    "https://www.youtube.com/watch?v=_k02LOP7Qn4",
                    "https://www.youtube.com/watch?v=glOcJhqkZfg",
                    "https://www.youtube.com/watch?v=EiC5P65BSWI",
                    "https://www.youtube.com/watch?v=xrhtPK5-RSM"
                ]
            ),
            Raag(
                name: "Kohal",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - R - g, P - N - S'",
                avroh: "S' - n - P, g - R - g - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Kolahal",
                time: .t06_09,
                thaat: .bilawal,
                aroh: "S - R - G - m - P - N - D - N - S'",
                avroh: "S' - N - P - D - m - G - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Kolhaas",
                time: .t15_18,
                thaat: .kafi,
                aroh: "S - R - g - P - D - n - S'",
                avroh: "S' - n - D - P - g - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Koumari",
                time: .t18_21,
                thaat: nil,
                aroh: "S - r - G - M - P - N - S'",
                avroh: "S' - N - P - M - G - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=RMu0i4JxYiY",
                    "https://www.youtube.com/watch?v=FZD3pVmxbsI"
                ]
            ),
            Raag(
                name: "Kripavati",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - g - P - d - S'",
                avroh: "S' - n - d - P - d - m - g - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Kumudaki",
                time: .t21_24,
                thaat: .kalyan,
                aroh: "S - R - G - M - N - S'",
                avroh: "S' - N - M - G - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Lajwanti",
                time: .t00_03,
                thaat: .bilawal,
                aroh: "'N - S, G - R, m - G, P - D - m - P - S'",
                avroh: "S' - P, D - m, P - G, m - P - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=-XUTJ38CF5c"
                ]
            ),
            Raag(
                name: "Lalit",
                time: .t03_06,
                thaat: nil,
                aroh: "'N - r - G - m - M - m, - G - M - d - N - S'",
                avroh: "S' - N - d - M - m - G - r - S",
                pakad: "'N - r - G - m -  d - m - d - M - m, G - M - G - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=QPkFff4DqKA",
                    "https://www.youtube.com/watch?v=RinfB6uaNvo",
                    "https://www.youtube.com/watch?v=3mKdHk7lRT0",
                    "https://www.youtube.com/watch?v=hWjMw43LDNw",
                    "https://www.youtube.com/watch?v=XYXB9m5kdbU",
                    "https://www.youtube.com/watch?v=nB8s71VxrQI",
                    "https://www.youtube.com/watch?v=RPEiqZRf-Xk"
                ]
            ),
            Raag(
                name: "Lalitavari",
                time: .t18_21,
                thaat: .marwa,
                aroh: "N - r - G - m, M - m - G, M - D - N - S'",
                avroh: "S' - N - R' - N - D, M - D - M - m - G, r - G - M - G - r - S",
                pakad: "m - M - m - G , M - m - m - r - G, N - D - M - m - g - r - G",
                youtubeLinks: []
            ),
            Raag(
                name: "Lalitkali",
                time: .t03_06,
                thaat: .bhairav,
                aroh: "'N - r - G - m, M - m, G - P, d - n - d - P, M - d, S'",
                avroh: "r' - N - d - P, G - M - m - G, M - G - r - S'",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Lalit Mangal",
                time: .t06_09,
                thaat: nil,
                aroh: "S - m - P - D - N - S'",
                avroh: "r' - N - d - P - M - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Lalit Pancham",
                time: .t06_09,
                thaat: .marwa,
                aroh: "N - r - G - m, M - G, M - d - N - S'",
                avroh: "S' - N - d, M - d - M - m - G, P - G - r - S",
                pakad: "M - d - N, d - P, d - m, P - G, r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=nIUGuy3ll1E",
                    "https://www.youtube.com/watch?v=7I_SOh2ldfM",
                    "https://www.youtube.com/watch?v=FljffutuDJY",
                    "https://www.youtube.com/watch?v=_0bdVpWBS9s",
                    "https://www.youtube.com/watch?v=Hb7upBiBtoM",
                    "https://www.youtube.com/watch?v=_6qJQouNCpY",
                    "https://www.youtube.com/watch?v=_C_-ixz0h04",
                    "https://www.youtube.com/watch?v=_C_-ixz0h04",
                    "https://www.youtube.com/watch?v=ov4Oa-JiaAg",
                    "https://www.youtube.com/watch?v=ozEblVhG_pU",
                    "https://www.youtube.com/watch?v=B-8ANKxrVfs",
                    "https://www.youtube.com/watch?v=1BMfNgziNdE",
                    "https://www.youtube.com/watch?v=XykPP_zY57U"
                ]
            ),
            Raag(
                name: "Lankeshree",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - R - G - m, D - P, D - n - S'",
                avroh: "R' - N - S' - n - D - P - m - G - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=8yuyDq0Ljjw"
                ]
            ),
            Raag(
                name: "Latika",
                time: .t15_18,
                thaat: nil,
                aroh: "S - R - G, P - d - N - S'",
                avroh: "S' - N - d - P - G - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=gSN-VrfolfA"
                ]
            ),
            Raag(
                name: "Maand",
                time: .t18_21,
                thaat: .bilawal,
                aroh: "S - G - m - P - D - N - S'",
                avroh: "S' - N - D - P - D, P - N - D - P, G - m - G - R - S",
                pakad: "G - m - P - D - N - S'",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=AFDfsoAdEoI",
                    "https://www.youtube.com/watch?v=2NkgmZJr11A",
                    "https://www.youtube.com/watch?v=jvMt1tTgN5E",
                    "https://www.youtube.com/watch?v=YjmAX7rqpNY",
                    "https://www.youtube.com/watch?v=AyrojVMl-VU"
                ]
            ),
            Raag(
                name: "Madhukauns",
                time: .t21_24,
                thaat: nil,
                aroh: "S - g - M - P - n - S'",
                avroh: "S' - n - P - M - g - S",
                pakad: "g - M - P - n - S - n - P - M - g - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=fkwesuzrOfg",
                    "https://www.youtube.com/watch?v=6Zy-ZFYn7R0",
                    "https://www.youtube.com/watch?v=pgzurdUFvgY",
                    "https://www.youtube.com/watch?v=-BJyUaPN2Cc",
                    "https://www.youtube.com/watch?v=_i5WYab1izk",
                    "https://www.youtube.com/watch?v=fjhyByu7zdw",
                    "https://www.youtube.com/watch?v=fNOczUY022U",
                    "https://www.youtube.com/watch?v=rlFNYhNNAE0"
                ]
            ),
            Raag(
                name: "Madhuranjani",
                time: .t21_24,
                thaat: .kafi,
                aroh: "'N - S - g - m - P - N - S'",
                avroh: "S' - N - P - m - g - R - S",
                pakad: "g - m - P - N - S' - N - P - m - g - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=L8Y2MMZmT0U",
                    "https://www.youtube.com/watch?v=_8zxusv04OM",
                    "https://www.youtube.com/watch?v=BuekRViodJc",
                    "https://www.youtube.com/watch?v=IxT2XwJRNL0"
                ]
            ),
            Raag(
                name: "Madhuri",
                time: .t00_03,
                thaat: .khamaj,
                aroh: "S - g, P - N - S'",
                avroh: "S' - n, P - G, P - m, 'n - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Madhuvanti",
                time: .t12_15,
                thaat: .todi,
                aroh: "'N - S - g - M - P - N - S'",
                avroh: "S' - N - D - P - M - g - R - S",
                pakad: "D - (P)M - P - g - M - g - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=16580uFJmr8",
                    "https://www.youtube.com/watch?v=NVk_NPPfGjM",
                    "https://www.youtube.com/watch?v=P3tHZ_o4sJM",
                    "https://www.youtube.com/watch?v=ufZF73zEcyg",
                    "https://www.youtube.com/watch?v=uOynhQRHzGI",
                    "https://www.youtube.com/watch?v=JNEuBKTMGgM",
                    "https://www.youtube.com/watch?v=wqSxhkKS3x0",
                    "https://www.youtube.com/watch?v=q4ENJhvSbjM",
                    "https://www.youtube.com/watch?v=za79gMy8-ew",
                    "https://www.youtube.com/watch?v=mFcNSNB8NbM"
                ]
            ),
            Raag(
                name: "Malagunji",
                time: .t09_12,
                thaat: .kafi,
                aroh: "S - R - G - m - D - N - S'",
                avroh: "S' - n - D - P - m - G, m - g - R - S",
                pakad: "G - m - g - R - S - 'N - S - 'D - 'n - S - G - m",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=GAUXqsaLYd0",
                    "https://www.youtube.com/watch?v=lPsrKoyXusU",
                    "https://www.youtube.com/watch?v=SNe-wJJZliw"
                ]
            ),
            Raag(
                name: "Malani",
                time: .t06_09,
                thaat: .bhairavi,
                aroh: "S - r - g - m - P - S'",
                avroh: "S' - n - d - m - g - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=aL395XO_VCs"
                ]
            ),
            Raag(
                name: "Malarani",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S, R - M - P, N - S'",
                avroh: "N - S' - D - P, R - M - P, G - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Malashree",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "S - G - P - N - S",
                avroh: "S - (N)P - (M)(G), P - G - S",
                pakad: "S - (N)P - M(G), P - G - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=SzY5WLUIcQU",
                    "https://www.youtube.com/watch?v=qWYoyOCvbdo",
                    "https://www.youtube.com/watch?v=TXSb_OIMNQg",
                    "https://www.youtube.com/watch?v=vPeoNflMSLw"
                ]
            ),
            Raag(
                name: "Malavi",
                time: .t18_21,
                thaat: nil,
                aroh: "S - r - G - M - P, M - D - S'",
                avroh: "S' - N - P - M, G - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=c6YaQGH97fc"
                ]
            ),
            Raag(
                name: "Malayamarutam",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - G - P - D - n - S'",
                avroh: "S' - n - D - P - G - r - S",
                pakad: "G - P - D - n - D - P - G - r, 'n - r - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Malhar, Charju Ki",
                time: .monsoon,
                thaat: .kafi,
                aroh: "S - m - R - P, n - N - S'",
                avroh: "S' - P - D - P, (m)g - (m)g - m - P - m - m\\R - S",
                pakad: "S - N - D - P - G - R",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=iQUSk2_8pV8"
                ]
            ),
            Raag(
                name: "Malhar, Des",
                time: .t06_09,
                thaat: .kafi,
                aroh: "S - R - m - P - N - S'",
                avroh: "S' - D - n - P - m - P - (m)g - (m)g - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=LmkxFO6dXh8"
                ]
            ),
            Raag(
                name: "Malhar, Dhulia",
                time: .monsoon,
                thaat: .kafi,
                aroh: "S - (m)R - P, n - D - N - S'",
                avroh: "S' - n - D - P, m - R, (m)g - (m)g - m - P - m - m\\R - S",
                pakad: "m - R - P, n - D - P, m - R, (m)g - (m)g - m - P - m - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Tp6zMaBvQZY",
                    "https://www.youtube.com/watch?v=74xSA6psB9g",
                    "https://www.youtube.com/watch?v=BFgiXoYMx3Y",
                    "https://www.youtube.com/watch?v=Ca3p2SQXm18",
                    "https://www.youtube.com/watch?v=KztJBVEU7Hk"
                ]
            ),
            Raag(
                name: "Malhar, Gaud",
                time: .monsoon,
                thaat: .khamaj,
                aroh: "S - R - G - m - R - P, m - P - n - D - N - S'",
                avroh: "S' - D - n - P - m - P - m - R - G - R - S",
                pakad: "S - R - G - m, m - P - n - D - N - P - m, G - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=xrhca9LB880",
                    "https://www.youtube.com/watch?v=lDo5UT_7Uk0",
                    "https://www.youtube.com/watch?v=wlkIGgCXqlE",
                    "https://www.youtube.com/watch?v=U11Dc_ooaXg",
                    "https://www.youtube.com/watch?v=uOvTwPbeeIQ",
                    "https://www.youtube.com/watch?v=EBzIgkJfMJo",
                    "https://www.youtube.com/watch?v=5UfrdmQn_cI",
                    "https://www.youtube.com/watch?v=vxPUsJPzg0k",
                    "https://www.youtube.com/watch?v=-M-sQvlZE_g"
                ]
            ),
            Raag(
                name: "Malhar, Jayant",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - (m)R - P - n - D - N - S'",
                avroh: "S' - (S')D - n - m - P, (D)P - m - G - R, g - R - S - 'N - S - (S)'D - 'n - R - S",
                pakad: "P - g - m - R - S - 'N - 'D - 'n - R",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Bf-ssawGk8U",
                    "https://www.youtube.com/watch?v=jhMihql7CAo",
                    "https://www.youtube.com/watch?v=fsBKPOdCvcA",
                    "https://www.youtube.com/watch?v=Y6gJ4R18338"
                ]
            ),
            Raag(
                name: "Malhar, Meera",
                time: .monsoon,
                thaat: .asavari,
                aroh: "S - (m)R - P, n - D - N - S'",
                avroh: "S' - R' - (n)d - (n)d - n - P, m - P, (m)g - (m)g - m - R - S",
                pakad: "P - n - D, N - S', R' - (n)d - (n)d - n - P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=TfukRA5nerU",
                    "https://www.youtube.com/watch?v=U58Rgpkpjxk"
                ]
            ),
            Raag(
                name: "Malhar, Megh",
                time: .monsoon,
                thaat: .kafi,
                aroh: "S, m - R, m - P, n - N - S'",
                avroh: "S' - n - P, m - R, m - 'N - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=wsq27ntWHnQ"
                ]
            ),
            Raag(
                name: "Malhar, Miyan",
                time: .monsoon,
                thaat: .kafi,
                aroh: "S - m - R - P, - m - P - n - D - N - S'",
                avroh: "S' - D - n - P - m - P - (m)g~ - m - R - S",
                pakad: "R - P - g - m - R - S, 'n - 'D - 'N - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=GhJAl6y-js0",
                    "https://www.youtube.com/watch?v=gLxsm70R-J8",
                    "https://www.youtube.com/watch?v=wfigGhyl2G4",
                    "https://www.youtube.com/watch?v=er3jD_LiGJc",
                    "https://www.youtube.com/watch?v=rN35IK1R_uE",
                    "https://www.youtube.com/watch?v=KFYqBwGEctM",
                    "https://www.youtube.com/watch?v=HZvxSXfvNOs",
                    "https://www.youtube.com/watch?v=ySaUOxo1esU",
                    "https://www.youtube.com/watch?v=3Xu5qPUUoRk",
                    "https://www.youtube.com/watch?v=WjdY4adIEZo",
                    "https://www.youtube.com/watch?v=VOG5MHBAmW8",
                    "https://www.youtube.com/watch?v=er7h1QX7zdg",
                    "https://www.youtube.com/watch?v=d4e4qrHB8fc"
                ]
            ),
            Raag(
                name: "Malhar, Nanak",
                time: .monsoon,
                thaat: .kafi,
                aroh: "'N - S - R - g - m - P - n - N - S'",
                avroh: "S' - n - P - m - g - R - g - m - g - R - S",
                pakad: "R - g - m - g - R - S - 'n - P - m - P - 'n - 'N - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Malhar, Nat",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - (G)R - G - m, m - R - P, n - D - N - S'",
                avroh: "S' - D - n - P - m, G - R - R - G - G - m - R - S",
                pakad: "S - (G)R - G - m, m - R - P, D - n - P, m - P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=63KQeURf9Mo",
                    "https://www.youtube.com/watch?v=o_R-P-Uw99I",
                    "https://www.youtube.com/watch?v=KKGz1yYqKDY",
                    "https://www.youtube.com/watch?v=jcNgeZk3Ki4"
                ]
            ),
            Raag(
                name: "Malhar, Ramdasi",
                time: .monsoon,
                thaat: .kafi,
                aroh: "S - R - P - G - m - P - n - N - S'",
                avroh: "S' - D - n - m - P - D - P - m - G - m - P - (m)g(m)g - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Th5eePx4yjs",
                    "https://www.youtube.com/watch?v=eF8bslWZXB4",
                    "https://www.youtube.com/watch?v=4SrJJIa7Vxo",
                    "https://www.youtube.com/watch?v=j10uPUymavc"
                ]
            ),
            Raag(
                name: "Malhar, Sur",
                time: .monsoon,
                thaat: .kafi,
                aroh: "S - R - m - P - n - D - m - P - N - S'",
                avroh: "S' - n - D - m - P - n - D - P - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=d2oPNmsBZyo",
                    "https://www.youtube.com/watch?v=icF1qI1Ar4c"
                ]
            ),
            Raag(
                name: "Maligaura",
                time: .t18_21,
                thaat: nil,
                aroh: "S - r - 'N - 'd - 'N, r - G, M - G, M - P - N - S'",
                avroh: "S' - r' - N, d - P, N - (d)M, G, M - 'N - r - S",
                pakad: "S - r - 'N - 'd 'N, P d - M - G, M - G - r - G",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=yGse62wShDI"
                ]
            ),
            Raag(
                name: "Malin",
                time: .t18_21,
                thaat: .marwa,
                aroh: "'N - S - G - P - N - D - S'",
                avroh: "S' - N - D - P - G - P - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Malkauns",
                time: .t00_03,
                thaat: .bhairavi,
                aroh: "S - g - m - d - n - S'",
                avroh: "S' - n - d - m - g - S",
                pakad: "G - m - g - R - S - 'N - S - 'D - 'n - S - G - m",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=kMZh53nejmI",
                    "https://www.youtube.com/watch?v=MM7BiCkVY14",
                    "https://www.youtube.com/watch?v=5g7lp6FmpHw",
                    "https://www.youtube.com/watch?v=sVY9BXqs8cQ",
                    "https://www.youtube.com/watch?v=u8cvK7S83Go",
                    "https://www.youtube.com/watch?v=QoNHIWB2L14",
                    "https://www.youtube.com/watch?v=RG3wBRjoPos",
                    "https://www.youtube.com/watch?v=UusGQ7QG2r8",
                    "https://www.youtube.com/watch?v=fNOczUY022U",
                    "https://www.youtube.com/watch?v=iydonyJqVks",
                    "https://www.youtube.com/watch?v=UXiYq9LY9po",
                    "https://www.youtube.com/watch?v=g8Su1mShMKc",
                    "https://www.youtube.com/watch?v=tzD9OxAHtzU"
                ]
            ),
            Raag(
                name: "Malkauns, Pancham",
                time: .t00_03,
                thaat: .bhairavi,
                aroh: "S - g - m - d - n - S'",
                avroh: "S' - n - d - n - d - m - P - g - m - g - S",
                pakad: "d - n - d - m - P - g - m - g - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=L8nRps5RbSE",
                    "https://www.youtube.com/watch?v=N8LkfjptSU8",
                    "https://www.youtube.com/watch?v=2IvV5Z0wFR4",
                    "https://www.youtube.com/watch?v=RG3wBRjoPos"
                ]
            ),
            Raag(
                name: "Malkauns, Sampoorna",
                time: .t00_03,
                thaat: .bhairavi,
                aroh: "S - (m)g - m - (n)d - n - S'",
                avroh: "S' - n - (n)d - m - (m)g, m - P - m - g, (S)'n - R - S",
                pakad: "S - (m)g - S - R - S, m - d - n - d - m - g, m - P - m - g - S - R - S, S' - n - d, m - P - m - g, S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=7JF9EBTpni4",
                    "https://www.youtube.com/watch?v=ypHbUtREboE",
                    "https://www.youtube.com/watch?v=8JeEYkDOzjQ",
                    "https://www.youtube.com/watch?v=9_4A0rAqSMc",
                    "https://www.youtube.com/watch?v=EU-QG-s0q5Q",
                    "https://www.youtube.com/watch?v=yBwltMOuzdk"
                ]
            ),
            Raag(
                name: "Manjiri",
                time: .t00_03,
                thaat: nil,
                aroh: "S - G - m - P - d - N - S'",
                avroh: "S' - N - d - P - M - G - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=cyfr1d7Jjrg"
                ]
            ),
            Raag(
                name: "Manjiri, Hauns",
                time: .t06_09,
                thaat: .kafi,
                aroh: "S, R - m - P - D, n - S'",
                avroh: "S' - D - P, m - P - D - P - m, R - 'n - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Manjiri, Pat",
                time: .t12_15,
                thaat: .kafi,
                aroh: "S - R - G - m - P - D - N - S'",
                avroh: "S' - n - D - P, m - g - R = S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=-r59F1LIRIE"
                ]
            ),
            Raag(
                name: "Manjiri, Rudra",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - G - m - P - n - d - n - D - P - S'",
                avroh: "S' - R' - n - d - P - m - P - g - R - g - m - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=LPba6OtYJqs",
                    "https://www.youtube.com/watch?v=Z-0-jlAs_Kw"
                ]
            ),
            Raag(
                name: "Manohar",
                time: .t18_21,
                thaat: nil,
                aroh: "S - r - G - M - d - S'",
                avroh: "S' - r' - N - d - P - G - M - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Manohari, Amba",
                time: .t09_12,
                thaat: .kafi,
                aroh: "S - R - g - m - D - N - S'",
                avroh: "S' - N - D - m - g - R - S",
                pakad: "m - g - R - 'N - S - 'D - 'N - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Nt_1br2Ocx4",
                    "https://www.youtube.com/watch?v=khwByiYDNfQ"
                ]
            ),
            Raag(
                name: "Manohari, Kamal",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - G - m - P - d - N - S'",
                avroh: "S' - N - d - P - m - G - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Maru",
                time: .t15_18,
                thaat: nil,
                aroh: "S - r - G - m - M - P - d - N - S'",
                avroh: "S' - N - d - P - M - m - G - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Maru Bihag",
                time: .t15_18,
                thaat: .kalyan,
                aroh: "N - S - G - M - P - m - G, M - P - N - S'",
                avroh: "S' - N - D - P - M - G, M - G - R - S",
                pakad: "P - G - M - G - R - S, S - m - G - S - G - M - P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=-tWOowJnZKQ",
                    "https://www.youtube.com/watch?v=jDqWirM7qM8",
                    "https://www.youtube.com/watch?v=7Oaa8pSwdlY",
                    "https://www.youtube.com/watch?v=HG9anx4FRqw",
                    "https://www.youtube.com/watch?v=oFX29KT02x8",
                    "https://www.youtube.com/watch?v=6fWlvknCr40",
                    "https://www.youtube.com/watch?v=v2_tBibDMRQ",
                    "https://www.youtube.com/watch?v=-2SGVs0v_38",
                    "https://www.youtube.com/watch?v=qPtyo0y35RE",
                    "https://www.youtube.com/watch?v=vxTlRP3LLBg",
                    "https://www.youtube.com/watch?v=HkddE5Q5na0",
                    "https://www.youtube.com/watch?v=g0fFWa5FNzE",
                    "https://www.youtube.com/watch?v=yK3Jt29K6fI"
                ]
            ),
            Raag(
                name: "Marwa",
                time: .t15_18,
                thaat: .marwa,
                aroh: "'N - r - G - M - D - N - D - S'",
                avroh: "S' - N - D - M - G - r - S",
                pakad: "D - M - G - r - G - M - G - r - 'N - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=l9VP_SBx5e0",
                    "https://www.youtube.com/watch?v=T6qjjJBFO0M",
                    "https://www.youtube.com/watch?v=1cfOHbcnY3g",
                    "https://www.youtube.com/watch?v=Kq9IgAG1d4M",
                    "https://www.youtube.com/watch?v=k7wEa1NnJ7s",
                    "https://www.youtube.com/watch?v=06nQKGsnwHo"
                ]
            ),
            Raag(
                name: "Megh",
                time: .monsoon,
                thaat: .kafi,
                aroh: "S - m - R~ - P - m - P - n - S'",
                avroh: "S' - n - P - m - R~ - S",
                pakad: "R - R - S - 'n - S - m - R - p - m - R - n - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=_lNuF4IsIqY",
                    "https://www.youtube.com/watch?v=uqgf4SY-UlA",
                    "https://www.youtube.com/watch?v=ikLFTAfWD7o",
                    "https://www.youtube.com/watch?v=mCehv-gIDXc",
                    "https://www.youtube.com/watch?v=DCXrfBhf1dA"
                ]
            ),
            Raag(
                name: "Mevada",
                time: .t03_06,
                thaat: .bilawal,
                aroh: "S - R - G - m - P - D - N - S'",
                avroh: "S - N - D - P - m - G - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Mohini, Ahi",
                time: .t21_24,
                thaat: .asavari,
                aroh: "S - r - G - m - P - D - n - S'",
                avroh: "S' - n - d - P - m - g - R - S",
                pakad: "S, R - G  - m, P - d, P - m, g - R - g - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Mohini, Chitta",
                time: .t12_15,
                thaat: .bilawal,
                aroh: "S, R - G - m - P, D - N - S'",
                avroh: "S', N - P, m - R, S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=aP8UUYV5COs",
                    "https://www.youtube.com/watch?v=z_yeUMo0WNM"
                ]
            ),
            Raag(
                name: "Motaki",
                time: .t18_21,
                thaat: .bhairavi,
                aroh: "'n - S - g - m - P - D - n - S'",
                avroh: "S' - d - n - P - D - g - m - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=IHBNm6LXYmU",
                    "https://www.youtube.com/watch?v=_hX09Hzz1lI"
                ]
            ),
            Raag(
                name: "Multani",
                time: .t15_18,
                thaat: .todi,
                aroh: "'N - S - g - M - P - N - S'",
                avroh: "S' - N - d - P - M - g - r - S",
                pakad: "'N - S - g - M - P, g - M - g - (R) - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=3gFvdRF32Z0",
                    "https://www.youtube.com/watch?v=ira7tTr3VOo",
                    "https://www.youtube.com/watch?v=5tLMGBIeb1o",
                    "https://www.youtube.com/watch?v=mQYHymKb1QE",
                    "https://www.youtube.com/watch?v=M2dIF09soQo",
                    "https://www.youtube.com/watch?v=mJPe2jyWoSc",
                    "https://www.youtube.com/watch?v=bv6Q9G9w0VA",
                    "https://www.youtube.com/watch?v=4t1KgJ3nNSA",
                    "https://www.youtube.com/watch?v=cmbDCv3SFC4",
                    "https://www.youtube.com/watch?v=cIwkPa8Tulw",
                    "https://www.youtube.com/watch?v=XQ08AUh7MU0",
                    "https://www.youtube.com/watch?v=ojMVfT9mxoI",
                    "https://www.youtube.com/watch?v=DX-fSIW7zdI",
                    "https://www.youtube.com/watch?v=kjgRHd6FaAo",
                    "https://www.youtube.com/watch?v=7vMsflZQVzI",
                    "https://www.youtube.com/watch?v=f5JARal8cL4",
                    "https://www.youtube.com/watch?v=YV4YRoxAXF0",
                    "https://www.youtube.com/watch?v=hGeHxIoxDVU",
                    "https://www.youtube.com/watch?v=0D4rxdOI5TM",
                    "https://www.youtube.com/watch?v=Vv9dD1_jxOk",
                    "https://www.youtube.com/watch?v=K-6KmDzklQ4",
                    "https://www.youtube.com/watch?v=43-eSCU4tAo",
                    "https://www.youtube.com/watch?v=aFfOJf-mfOY",
                    "https://www.youtube.com/watch?v=wzk33WGVOUs",
                    "https://www.youtube.com/watch?v=mvl0pOjzHXk"
                ]
            ),
            Raag(
                name: "Naat Kuranjika",
                time: .t09_12,
                thaat: .khamaj,
                aroh: "'n - S, G - m, D - n - S'",
                avroh: "R - n - S' - D - m, G - m - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Nand",
                time: .t21_24,
                thaat: .kalyan,
                aroh: "S - G - m - P - D - N - P - D - M - P - S'",
                avroh: "S' - N - D - P - M - P, D - P - G - m - P - R - S",
                pakad: "G - m - D - P - R - S, S - G - m",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=YmE-WoIzWQ0",
                    "https://www.youtube.com/watch?v=BN_9MctDOpo",
                    "https://www.youtube.com/watch?v=5aBoKGXu7DM",
                    "https://www.youtube.com/watch?v=NVTS6jjDEls",
                    "https://www.youtube.com/watch?v=RavhEVktGAM",
                    "https://www.youtube.com/watch?v=aw75vXhX9Yc",
                    "https://www.youtube.com/watch?v=ltWA7VWv8Co",
                    "https://www.youtube.com/watch?v=srcYtumV7eo",
                    "https://www.youtube.com/watch?v=yHwkF7WYyPI",
                    "https://www.youtube.com/watch?v=lzT81VgdVNM"
                ]
            ),
            Raag(
                name: "Narayani",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - R - m - P - D - n - D - S'",
                avroh: "S' - n - D - P - m - R - S",
                pakad: "R - m - P - n - D - P",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=baHnLtcxgXk",
                    "https://www.youtube.com/watch?v=jCOr3tiKWRs"
                ]
            ),
            Raag(
                name: "Nat, Shuddha",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "S - R - G - m - P - D - N - S'",
                avroh: "S' - N - P - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=tldZjujcG28",
                    "https://www.youtube.com/watch?v=rwMZDemuNkM",
                    "https://www.youtube.com/watch?v=8b2e68awNsw",
                    "https://www.youtube.com/watch?v=8b2e68awNsw",
                    "https://www.youtube.com/watch?v=tXA2fHbiHxg",
                    "https://www.youtube.com/watch?v=Ci6FhZqCcWk"
                ]
            ),
            Raag(
                name: "Nilambari",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - R - m - P - D - S'",
                avroh: "R' - n - D - P - m - G - g - R - 'N - S - 'D - 'n - g - R",
                pakad: "R - m - P - D\\m - G - g - R - g - R - g - R - S' - 'N -'N - S - 'D - 'n - g - R",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=M9WBvVTv6tM",
                    "https://www.youtube.com/watch?v=AI3pCqRJTs4"
                ]
            ),
            Raag(
                name: "Nupur",
                time: .t00_03,
                thaat: .khamaj,
                aroh: "S - R - P, n - N - S'",
                avroh: "S' - n - P, G - m, R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Pahadi",
                time: .t18_21,
                thaat: .bilawal,
                aroh: "'P - 'D - S - R - G - P - D - S'",
                avroh: "S' - N - D - P - m - G - R - s - 'n - 'd - 'P - 'd - S",
                pakad: "S - 'D - 'P - 'D - 'm - 'G - 'P - 'D - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=ijVaQoJDy5w",
                    "https://www.youtube.com/watch?v=tGhAyCLF6mw",
                    "https://www.youtube.com/watch?v=Ibec5j0MPoY",
                    "https://www.youtube.com/watch?v=lyDqhEtpGqc",
                    "https://www.youtube.com/watch?v=gh7WPNRgPHA",
                    "https://www.youtube.com/watch?v=CCYPeoam6gE",
                    "https://www.youtube.com/watch?v=I8UrKhurkuk",
                    "https://www.youtube.com/watch?v=n81w_Ceacm0",
                    "https://www.youtube.com/watch?v=VfaqM5wfCY0",
                    "https://www.youtube.com/watch?v=MIjSGIIO9gQ",
                    "https://www.youtube.com/watch?v=HhmNH0hkalM",
                    "https://www.youtube.com/watch?v=2Dh-X9oCHIY",
                    "https://www.youtube.com/watch?v=6Vx4jU2qaTY",
                    "https://www.youtube.com/watch?v=AoAepVhmRoQ",
                    "https://www.youtube.com/watch?v=w2znxcagNd8"
                ]
            ),
            Raag(
                name: "Pancham",
                time: .t18_21,
                thaat: .marwa,
                aroh: "S - m - G - M - D - N - D - N - M - D - S'",
                avroh: "S' - N - D - M - D - M - G - r - S",
                pakad: "M - D - S' - N - D - M - D - M - G - r - S - S - m - G - M - D - N - D - N - M - D",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Jn-zdJUO2UY",
                    "https://www.youtube.com/watch?v=6GmgLWCOtVo",
                    "https://www.youtube.com/watch?v=zdaQlLqfrz8",
                    "https://www.youtube.com/watch?v=pI_22TxGffw",
                    "https://www.youtube.com/watch?v=c5HYeotUsk8"
                ]
            ),
            Raag(
                name: "Paraj",
                time: .t00_03,
                thaat: nil,
                aroh: "'N - S - G, M - P - d - N - S'",
                avroh: "S' - N - d - P, M - P - d - P, m - G - r - S",
                pakad: "S' - N - d - P, M - P - d - P, G - m - G, - M - G - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=8liwq4SfdQU",
                    "https://www.youtube.com/watch?v=Gq_KINTZ718",
                    "https://www.youtube.com/watch?v=6mpM4LljRuE",
                    "https://www.youtube.com/watch?v=Vo09WHbRY34",
                    "https://www.youtube.com/watch?v=jXuizslcZQs",
                    "https://www.youtube.com/watch?v=segJr-uouoE"
                ]
            ),
            Raag(
                name: "Patadeep",
                time: .t12_15,
                thaat: .kafi,
                aroh: "'N - S - g - m - P - N - S'",
                avroh: "S' - N - D - P - m - g - R - S",
                pakad: "P - g - m - P - N - D - P - m - d - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=fFdAR6znIlY",
                    "https://www.youtube.com/watch?v=8VZ0TDCAm40",
                    "https://www.youtube.com/watch?v=z6P97WYsAlI",
                    "https://www.youtube.com/watch?v=lp7gAzKvl0M",
                    "https://www.youtube.com/watch?v=wX6Xij0laCo",
                    "https://www.youtube.com/watch?v=HsZwQp4yrLw",
                    "https://www.youtube.com/watch?v=yslOIsStceM"
                ]
            ),
            Raag(
                name: "Patdipaki",
                time: .t12_15,
                thaat: .kafi,
                aroh: "S - G - m - P - N - S'",
                avroh: "S' - N - D - P - m - G - m - P - g - R - S",
                pakad: "P - g - m - g - R - S - 'N - S - G - m - P - G - m - 'N - D - P - m - G - m - g - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=gyh0U8Q9IjA"
                ]
            ),
            Raag(
                name: "Pilu",
                time: .t15_18,
                thaat: .kafi,
                aroh: "'N - S - g - m - P - N - S'",
                avroh: "S' - N - S' - n - D - P - m - G - m - P - (m)g - R - S - N - S",
                pakad: "g - m - d - P - g - S - 'N - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=B6poexcko3U",
                    "https://www.youtube.com/watch?v=lbVTDpRQjqE",
                    "https://www.youtube.com/watch?v=ntp4F9NvXlM",
                    "https://www.youtube.com/watch?v=l4U_z5az_q4",
                    "https://www.youtube.com/watch?v=pj8mWhewXdQ",
                    "https://www.youtube.com/watch?v=Ecn7ghBB6LY",
                    "https://www.youtube.com/watch?v=MGao3xBqQgc",
                    "https://www.youtube.com/watch?v=eW9XP57bMEg",
                    "https://www.youtube.com/watch?v=zQE2QWs4Mqw",
                    "https://www.youtube.com/watch?v=GmCn31pq8i0"
                ]
            ),
            Raag(
                name: "Poorvi",
                time: .t15_18,
                thaat: nil,
                aroh: "'N - r - G - M - d - N - S'",
                avroh: "S' - N - d - P - M - G - m - r - G, M - G - r - S",
                pakad: "P - d - P - M - G - m - r - G, M - G - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=9KzPmlfmFSU",
                    "https://www.youtube.com/watch?v=fI4A3angE14",
                    "https://www.youtube.com/watch?v=6ckpZzDpPlM",
                    "https://www.youtube.com/watch?v=dniWUrF4zTQ",
                    "https://www.youtube.com/watch?v=q3eVKHgDtUQ",
                    "https://www.youtube.com/watch?v=nISdqksNxFY",
                    "https://www.youtube.com/watch?v=KLJxJMK9QkI",
                    "https://www.youtube.com/watch?v=PkUfCoTe-aM"
                ]
            ),
            Raag(
                name: "Prabha, Kumud",
                time: .t15_18,
                thaat: nil,
                aroh: "S - r - G - d - N - S'",
                avroh: "S' - P - M - G - 'N - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Prabhavati",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - G - P - d - N - S'",
                avroh: "S' - N - d - P - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Puriya",
                time: .t15_18,
                thaat: .marwa,
                aroh: "'N - r - G - M - D - N - r' - S'",
                avroh: "r' - N - D - M - G, M - G - r - S",
                pakad: "G - N - r' - S - M - G - r - G - 'N - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Hs3ed3gU8T8",
                    "https://www.youtube.com/watch?v=Rl1lyI9Anbk"
                ]
            ),
            Raag(
                name: "Pushp",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - R - g - m - g - P - D - S'",
                avroh: "S' - D - P, g - m - g, R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=MEMjdGRRLS8"
                ]
            ),
            Raag(
                name: "Rageshree",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "'n - S - G - m - D - n - S'",
                avroh: "S' - n - D - m - G - R - S",
                pakad: "G - m - D - n - S, S - n - D - m - G - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=JecTTU2kb0M",
                    "https://www.youtube.com/watch?v=7Q8AmC2WOVA",
                    "https://www.youtube.com/watch?v=YOOAFjhZA6k",
                    "https://www.youtube.com/watch?v=CCMVQjaPWbg",
                    "https://www.youtube.com/watch?v=CIoeDMmHYII",
                    "https://www.youtube.com/watch?v=gfCpFMsKGMA",
                    "https://www.youtube.com/watch?v=3BMVGYz9dDw",
                    "https://www.youtube.com/watch?v=-uxy7akTw5w",
                    "https://www.youtube.com/watch?v=QONpeSNNF60",
                    "https://www.youtube.com/watch?v=otPJPEY1oqk",
                    "https://www.youtube.com/watch?v=4n7YY1m32Xs",
                    "https://www.youtube.com/watch?v=Xybegg8IBUg",
                    "https://www.youtube.com/watch?v=SM9eM_Hq7nQ",
                    "https://www.youtube.com/watch?v=IQSCZg4wIBQ"
                ]
            ),
            Raag(
                name: "Rajeshwari",
                time: .t18_21,
                thaat: nil,
                aroh: "S - g - m - D - N - S'",
                avroh: "S' - N - D - m - g - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=J_P2mK6C6g0",
                    "https://www.youtube.com/watch?v=Dk5YV28DdII",
                    "https://www.youtube.com/watch?v=kvYpDcCPsMo"
                ]
            ),
            Raag(
                name: "Rakta Hauns",
                time: .t09_12,
                thaat: .kafi,
                aroh: "S - R - m - P - D - S'",
                avroh: "S' - n - P - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=PiRbVgzdGcQ"
                ]
            ),
            Raag(
                name: "Ramkali",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - G - m - P, G - m - d - N - S'",
                avroh: "S' - N - d - P - M - P, d - (N)d - P, G - m - r - S",
                pakad: "M - P - d - N - d - P - G - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=pzflx_cFURQ",
                    "https://www.youtube.com/watch?v=QNcN5TkYpdQ",
                    "https://www.youtube.com/watch?v=2y3dOZ01W3w",
                    "https://www.youtube.com/watch?v=XQJJhUTMfqs",
                    "https://www.youtube.com/watch?v=6J7KBEbYWjU",
                    "https://www.youtube.com/watch?v=8Gwx7l8jURE",
                    "https://www.youtube.com/watch?v=9zcHaRWd7hc",
                    "https://www.youtube.com/watch?v=GAdc2pZb38k",
                    "https://www.youtube.com/watch?v=wp7wcDidWPA"
                ]
            ),
            Raag(
                name: "Ranjani, Dev",
                time: .t06_09,
                thaat: .asavari,
                aroh: "S - m, m - P - (n)d - (n)d - S'",
                avroh: "S' - (n)d - (n)d - P - d - m, m - S",
                pakad: "S - m - m - P, m - d - d - P - d - m, m - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=NGc74elr4y0",
                    "https://www.youtube.com/watch?v=ilgw0TfaZ-0",
                    "https://www.youtube.com/watch?v=HxOfX7R_uHE"
                ]
            ),
            Raag(
                name: "Ranjani, Gou",
                time: .t21_24,
                thaat: .asavari,
                aroh: "N - S - G - M - P - N - S'",
                avroh: "S' - N - d - P - M - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Ranjani, Jan",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "S, R - G - m - P, N - S'",
                avroh: "S' - D - P - m, R - G - m, P - m - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Ranjani, Kaam",
                time: .t09_12,
                thaat: .todi,
                aroh: "S - r - g - r - M - P - d - N - S'",
                avroh: "S' - N - d - M - g - r - g - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Ranjani, Kamal",
                time: .t06_09,
                thaat: .bilawal,
                aroh: "S - G - P - D - N - S'",
                avroh: "S' - N - D - n - P - m - G - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Ranjani, Kusum",
                time: .t21_24,
                thaat: nil,
                aroh: "S - r - M - P - d - N - S'",
                avroh: "S' - N - d - N - P - M - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Ranjani, Megh",
                time: .t03_06,
                thaat: .bhairav,
                aroh: "'N - r - G, m, N - S'",
                avroh: "r' - S', N - m, G, m - r - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Ranjani, Pushp",
                time: .t00_03,
                thaat: nil,
                aroh: "S - r, G - m, M - P - N - S'",
                avroh: "S' - N - P - m - M - m - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Ranjani, Raag",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - G - m - D - n - D - S'",
                avroh: "R' - S - n - D - P, m - G, m - g - R - 'N - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Ranjani, Ras",
                time: .t00_03,
                thaat: .bilawal,
                aroh: "S - R - m - D - N - S'",
                avroh: "S', N, D, m, D - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=v2dX-_uyba0"
                ]
            ),
            Raag(
                name: "Ranjani, Saraswat",
                time: .t21_24,
                thaat: .kafi,
                aroh: "'N - S, g - M - P - N - S'",
                avroh: "S' - n, D - P, M - g, R - S'",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Ranjani, Shree",
                time: .t00_03,
                thaat: .kafi,
                aroh: "S - g - m - D - n - S'",
                avroh: "S' - n - D - m - g - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=pt-VSxYqL4c"
                ]
            ),
            Raag(
                name: "Ranjani, Yash",
                time: .t00_03,
                thaat: nil,
                aroh: "S - r - M - P - d - S'",
                avroh: "S' - D - P - M - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Ras Chandra",
                time: .t06_09,
                thaat: .bilawal,
                aroh: "S - R - S, G - m - M, M - D - M - S'",
                avroh: "R' - S', D - M - m, G - m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=HhQInAb15Uo"
                ]
            ),
            Raag(
                name: "Ratnadeep",
                time: .t18_21,
                thaat: .marwa,
                aroh: "S - G - M - P - N - S'",
                avroh: "S' - D - P - M - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Ravikosh",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - G - m - D - n - S'",
                avroh: "S' - n - D - m - R - g - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Reva",
                time: .t18_21,
                thaat: nil,
                aroh: "S - r - G, P - d - P - S'",
                avroh: "S' - d - P - G - r - S",
                pakad: "S - r - g, P - d - P - G, S - r - G, r - G",
                youtubeLinks: []
            ),
            Raag(
                name: "Revati",
                time: .t06_09,
                thaat: .kafi,
                aroh: "S, R - m - P, D - m - P, S'",
                avroh: "S' - D - n - P, m - P, m - g - m - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Rupeshwari",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - G - m - D - n - S'",
                avroh: "S' - n - D - m - G - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Saajgiri",
                time: .t18_21,
                thaat: nil,
                aroh: "N - r - G, M - G, M - P - d - P, m - N - D - S'",
                avroh: "S' - N - r' - N - d - P, P - D - G, M - D - G, M - G - r - S",
                pakad: "m - N - D - S', N - r' - N - d - P, P - D - G, M - G - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=3N8M12FmMCU"
                ]
            ),
            Raag(
                name: "Sakh, Bhav",
                time: .t06_09,
                thaat: .bilawal,
                aroh: "S, m - m, D - P - D, S', N - R' - S'",
                avroh: "S' - N - D - N - D - P, G - R, 'N - R - S",
                pakad: "N - D - P - m, G - R, 'N - R - S, m - m",
                youtubeLinks: []
            ),
            Raag(
                name: "Sakh, Dev",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - m -  R -  (P)m - N - P - S'",
                avroh: "S' - n - P - m - P - (m)g - m - R - S",
                pakad: "N - S' - R - G - m - N - P - g - m - R - S, m - N - P - S' - n - P - G - m - P - g - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=hd4mL5s17xg",
                    "https://www.youtube.com/watch?v=7lTGElBj9pQ"
                ]
            ),
            Raag(
                name: "Sakh, Lachchha",
                time: .t06_09,
                thaat: .bilawal,
                aroh: "S - G - R - G - P - m, P - (N)D - N - S'",
                avroh: "S' - D - n - P - m, G - P - m - G - R - S",
                pakad: "P, m - G, m, m - n - D - P, m - G - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=vXmF0fKwJ18",
                    "https://www.youtube.com/watch?v=2CPxgZiYUy0",
                    "https://www.youtube.com/watch?v=8LDuBj06lw4",
                    "https://www.youtube.com/watch?v=Ju0A8auQAkA",
                    "https://www.youtube.com/watch?v=sZOVlu_e2NQ"
                ]
            ),
            Raag(
                name: "Sameri",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - m - P - n - S'",
                avroh: "S' - n - d - P - m - g - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=LI6ncjn4dL4"
                ]
            ),
            Raag(
                name: "Sarang, Badhans",
                time: .t12_15,
                thaat: .khamaj,
                aroh: "S - R - m, R - m - P, N - S'",
                avroh: "S - n - P - m - (D)P - m - R, R - 'N - S",
                pakad: "S - R - m, n - P - m - R - m, 'N - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=CRaZdjcNV3k"
                ]
            ),
            Raag(
                name: "Sarang, Gaud",
                time: .t12_15,
                thaat: .kalyan,
                aroh: "S - G - R - m - G - P - M - D - P - N - D - S'",
                avroh: "S' - D - N - P - D - M - P - G, m - R - P - R - S",
                pakad: "S - G - R - m - g - P - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=gG3gD9oRSSc",
                    "https://www.youtube.com/watch?v=31aS8VP41A4",
                    "https://www.youtube.com/watch?v=N7bvD0X8FYg",
                    "https://www.youtube.com/watch?v=IzvGFbxwIi8",
                    "https://www.youtube.com/watch?v=3ws5am8EVkA",
                    "https://www.youtube.com/watch?v=6LQsFpp22cM"
                ]
            ),
            Raag(
                name: "Sarang, Lankadahan",
                time: .t12_15,
                thaat: .kafi,
                aroh: "S - R - m - P, n - P, N - S'",
                avroh: "S' - D - n - P, m - P - (m)g - (m)g - m - R - S",
                pakad: "S' - D - n - P, (m)g - m - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=_zMinS2c9qA",
                    "https://www.youtube.com/watch?v=i55jTeE8lw8",
                    "https://www.youtube.com/watch?v=PV15vohXgG0",
                    "https://www.youtube.com/watch?v=k-RfFGPFUOQ",
                    "https://www.youtube.com/watch?v=BTa5m1WcRUc",
                    "https://www.youtube.com/watch?v=-MJm2zoz14w",
                    "https://www.youtube.com/watch?v=SBd63wI8N3c",
                    "https://www.youtube.com/watch?v=KtmyOUEDpXA",
                    "https://www.youtube.com/watch?v=hLwF0FI3AIg"
                ]
            ),
            Raag(
                name: "Sarang, Madhmaad",
                time: .t09_12,
                thaat: .kafi,
                aroh: "S - R - m - P - n - S'",
                avroh: "S' - n - P - m - R - m - R, 'n - S",
                pakad: "'n - S - R - m - P, P - R, m - R, 'n - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=_D0rzZjkEKM",
                    "https://www.youtube.com/watch?v=vxGSeCi72nE",
                    "https://www.youtube.com/watch?v=z8--GoGxI-o"
                ]
            ),
            Raag(
                name: "Sarang, Miyan Ki",
                time: .t09_12,
                thaat: .kafi,
                aroh: "'D - 'N - S, R, P - D - N - S'",
                avroh: "S', n - D, S, n - P, m - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=GPS6419XAE4",
                    "https://www.youtube.com/watch?v=4101bmauQlI",
                    "https://www.youtube.com/watch?v=yrfGjwt5Erc",
                    "https://www.youtube.com/watch?v=hbaYxHSiihg"
                ]
            ),
            Raag(
                name: "Sarang, Poorvi",
                time: .t18_21,
                thaat: nil,
                aroh: "S - r, G - M - P - d - N - S'",
                avroh: "S' - N - d - P - M - P - M - G - r - G - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Sarang, Samant",
                time: .t12_15,
                thaat: .khamaj,
                aroh: "S - R - m - P - N - S'",
                avroh: "S' - n - D - P - m - R, m - R - 'N - S",
                pakad: "R - M - P - n - D - P, m - R",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=heG-V5AIb0Q",
                    "https://www.youtube.com/watch?v=PDIxuFam5cI",
                    "https://www.youtube.com/watch?v=DVAFV4U-ohU",
                    "https://www.youtube.com/watch?v=2GY_0fpqYDQ",
                    "https://www.youtube.com/watch?v=MBvkwv_CLeQ"
                ]
            ),
            Raag(
                name: "Sarang, Shuddha",
                time: .t12_15,
                thaat: .kafi,
                aroh: "S - R - M - P - N - S'",
                avroh: "S' - N - D - P - M - P - (m)R, m - R - N - S",
                pakad: "R - M - P - R - m - R - S - 'N - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=2N69SDSWbec",
                    "https://www.youtube.com/watch?v=UmspDw9HHQ0",
                    "https://www.youtube.com/watch?v=_WnWK6z6Lh4",
                    "https://www.youtube.com/watch?v=ptA2r3pSEbM",
                    "https://www.youtube.com/watch?v=RuCyVv5STCg",
                    "https://www.youtube.com/watch?v=SmDNa3qQ7To",
                    "https://www.youtube.com/watch?v=rNa97t2sklw",
                    "https://www.youtube.com/watch?v=mU2-FF_gfwE",
                    "https://www.youtube.com/watch?v=PzCZomuHVVQ",
                    "https://www.youtube.com/watch?v=N14W1fOW6Es",
                    "https://www.youtube.com/watch?v=2FVmF2fBYTE",
                    "https://www.youtube.com/watch?v=Z7mXKBLMBbU",
                    "https://www.youtube.com/watch?v=PpoLmkkkHdM",
                    "https://www.youtube.com/watch?v=EJQkbwTYl3A"
                ]
            ),
            Raag(
                name: "Sarang, Vrindavani",
                time: .t12_15,
                thaat: .kafi,
                aroh: "S - R - m - P - N - S'",
                avroh: "S - n - P - m - R - m - R - S - 'N - S",
                pakad: "n - P - m - R, m - R - 'N - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=EiV4GQFAtKY",
                    "https://www.youtube.com/watch?v=06IKdSn0t2o",
                    "https://www.youtube.com/watch?v=o8ContzYAmU",
                    "https://www.youtube.com/watch?v=kLyX4EBbFIw",
                    "https://www.youtube.com/watch?v=XhwXNDdZWi0",
                    "https://www.youtube.com/watch?v=pYA0QAmOAkA",
                    "https://www.youtube.com/watch?v=Zak7kDaTglc",
                    "https://www.youtube.com/watch?v=MoTxLz_1F_g",
                    "https://www.youtube.com/watch?v=o7uT9VR4JoM",
                    "https://www.youtube.com/watch?v=gEeJoCOd1-c",
                    "https://www.youtube.com/watch?v=wpoEDP9LwTQ"
                ]
            ),
            Raag(
                name: "Saraswati",
                time: .t18_21,
                thaat: nil,
                aroh: "S - R - M - P - D - P - S'",
                avroh: "S' - n - D - P, M - P -(P)R - S",
                pakad: "M - P - D - P - S', S' - n - D - P, M - M - P - R, S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=B5wUlEHQdrE",
                    "https://www.youtube.com/watch?v=9xMGLtt7CVU",
                    "https://www.youtube.com/watch?v=kT7YYX7MD_Y",
                    "https://www.youtube.com/watch?v=6EpaGRG6cfY",
                    "https://www.youtube.com/watch?v=uK8ZNvou1S4",
                    "https://www.youtube.com/watch?v=XmGkC5SWVik",
                    "https://www.youtube.com/watch?v=thLuxEAiUmY",
                    "https://www.youtube.com/watch?v=d8TTHpjXBVo",
                    "https://www.youtube.com/watch?v=VgueGXGCJek"
                ]
            ),
            Raag(
                name: "Saravali, Naag",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - G, m - P, D - S'",
                avroh: "S' - D - P - m, P - G, m - G - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=U5PPXYMR_lU",
                    "https://www.youtube.com/watch?v=QKJsYOIINHM"
                ]
            ),
            Raag(
                name: "Saveri",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r - m - P, d - S'",
                avroh: "S' - N - d - P, m - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Sawan",
                time: .monsoon,
                thaat: .kafi,
                aroh: "S - g - P - G - m - P - N - S'",
                avroh: "S' - N - D - P - g, m - G - R, S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=cQXgk8CiEbM",
                    "https://www.youtube.com/watch?v=Gr14wvGumHk"
                ]
            ),
            Raag(
                name: "Shankara",
                time: .t21_24,
                thaat: .bilawal,
                aroh: "S - G - P - N - D - S'",
                avroh: "S' - N - (D)P, G - P - (R)G - (R)S",
                pakad: "S - 'N - 'P - 'N - 'D - S - G - P - G - R - S'",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=LV6OE0VYOPA",
                    "https://www.youtube.com/watch?v=ED_J920ZyXc",
                    "https://www.youtube.com/watch?v=VyiZFtl5YiA",
                    "https://www.youtube.com/watch?v=oJYkFY07aAQ",
                    "https://www.youtube.com/watch?v=fUVFpaCD7dM"
                ]
            ),
            Raag(
                name: "Shimendra Madhyam",
                time: .t18_21,
                thaat: nil,
                aroh: "S - R - g - M - P - d - N - S'",
                avroh: "S' - N - d - P - M - g - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Shivranjani",
                time: .t21_24,
                thaat: .kafi,
                aroh: "S - R - g - P - D - S'",
                avroh: "S - D - P - g - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=cWI1z8pRycU",
                    "https://www.youtube.com/watch?v=gJYJyIzpF2c",
                    "https://www.youtube.com/watch?v=M7QwBesOy_Q",
                    "https://www.youtube.com/watch?v=8zAI6MihTww",
                    "https://www.youtube.com/watch?v=uhyJrNxTxQ4",
                    "https://www.youtube.com/watch?v=o0xx_z9rQqk"
                ]
            ),
            Raag(
                name: "Shobhavari",
                time: .t06_09,
                thaat: .asavari,
                aroh: "S - (m)R - m - P - d - P, m - P - (n)d - (n)d - S'",
                avroh: "S' - (n)d - P, d - m - P, (m)r - (m)r - S",
                pakad: "m - P - d - m - P, (m)R - m - P, (m)R - (m)R - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Shree",
                time: .t15_18,
                thaat: nil,
                aroh: "S - r - P, M - P - D - P -  N - S' - r' - S'",
                avroh: "S' - r' - N - d - P(M)P - r - G - r - S",
                pakad: "r - P, M - P - d - P, r - G - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=3VXWbB67dP4",
                    "https://www.youtube.com/watch?v=cEzvQGoeUzg",
                    "https://www.youtube.com/watch?v=Zs1YBBp4G6c",
                    "https://www.youtube.com/watch?v=c3_glEdF8WY",
                    "https://www.youtube.com/watch?v=hNASxQcl0V4",
                    "https://www.youtube.com/watch?v=AO_OU6QjoZY",
                    "https://www.youtube.com/watch?v=1Y7RuDKenj4",
                    "https://www.youtube.com/watch?v=YyJuFUz-kro",
                    "https://www.youtube.com/watch?v=JhVj0MZj4ng",
                    "https://www.youtube.com/watch?v=cPwiWDJa9OA",
                    "https://www.youtube.com/watch?v=Uv6nd04Zmuc",
                    "https://www.youtube.com/watch?v=n6aobB0LE3Q"
                ]
            ),
            Raag(
                name: "Shree, Hauns",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - G - m - P - N - S'",
                avroh: "S' - n, m - P, P - G - m - G, S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Shreetank",
                time: .t18_21,
                thaat: nil,
                aroh: "S - r - P, P - d - P - S'",
                avroh: "S' - N - r - N - d - P - G - r, G - r - S",
                pakad: "r - r - P, N - d - P, G - r - S",
                youtubeLinks: []
            ),
            Raag(
                name: "Shreevanti",
                time: .t06_09,
                thaat: .todi,
                aroh: "'N - S - g - M - P - N - S'",
                avroh: "S' - N - P - M - g - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=neYpMfD0YEA"
                ]
            ),
            Raag(
                name: "Sindhura",
                time: .monsoon,
                thaat: .kafi,
                aroh: "S - R - m - P - D - S'",
                avroh: "R' - N - S' - n - D - P - m - g - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=-cmIQ6XXvjo",
                    "https://www.youtube.com/watch?v=1oPpsh5QmWg",
                    "https://www.youtube.com/watch?v=OzH99ZAg8rI"
                ]
            ),
            Raag(
                name: "Sohoni",
                time: .t03_06,
                thaat: .marwa,
                aroh: "S - G - M - D - N - S'",
                avroh: "S' - N - D - M - D - G - M - G - r - S",
                pakad: "M - D - N - S - r' - S, S - N - D - M - D - G",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=ZzElR7GY7BY",
                    "https://www.youtube.com/watch?v=m-PhKszmJ0Q",
                    "https://www.youtube.com/watch?v=vrktPyrexTA",
                    "https://www.youtube.com/watch?v=qsERm_kGpLc",
                    "https://www.youtube.com/watch?v=h0KY3wNjgfM"
                ]
            ),
            Raag(
                name: "Sorath",
                time: .t06_09,
                thaat: .khamaj,
                aroh: "S - R, m - P - N, S",
                avroh: "S' - R', n - D, m - P - D, m - R - 'N - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=upUv8G8AKCY",
                    "https://www.youtube.com/watch?v=YgRNQkIxIP0",
                    "https://www.youtube.com/watch?v=fD0DVkSGHNY",
                    "https://www.youtube.com/watch?v=GWkSUbo6A4Q"
                ]
            ),
            Raag(
                name: "Sourashtra Tank",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r, G - m, P - m, D - S'",
                avroh: "S' - N - D - m, N - d - P, m - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Tanki",
                time: .t18_21,
                thaat: nil,
                aroh: "S - r - G - P, d - P - N - S'",
                avroh: "S' - N - d - P, M - G, P - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Tilak Kamod",
                time: .t18_21,
                thaat: .khamaj,
                aroh: "S - R - G - S - R - m - P - N - S",
                avroh: "S' - n - D - P - D - m - G - S - R - G - S",
                pakad: "S - P - D - m - G - S - R - G - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=GDbf24xbzxU",
                    "https://www.youtube.com/watch?v=6-h-KAbaisY",
                    "https://www.youtube.com/watch?v=O3zk-OstS38",
                    "https://www.youtube.com/watch?v=aZiR27UYMXg",
                    "https://www.youtube.com/watch?v=MfX1-MU6yzU",
                    "https://www.youtube.com/watch?v=zLgXP-WvXLM",
                    "https://www.youtube.com/watch?v=wioUZhifTs4"
                ]
            ),
            Raag(
                name: "Tilang",
                time: .t18_21,
                thaat: .khamaj,
                aroh: "S - G - m - P - N - S'",
                avroh: "S' - n - P - m - G - S",
                pakad: "m - P - N - S' - n - P - G - m - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=b_G1MlI_0Ko"
                ]
            ),
            Raag(
                name: "Todi, Anjani",
                time: .t09_12,
                thaat: .todi,
                aroh: "S - R - m - P - n - d - N - S'",
                avroh: "S' - n - D - P - g - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Todi, Asa",
                time: .t06_09,
                thaat: .todi,
                aroh: "S - r - m - P - d - S'",
                avroh: "S' - n - d - m - r - g - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Lhj8o7b9Tn4",
                    "https://www.youtube.com/watch?v=7VSgEGC8SFQ"
                ]
            ),
            Raag(
                name: "Todi, Bahaduri",
                time: .t06_09,
                thaat: .bhairavi,
                aroh: "R - 'n - S  - R - g - (S)R - g, m - P - (N)d - S'",
                avroh: "S' - r' - n - d - m - g - R, g - (S)R - g, r - S",
                pakad: "R - 'n - S - R - g - (S)R - g, P - R - g - S - R - 'n, r - g - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=TLvrtTZcze4",
                    "https://www.youtube.com/watch?v=fo_1CTciwjo",
                    "https://www.youtube.com/watch?v=akqWyMv34Xw",
                    "https://www.youtube.com/watch?v=7bXKWgpC64M",
                    "https://www.youtube.com/watch?v=s5eyFoRC8Ok"
                ]
            ),
            Raag(
                name: "Todi, Bairagi",
                time: .t06_09,
                thaat: .bhairavi,
                aroh: "S - r - g - P - n - S'",
                avroh: "S' - n - P - g - r - S",
                pakad: "S - r - g - P, P - g - r - g - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=6WSZlGXrty0",
                    "https://www.youtube.com/watch?v=a-DFv3gWex4",
                    "https://www.youtube.com/watch?v=1whY3cq5JGc"
                ]
            ),
            Raag(
                name: "Todi, Bhupali",
                time: .t09_12,
                thaat: .bhairavi,
                aroh: "'d - S - r - g - P - d - S'",
                avroh: "S' - d - P - g - r - S",
                pakad: "S - r - 'd - S, rg - rg - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=7VaGBqBFag4",
                    "https://www.youtube.com/watch?v=dQBTrtP7etk"
                ]
            ),
            Raag(
                name: "Todi, Bilaskhani",
                time: .t09_12,
                thaat: .bhairavi,
                aroh: "S - r - g - P - d - S'",
                avroh: "S' - r' - n - d - m - g - rgr - S",
                pakad: "S' - r' - n - d, m - P - d - n - d - m - g, rgr - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=6mngKGEV4w8",
                    "https://www.youtube.com/watch?v=tZVdZeC51MU",
                    "https://www.youtube.com/watch?v=Lx62q3KkEy8",
                    "https://www.youtube.com/watch?v=XI3Mlwjc4Is",
                    "https://www.youtube.com/watch?v=KrRzlNM4IU0",
                    "https://www.youtube.com/watch?v=IHo1AzWHeV4",
                    "https://www.youtube.com/watch?v=Lx62q3KkEy8",
                    "https://www.youtube.com/watch?v=lRcwn_Ex-R4"
                ]
            ),
            Raag(
                name: "Todi, Chhaya",
                time: .t06_09,
                thaat: .todi,
                aroh: "S - r - g - M - d - S'",
                avroh: "S' - d - M - g - r - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=iGf8i-ZUKqM",
                    "https://www.youtube.com/watch?v=nc4eiDtCCcY"
                ]
            ),
            Raag(
                name: "Todi, Darbari",
                time: .t06_09,
                thaat: .todi,
                aroh: "S - r - g - M - d - N - S'",
                avroh: "S' - n - d - P - M - P - d - n - d - P - M - g - r - g - r - S",
                pakad: "S - d - d - P - M - P - g - M - M - d - n - d - P",
                youtubeLinks: []
            ),
            Raag(
                name: "Todi, Gauri",
                time: .t06_09,
                thaat: .todi,
                aroh: "S - r, g - M - P - d - N - S'",
                avroh: "S' - N - d - P - M - G - r - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Todi, Gujari",
                time: .t09_12,
                thaat: .todi,
                aroh: "S - r - g - M - d - N - S'",
                avroh: "S' - N - d - M - g - r - S",
                pakad: "M - d - N - d - M - g - r - g - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=5_TCUuC0NRQ",
                    "https://www.youtube.com/watch?v=K4uuSUZZpNE",
                    "https://www.youtube.com/watch?v=VOn4re4_N_E"
                ]
            ),
            Raag(
                name: "Todi, Hussaini",
                time: .t06_09,
                thaat: .kafi,
                aroh: "S - R - M - P - D, m - P - N - S'",
                avroh: "S' - P - D - MP, g - R - S - 'N - S or R' - n - D - P, MPDP - g, Rg - SR - 'NS",
                pakad: "R - m - PDP - g, Rg - SR - 'NS",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=NNWTxXoyofo",
                    "https://www.youtube.com/watch?v=kQfwgMr9x5I"
                ]
            ),
            Raag(
                name: "Todi, Jaiwanti",
                time: .t06_09,
                thaat: .bhairavi,
                aroh: "S - r - m - P - D - n - S'",
                avroh: "S' - n - D - P - m - g - r - S",
                pakad: "S - r - m - P, n - D - P, D - m, P - g, m - r, g - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=f-ikw9US2f0",
                    "https://www.youtube.com/watch?v=M6wCDSUng5A",
                    "https://www.youtube.com/watch?v=vQm70j6ebts"
                ]
            ),
            Raag(
                name: "Todi, Lachari",
                time: .t09_12,
                thaat: .asavari,
                aroh: "S - R - G - (R)G - m, m - P - (n)d - (n)d - P - S'",
                avroh: "S', r' - n - D, (n)d - P, m - P - (m)g - (m)g, R - g - m - S",
                pakad: "S - R - G - (R)G - m, m - n - D - P, d - (P)m - P - (m)g - R",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=V_eibTAuzkw",
                    "https://www.youtube.com/watch?v=P1aCSUYxqwU",
                    "https://www.youtube.com/watch?v=PTKXS_6353g"
                ]
            ),
            Raag(
                name: "Todi, Laxmi",
                time: .t06_09,
                thaat: .todi,
                aroh: "S - 'n - 'P, S, S - R - G - m, m - g - P, (n)d - (n)d - (n) P, (n)d - (n)d - S'",
                avroh: "S' - n - S' - r' - S', n - d - P - d - g, m - g - r - S",
                pakad: "S, P - P - (m)g - m, m - P (n)d - (n)d - d - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=4N55Pbzi1Ww"
                ]
            ),
            Raag(
                name: "Todi, Miyan Ki",
                time: .t09_12,
                thaat: .todi,
                aroh: "S - r - g - M - d - N - S'",
                avroh: "S' - N - d - P - M - g - r - S",
                pakad: "N - d - P - M - d - N - S, S - r - g - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=j6k8psII0pA",
                    "https://www.youtube.com/watch?v=K4uuSUZZpNE",
                    "https://www.youtube.com/watch?v=tA_V7HsTyCs",
                    "https://www.youtube.com/watch?v=4QHtPNwjK64"
                ]
            ),
            Raag(
                name: "Todi, Saheli",
                time: .t09_12,
                thaat: .todi,
                aroh: "S - r - g - P - d - S'",
                avroh: "r' - g' - r' - S' - d - n - d - P - g - r - g - r - S' - d - S",
                pakad: "'d - S - r - g - P - g - r - g - r - S - r - S - 'd",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=QZpvwErE_C0",
                    "https://www.youtube.com/watch?v=MSBivOXBFYk"
                ]
            ),
            Raag(
                name: "Triveni",
                time: .t06_09,
                thaat: .bhairav,
                aroh: "S - r, r - S, S - r, G - P - G, P, d - P, S'",
                avroh: "S' - N - d - P, P - G, r - r - S",
                pakad: "S - r - P, d - P - S', N - d - P, G - P - G - r",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=Gp17KKzZMog",
                    "https://www.youtube.com/watch?v=1NqgirqzVhc",
                    "https://www.youtube.com/watch?v=qgSN6yRjxGU"
                ]
            ),
            Raag(
                name: "Vachaspati",
                time: .t21_24,
                thaat: nil,
                aroh: "'n - S - G - M - P - n - S'",
                avroh: "S' - n - D - P - M - G - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=hKrLtMdGHws",
                    "https://www.youtube.com/watch?v=V9QRjrJsDc8",
                    "https://www.youtube.com/watch?v=5dz-BN3R5_E"
                ]
            ),
            Raag(
                name: "Varari, Kantal",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - m - P, D - n - D, S'",
                avroh: "S' - N, D - P, m - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Varari, Karank",
                time: .t21_24,
                thaat: .khamaj,
                aroh: "S - R, m - P, n - S'",
                avroh: "S' - n, D - n, P - m, G - R - S",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Varari, Salag",
                time: .t09_12,
                thaat: .todi,
                aroh: "S - r - g - P, D - n - D - S'",
                avroh: "S' - n - D - P, D - n - D - P, g - P, r - g - r - S",
                pakad: "S - r - g - P, - d - n - d - P, r - g - r - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=7ihvtfuBI0c",
                    "https://www.youtube.com/watch?v=y5afu9af9yM",
                    "https://www.youtube.com/watch?v=7Bx0GxiyurI"
                ]
            ),
            Raag(
                name: "Vijay",
                time: .t18_21,
                thaat: .kafi,
                aroh: "S - R - g - M - P - D - S'",
                avroh: "S' - d - P - M, g - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=RGmf_uBH4BU"
                ]
            ),
            Raag(
                name: "Viranch Mukhi",
                time: .t21_24,
                thaat: .kalyan,
                aroh: "S - m, G - P, M - m - g, P - N - S'",
                avroh: "S' - N - P, M - m - G, P - G, P - R - S - m",
                pakad: nil,
                youtubeLinks: []
            ),
            Raag(
                name: "Yaman",
                time: .t18_21,
                thaat: .kalyan,
                aroh: "N - R - G - M - D - N - S'",
                avroh: "S' - N - D - P - M - G - R - S",
                pakad: "'N - R - G - M - P - R - G - R - 'N - R - S",
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=R5io5_3belI",
                    "https://www.youtube.com/watch?v=lJz_jaXFTIU",
                    "https://www.youtube.com/watch?v=Tg0fAfJTlFg",
                    "https://www.youtube.com/watch?v=cvNWuB2jPNI",
                    "https://www.youtube.com/watch?v=EkyIQU16mOM",
                    "https://www.youtube.com/watch?v=Y5mL4tX0EyI",
                    "https://www.youtube.com/watch?v=UusGQ7QG2r8",
                    "https://www.youtube.com/watch?v=yg3fuQ6ONoA",
                    "https://www.youtube.com/watch?v=HIbN60mqdwc",
                    "https://www.youtube.com/watch?v=p1NY_oK0IAU",
                    "https://www.youtube.com/watch?v=GFPS19GEmj8",
                    "https://www.youtube.com/watch?v=PWVGlK3isXs",
                    "https://www.youtube.com/watch?v=5WxxgYlv3-s",
                    "https://www.youtube.com/watch?v=wotRNimFPYw",
                    "https://www.youtube.com/watch?v=5-rRfE3GnbM",
                    "https://www.youtube.com/watch?v=agVv2IVvoAA",
                    "https://www.youtube.com/watch?v=gt-RBMthfP8",
                    "https://www.youtube.com/watch?v=S_uQh5yg5hE",
                    "https://www.youtube.com/watch?v=XaMW3iBoHfw",
                    "https://www.youtube.com/watch?v=3bUZtuTr1hQ",
                    "https://www.youtube.com/watch?v=0E0_XsHA0oE",
                    "https://www.youtube.com/watch?v=EeUMC8K6d78",
                    "https://www.youtube.com/watch?v=kCi59VkmSB0",
                    "https://www.youtube.com/watch?v=otx75gQ0XsY",
                    "https://www.youtube.com/watch?v=Dy3cnSKtgcA",
                    "https://www.youtube.com/watch?v=pfvemvF__E0",
                    "https://www.youtube.com/watch?v=S0ioBZItZ2A"
                ]
            ),
            Raag(
                name: "Zilaf",
                time: .t06_09,
                thaat: .asavari,
                aroh: "S - R - g - m, P, d, n - S'",
                avroh: "R' - S' - n - d, P, g - P - m - g - R - S",
                pakad: nil,
                youtubeLinks: [
                    "https://www.youtube.com/watch?v=rGF5ONlCOV0",
                    "https://www.youtube.com/watch?v=BmLIXT0KmqE",
                    "https://www.youtube.com/watch?v=gr3GH7p3P78",
                    "https://www.youtube.com/watch?v=hMZkUC7dBOI",
                    "https://www.youtube.com/watch?v=T3FAniThyxk",
                    "https://www.youtube.com/watch?v=ktPoyetH42M",
                    "https://www.youtube.com/watch?v=6sWURGntC-s",
                    "https://www.youtube.com/watch?v=nLkpMI4HKMo"
                ]
            )
        ]
    }
    
    // private func loadSampleData() {
    //     raags = [
    //         // Morning Raags (06-09)
    //         Raag(
    //             name: "Bhairav",
    //             time: .t06_09,
    //             thaat: .bhairav,
    //             aroh: "सा रे॒ ग म प ध॒ नि सां",
    //             avroh: "सां नि ध॒ प म ग रे॒ सा",
    //             pakad: "म प ध॒ म, ग रे॒ सा",
    //             youtubeLinks: [
    //                 "https://www.youtube.com/watch?v=xG7fTvW0YnY",
    //                 "https://www.youtube.com/watch?v=Zg6fZ5qYJzE"
    //             ]
    //         ),
    //         Raag(
    //             name: "Ahir Bhairav",
    //             time: .t06_09,
    //             thaat: .bhairav,
    //             aroh: "सा रे॒ ग म प ध नि सां",
    //             avroh: "सां नि ध प म ग रे॒ सा",
    //             pakad: "सा रे॒ ग म, ध नि सां रे॒",
    //             youtubeLinks: [
    //                 "https://youtu.be/d_F0fShQZa4?si=zRh4IeyPv6Ijtadz",
    //                 "https://youtu.be/jBABgCoLt54?si=6K1p-LSBfcIZmO6X"
    //             ]
    //         ),
    //     ]
    // }
    
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
        var raags = getRaags(for: currentTime)
        
        // During monsoon season (July-September), also include monsoon raags
        if TimeOfDay.isMonsoonSeason() {
            let monsoonRaags = getRaags(for: .monsoon)
            // Avoid duplicates
            let existingIds = Set(raags.map { $0.id })
            let newMonsoonRaags = monsoonRaags.filter { !existingIds.contains($0.id) }
            raags.append(contentsOf: newMonsoonRaags)
        }
        
        return raags
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
