//
//  Preferences.swift
//  App Interface
//
//  Created by Cindy Chen on 2024-06-13.
//

import SwiftUI

struct Preferences: View {
    @Binding var showingPreferences: Bool
    @State private var favoriteRecipe = ""
    @State private var selectedDietaryPreference = "None"
    @State private var selectedMealPreference = "No preferences"
    @State private var selectedCookingSkill = "Beginner"
    
    @State private var showDietaryPicker = false
    @State private var showMealPicker = false
    @State private var showCookingSkillPicker = false
    
    let dietaryPreferences = ["None", "Vegan", "Vegetarian", "Gluten-Free", "Keto", "Paleo"]
    let mealPreferences = ["No preferences", "Breakfast", "Lunch", "Dinner", "Snack"]
    let cookingSkills = ["Beginner", "Intermediate", "Advanced", "Expert"]
    
    var body: some View {
        VStack {
            Text("Set up your food")
                .font(.largeTitle)
                .bold()
                .padding()
            
            Form {
                Section {
                    TextField("Favorite Recipes", text: $favoriteRecipe)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                
                Section {
                    Button(action: {
                        showDietaryPicker.toggle()
                    }) {
                        HStack {
                            Text("Dietary preferences")
                            Spacer()
                            Text(selectedDietaryPreference)
                                .foregroundColor(.gray)
                        }
                    }
                    if showDietaryPicker {
                        Picker("Choose your dietary preferences", selection: $selectedDietaryPreference) {
                            ForEach(dietaryPreferences, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .frame(maxHeight: 150)
                        .transition(.slide)
                    }
                }
                
                Section {
                    Button(action: {
                        showMealPicker.toggle()
                    }) {
                        HStack {
                            Text("Meal preferences")
                            Spacer()
                            Text(selectedMealPreference)
                                .foregroundColor(.gray)
                        }
                    }
                    if showMealPicker {
                        Picker("Select meal plan", selection: $selectedMealPreference) {
                            ForEach(mealPreferences, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .frame(maxHeight: 150)
                        .transition(.slide)
                    }
                }
                
                Section {
                    Button(action: {
                        showCookingSkillPicker.toggle()
                    }) {
                        HStack {
                            Text("Cooking skills")
                            Spacer()
                            Text(selectedCookingSkill)
                                .foregroundColor(.gray)
                        }
                    }
                    if showCookingSkillPicker {
                        Picker("Identify your cooking level", selection: $selectedCookingSkill) {
                            ForEach(cookingSkills, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .frame(maxHeight: 150)
                        .transition(.slide)
                    }
                }
            }
            
            Button(action: {
                // Handle continue action, store selected values
                let selectedValues = """
                Favorite Recipe: \(favoriteRecipe)
                Dietary Preference: \(selectedDietaryPreference)
                Meal Preference: \(selectedMealPreference)
                Cooking Skill: \(selectedCookingSkill)
                """
                print(selectedValues)
                // Set showingPreferences to false to move to the main TabView
                showingPreferences = false
            }) {
                HStack {
                    Text("Continue")
                        .bold()
                    Image(systemName: "arrow.right.circle.fill")
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct Preferences_Previews: PreviewProvider {
    static var previews: some View {
        Preferences(showingPreferences: .constant(true))
    }
}
