//
//  Countries.swift
//  TP2_Groupe_4
//
//  Created by RAMAHATSANGIARISON Hobiniaina Mirado on 20/03/2021.
//

import Foundation

let countries = [
    Country(isoCode: "at", name: "Austria", continent: "Europe"),
    Country(isoCode: "be", name: "Belgium", continent: "Europe"),
    Country(isoCode: "de", name: "Germany", continent: "Europe"),
    Country(isoCode: "el", name: "Greece", continent: "Europe"),
    Country(isoCode: "fr", name: "France", continent: "Europe"),
    Country(isoCode: "mg", name: "Madagascar", continent: "Afrique")
]

public extension Sequence {
    func group<Key>(by keyPath: KeyPath<Element, Key>) -> [Key: [Element]] where Key: Hashable {
        return Dictionary(grouping: self, by: {
            $0[keyPath: keyPath]
        })
    }
}

let groupedCountries = countries.group(by: \.continent)

let groupedCountriesLength = groupedCountries.count

let groupByContinent = Dictionary(grouping: countries) { (device) -> String in
    return device.continent
}
