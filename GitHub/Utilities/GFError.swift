//
//  GFError.swift
//  GitHub
//
//  Created by Sai Teja Atluri on 5/29/24.
//


import Foundation
enum GFError: String, Error{
    case invalidUsername    = "This username created an invalid request"
    case unableToComplete   = "Could not complete your request. Please check your internet connection"
    case invalidResponse    = "Invalid response from the server. Please try again"
    case invalidData        = "The data received from the server is invalid. Please try again"
    case unableToFavorite   = "There was an error favoriting this user. Please try again."
    case alreadyInFavorite  = "This user is already added to your favorite's list"
}
