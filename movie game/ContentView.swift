import SwiftUI
import Foundation

struct ContentView: View {

    @State var isEditing = false
    @State var guess = 50.0
    
    @State var isChecking = false
    
    @State var currentMovie = getMovie()
    @State var report = Report()
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(currentMovie.title)
                .font(.largeTitle)
            
            
            Text("(\(currentMovie.year))")
                .font(.title2)
            
            Spacer()
            
            Text(currentMovie.description)
            
            Spacer()
            
            Text("Director: \(currentMovie.director)")
            
            Spacer()
            
            Text("Cast: \(currentMovie.cast)")
            
            Spacer()
            
            Slider(
                value: $guess,
                in: 0...100,
                onEditingChanged: { editing in isEditing = editing
                }
            )
            Text("\(Int(guess))")
                .foregroundColor(isEditing ? .red : .blue)
            
            Spacer()
            
            Button {
                report = checkGuess(guess: Int(guess), score: currentMovie.score)
                isChecking.toggle()
            } label: {
                Text("Submit")
            }
            
            Spacer()
            
              
        }
        .padding()
        
        .sheet(isPresented: $isChecking, onDismiss: didDismiss) {
            VStack {
                Spacer()
                Text("Guess for \(currentMovie.title)")
                Spacer()
                Text(report.message)
                Spacer()
                Text("You were off by \(report.difference)")
                Spacer()
                Text("This movie's Rotten Tomatoes Score: \(currentMovie.score)")
                Text("Your guess: \(Int(guess))")
                Spacer()
                Button("Dismiss", action: {isChecking.toggle()})
                Spacer()
            }
        }
        
    }
    
 
    
    func didDismiss() {
        currentMovie = getMovie()
    }
    
}

#Preview {
    ContentView()
}
