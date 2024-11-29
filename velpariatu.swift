import SwiftUI

struct ContentView: View {
    @State private var items = [Item(id: 1), Item(id: 2), Item(id: 3)]

    var body: some View {
        VStack {
            ForEach(items) { item in
                ItemView(item: item)
            }
        }
    }
}

struct Item: Identifiable {
    let id: Int
    @State var isPlaying: Bool = false
}

struct ItemView: View {
    @State var item: Item

    var body: some View {
        HStack {
            Text("Item \(item.id)")
            Spacer()
            Button(action: {
                item.isPlaying.toggle()
            }) {
                Text(item.isPlaying ? "Pause" : "Play")
            }
        }
        .padding()
    }
}
