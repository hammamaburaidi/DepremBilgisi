import SwiftUI

struct Eczaneler: View {
    
    @State var areas: [Area] = []
    @State var searchText = ""

    public func getData(){
        let urlString = "https://eczaneleri.net/api/eczane-api?demo=1&type=json"
        let url = URL(string: urlString)
        
        URLSession.shared.dataTask(with: url!){data, _, error in
            if let data = data{
                do {
                    let decoder = JSONDecoder()
                    let eczanelerJSONModel = try decoder.decode(EczanelerJSONModel.self, from: data)
                    self.areas = eczanelerJSONModel.data.city.area
                } catch {
                    print("Error: \(error)")
                }
            }
        }.resume()
    }

    var filteredAreas: [Area] {
        if searchText.isEmpty {
            return areas
        } else {
            return areas.filter { $0.areaName.localizedCaseInsensitiveContains(searchText) }
        }
    }

    var body: some View {
        VStack {
            SearchBar(text: $searchText)
                .padding(.horizontal)
            List {
                ForEach(filteredAreas, id: \.areaName) { area in
                    Section(header: Text(area.areaName)) {
                        ForEach(area.pharmacy, id: \.name) { pharmacy in
                            VStack(alignment: .leading) {
                                Text(pharmacy.name)
                                Text(pharmacy.phone)
                                Text(pharmacy.address)
                            }
                        }
                    }
                }
            }
            .listStyle(.grouped)
            .onAppear {
                // Fetch data when the view appears
                getData()
            }
        }
    }
}
