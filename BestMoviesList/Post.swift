//
//  Post.swift
//  BestMovies
//
//  Created by Юлия Кагирова on 03.09.2024.
//

import SwiftUI

struct Post: Identifiable {
    
    let id: Int
    let title: String
    let subTitle: String
    let description: String
    let image: Image
    
    static let data = [
        Post(
            id: 1,
            title: "La La Land",
            subTitle: "37 of 100",
            description: "As much a technical marvel as it is an acting tour-de-force, Damien Chazelle's Los Angeles love letter proved a ridiculously easy movie to fall in love with, even for those who may have grumbled that they weren't really into musicals before sitting down to watch it. Go on, admit it: You're still humming Another Day Of Sun, aren't you?",
            image: Image(.lalaland)
        ),
        Post(
            id: 2,
            title: "Singin' In The Rain",
            subTitle: "34 of 100",
            description: "A joyous, vibrant Technicolor celebration of the movies, that's such an essential viewing experience there should perhaps be a law that it feature in every DVD and Blu-ray collection. It's no mere Hollywood self-love exercise, though. As star Don Lockwood, Gene Kelly brings a sense of exasperation at the film industry's diva-indulging daftness, making it a gentle piss-take, too.",
            image: Image(.singin)
        ),
        Post(
            id: 3,
            title: "Arrival",
            subTitle: "25 of 100",
            description: "Denis Villeneuve's empathic, perception-bending alien visitation drama is sci-fi at its very best. Offering a mercurial blend of blockbuster scale and spectacular special effects and grounded, intensely cerebral human drama, the Quebecois filmmaker's first venture into speculative fiction — bolstered by an emotional, career standout turn from Amy Adams as linguistics professor Dr Louise Banks — takes Ted Chiang's short story and makes of it something vast and singular. With its message that open-minded communication enables us to realise the things we have in common with those who appear vastly different, Arrival endures as a soul-piercing call for understanding in increasingly troubled times.",
            image: Image(.arrival)
        ),
        Post(
            id: 4,
            title: "Psycho",
            subTitle: "20 of 100",
            description: "Imagine what it would've been like to go and see Psycho in 1960. No late entry to the multiplex. Virtually no marketing beyond some shots of the Bates Motel and some old house overlooking it. And then, for the entire opening act, you think you've got it all figured out — it's a good old-fashioned noir! Janet Leigh's on the lam with a bunch of her boss' money and heading for a new life. And then she stops at that motel from the promos, meets the strange-but-nice-enough Norman Bates (Anthony Perkins), and hops in the shower. Then suddenly STAB! goes a knife. STAB! goes Bernard Hermann's piercing string score. And again, and again, and again. And from that moment on, you're rooted to your seat, in thrall to a madman (whether that's Hitch or Norman is your call), and certain to never be the same again. Pure cinema! (Also, don’t sleep on Psycho II, one of the most unexpected, underrated gems in sequel history!)",
            image: Image(.psycho)
        ),
        Post(
            id: 5,
            title: "Mulholland Drive",
            subTitle: "28 of 100",
            description: "David Lynch messes with Hollywood itself in a mystery tale that's as twisted as the road it's named after, while presenting Tinseltown as both Dream Factory and a realm of Nightmares. It also put Naomi Watts on the map; her audition scene remains as stunning as it was 20 years ago.",
            image: Image(.mulholland)
        ),
        Post(
            id: 6,
            title: "Rear Window",
            subTitle: "29 of 100",
            description: "Photographer LB Jeffries (James Stewart) is on sick leave, with a broken leg. He's bored to tears, so he starts spying on his neighbours. Then he witnesses a murder. OR DOES HE? Alfred Hitchcock really knew how to take a corker of a premise and spin it into a peerless thriller (that's why they called him The Master Of Suspense), but Rear Window also deserves praise for an astonishing set build: that entire Greenwich Village courtyard was constructed at Paramount Studios, complete with a drainage system that could handle all the rain.",
            image: Image(.window)
        ),
        Post(
            id: 7,
            title: "Lady Bird",
            subTitle: "33 of 100",
            description: "With her directorial debut, the wry wit and emotional potency of Greta Gerwig's previous work came even sharper into focus – telling a beautifully nuanced coming-of-age story about mothers, daughters, and the hometowns you yearn to leave, only for them to be truly appreciated in the rear-view mirror. Saoirse Ronan is perfectly precocious as the not-always-likeable Christine 'Lady Bird' McPherson, experiencing fractured friendships, first fuckboys, and fateful fumbles in her final year of high school in 2003 Sacramento.",
            image: Image(.bird)
        )
    ]
}
