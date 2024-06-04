//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Belle Isle: Sunset Point",
            cityName: "Detroit",
            coordinates: CLLocationCoordinate2D(latitude: 42.333262887844604, longitude: -83.0044071555602),
            description: "The trails on Belle Isle vary in length and difficulty, catering to hikers of all skill levels. Some paths wind through lush forests, providing shade and tranquility amidst the island's urban surroundings. Others meander along the shoreline, offering sweeping views of the Detroit skyline and the sparkling waters of the river. One of the most popular hiking destinations on Belle Isle is the Belle Isle Trail, a paved pathway that encircles the entire island. This scenic route spans approximately six miles and is perfect for leisurely walks, jogs, or bike rides. Along the way, you'll pass by historic landmarks, such as the Belle Isle Aquarium, the James Scott Memorial Fountain, and the Belle Isle Conservatory, adding cultural interest to your outdoor adventure. For those seeking a more immersive hiking experience, Belle Isle also features several nature trails that delve deeper into the island's wilderness. These trails wind through wooded areas and wetlands, providing opportunities to observe native wildlife and plant species up close.",
            imageNames: [
                "belleisle1",
                "belleisle2",
            ],
            link: "https://www.belleisleconservancy.org/"),
        Location(
            name: "Palmer Park",
            cityName: "Detroit",
            coordinates: CLLocationCoordinate2D(latitude: 42.42479757948326, longitude: -83.11846343591505),
            description: "300 acres – including an easy loop trail that’s perfect for all ages. Largest uncut old growth forest in tricounty area. Total of 10 miles of trails, Paved 2.5 mile loop is quick easy and doable for all ages.Palmer Park is a picturesque urban park located in Detroit, Michigan. Spanning approximately 296 acres, it offers a blend of natural beauty, recreational amenities, and historical landmarks. The park features rolling hills, wooded areas, and meandering trails, providing a peaceful escape from the urban bustle. Visitors can enjoy activities such as hiking, picnicking, and birdwatching amidst the park's tranquil surroundings. One of the park's highlights is Lake Frances, a scenic pond where visitors can relax by the water or go fishing. The Detroit Golf Club, one of the oldest golf clubs in the country, is also situated within Palmer Park, offering a challenging course for golf enthusiasts.",
            imageNames: [
                "palmer park detroit",
            ],
            link: "https://www.peopleforpalmerpark.org/"),
        Location(
            name: "Ze Mound riverfront",
            cityName: "Detroit",
            coordinates: CLLocationCoordinate2D(latitude: 42.331780872822556, longitude: -83.02724755571867),
            description: "225 ft hill 220 feet wide paved trails and steps that lead to the Detroit riverfront park. The mound was created in 2003 by the State of Michigan’s Department of Natural Resources (DNR) out of happenstance, according to Ron Olson, the DNR’s chief of parks and recreation division. It’s made from dirt that was removed during upgrades to the harbor in Milliken Park, a state park, which used to be called Tri-Centennial Park. The hill is 25 feet high at its peak, 220 feet wide and 300 feet long, according to the DNR.",
            imageNames: [
                "Ze mound detroit riverfront",
            ],
            link: "https://detroitriverfront.org/"),
        Location(
            name: "Dequindre cut",
            cityName: "Detroit",
            coordinates: CLLocationCoordinate2D(latitude: 42.344005774347586, longitude: -83.03359230589366),
            description: "The Dequindre Cut is a vibrant urban greenway and recreational path in Detroit, Michigan. It stretches for about two miles, running parallel to the Detroit River, between Gratiot Avenue and Atwater Street. As you stroll or cycle along the Dequindre Cut, you'll encounter beautiful landscaping, benches for resting, and even some public art installations. The path offers a peaceful escape from the bustling city streets, with scenic views of the river and downtown Detroit skyline. It's a popular spot for joggers, cyclists, families, and dog walkers alike, providing a safe and enjoyable outdoor space for recreation and relaxation.",
            imageNames: [
                "dequindre cut",
            ],
            link: "https://detroitriverfront.org/riverfront/dequindre-cut/dequindre-cut"),
        Location(
            name: "O’Hair park",
            cityName: "Detroit",
            coordinates: CLLocationCoordinate2D(latitude: 42.44074148787961, longitude: -83.22833391534378),
            description: "80 acre park good for walking, hiking, and running. Paved and dirt trails through dense forest and open plains.",
            imageNames: [
                "Ohair park detroit",
            ],
            link: "https://detroitmi.gov/departments/detroit-parks-recreation/parks-and-greenways/regional-parks/ohair-park"),
    ]
    
}
