import SwiftUI

struct Destination {
    let name: String
    let country: String
    let temperature: Int
    let adults: Int
    let kids: Int
    let nights: Int
    let description: String
    let baseCost: Double
    let imageName: String
    
    var price: Double {
        let kidsCost = baseCost * 0.5 * Double(kids)
        let adultsCost = baseCost * Double(adults)
        return Double(nights) * (kidsCost + adultsCost)
    }
}

struct DestinationView: View {
    let destination: Destination

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(destination.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(10)

            VStack(alignment: .leading, spacing: 4) {
                Text(destination.name)
                    .font(.title)
                    .fontWeight(.bold)
                Text(destination.country)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)

            VStack(alignment: .leading, spacing: 8) {
                Text("Overview")
                    .font(.headline)

                HStack {
                    VStack(alignment: .leading) {
                        Text("Temperature: \(destination.temperature)°C")
                        Text("Adults: \(destination.adults)")
                        Text("Kids: \(destination.kids)")
                    }

                    Spacer()

                    VStack(alignment: .leading) {
                        Text("Nights: \(destination.nights)")
                        Text("Base Cost: £\(String(format: "%.2f", destination.baseCost))")
                    }
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
            }
            .padding(.horizontal)

            VStack(alignment: .leading, spacing: 8) {
                Text("Total Cost")
                    .font(.headline)
                Text("£\(String(format: "%.2f", destination.price))")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
            }
            .padding(.horizontal)

            VStack(alignment: .leading, spacing: 8) {
                Text("Description")
                    .font(.headline)
                Text(destination.description)
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal)

            Spacer()
        }
        .padding()
    }
}

let wuhuIsland = Destination(
    name: "woohoo",
    country: "Indonesia",
    temperature: 32,
    adults: 3,
    kids: 0,
    nights: 12,
    description: "Lorem Ipsum ur mom.",
    baseCost: 150.0,
    imageName: "wuhu"
)

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView(destination: wuhuIsland)
    }
}
