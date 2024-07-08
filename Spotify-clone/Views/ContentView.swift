import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .house

    var body: some View {
        VStack(spacing: 0) {
            switch selectedTab {
            case .house:
                ListView()
            case .magnifyingglass:
                ListView()
            case .tray:
                ListView()
            }
            MainView(selectedTab: $selectedTab)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    ContentView()
}
