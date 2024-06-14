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
    

struct Preferences_Previews: PreviewProvider {
    static var previews: some View {
        Preferences(showingPreferences: .constant(true))
    }
}
