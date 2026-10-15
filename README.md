# Paws 🐾

A simple iOS app for keeping track of your pets, each with a name and a photo. Built with **SwiftUI** and **SwiftData** as a learning project.

## Features

- Add new pets
- Edit a pet's name
- Pick a pet photo from the photo library (PhotosPicker)
- Delete pets in edit mode
- Data is saved on the device and persists after the app is closed
- An empty-state screen when there are no pets yet

## Tech Stack

| Technology | Usage |
| --- | --- |
| SwiftUI | The entire UI |
| SwiftData | Data persistence (`@Model`, `@Query`, `modelContext`) |
| PhotosUI | Picking photos |
| NavigationStack | Navigating between screens |

## Project Structure

```
Pwa/
├── PwaApp.swift                        # App entry point + ModelContainer
├── Pet.swift                           # The Pet model + preview data
├── ContentView.swift                   # Main screen: pet grid, add, delete
├── EditPetView.swift                   # Edit a pet's name and photo
└── CustomContentUnavailableView.swift  # Reusable empty-state view
```

## How SwiftData Is Used

- **Model:** `Pet` is marked `@Model`, and the photo is stored with `@Attribute(.externalStorage)` to keep the database fast.
- **Container:** `.modelContainer(for: Pet.self)` in `PwaApp`.
- **Reading:** `@Query private var pets: [Pet]` in `ContentView`, and it refreshes automatically.
- **Adding and deleting:** `modelContext.insert(...)` and `modelContext.delete(...)`.
- **Editing:** `@Bindable var pet: Pet` in `EditPetView`, and changes save automatically as you type.
- **Previews:** an in-memory container (`isStoredInMemoryOnly: true`) with sample data.

## Requirements

- Xcode 15 or later
- iOS 17 or later

## Running the App

```bash
git clone https://github.com/hossam556k/Pwa.git
cd Pwa
open Pwa.xcodeproj
```

Then pick a simulator and press `⌘ + R`.

## Planned Improvements

- [ ] Fix the icon name `slider.horzional.3` → `slider.horizontal.3`
- [ ] Add the missing dot before `listRowSeparator(.hidden)` in `EditPetView`
- [ ] Remove the leftover Core Data files (`Persistence.swift`, `Pwa.xcdatamodeld`)
- [ ] Add the pet's age
- [ ] Add vaccine records linked to each pet (`@Relationship`)
