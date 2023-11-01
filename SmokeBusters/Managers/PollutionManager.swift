import Foundation
import CoreLocation

class PollutionManager {
    func getCurrentPollution(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> PollutionBody {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/air_pollution?lat=\(latitude)&lon=\(longitude)&appid=0c8088b65743d66e8977e0387d6de0a8") else {
            throw PollutionError.invalidURL
        }

        let urlRequest = URLRequest(url: url)

        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)

            guard (response as? HTTPURLResponse)?.statusCode == 200 else {
                throw PollutionError.invalidResponse
            }

            let decoder = JSONDecoder()
            let decodedData = try decoder.decode(PollutionBody.self, from: data)
            
            // Data processing
            let coordinates = decodedData.coord
            let list = decodedData.list

            if !list.isEmpty {
                let firstListEntry = list[0]
                let dt = firstListEntry.dt
                let main = firstListEntry.main
                let components = firstListEntry.components
                let aqi = main.aqi

                if let co = components["co"],
                   let no = components["no"],
                   let pm10 = components["pm10"],
                   let no2 = components["no2"] {
                    print("CO: \(co), NO: \(no), NO2: \(no2)")
                }
            }

            return decodedData
        } catch {
            throw PollutionError.decodingError(error)
        }
    }
}

// MARK: - PollutionBody
struct PollutionBody: Decodable {
    let coord: [String: Double] // Change to [String: Double] when running the app
    let list: [List]
}

// MARK: - List
struct List: Decodable {
    let dt: Int
    let main: Main
    let components: [String: Double]
}

// MARK: - Main
struct Main: Decodable {
    let aqi: Int
}

enum PollutionError: Error {
    case invalidURL
    case invalidResponse
    case decodingError(Error)
}

