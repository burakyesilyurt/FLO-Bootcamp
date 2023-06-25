//
//  quotes.swift
//  Unlu_Alintilari
//
//  Created by Burak Yeşilyurt on 25.06.2023.
//

import Foundation

struct FamousQuotes {
    let quote: String
    let author: String
    let gender: Gender
}

enum Gender {
    case male
    case female
}

let quotes = [
    FamousQuotes(quote: "I'm not here to be perfect, I'm here to be real.", author: "Lady Gaga", gender: .female),
    FamousQuotes(quote: "I'm not interested in money. I just want to be wonderful.", author: "Marilyn Monroe", gender: .female),
    FamousQuotes(quote: "The only thing that feels better than winning is winning when nobody thought you could.", author: "Hank Aaron", gender: .male),
    FamousQuotes(quote: "Success is not final, failure is not fatal: It is the courage to continue that counts.", author: "Winston Churchill", gender: .male),
    FamousQuotes(quote: "If you can dream it, you can do it.", author: "Walt Disney", gender: .male),
    FamousQuotes(quote: "If you want something done, ask a busy person to do it.", author: "Laura Ingalls Wilder", gender: .female),
    FamousQuotes(quote: "If your actions inspire others to dream more, learn more, do more and become more, you are a leader.", author: "John Quincy Adams", gender: .male),
    FamousQuotes(quote: "The best way to find out if you can trust somebody is to trust them.", author: "Ernest Hemingway", gender: .male),
    FamousQuotes(quote: "The only Limit to our realization of tomorrow will be our doubts of today.", author: "Franklin D. Roosevelt", gender: .male),
    FamousQuotes(quote: "We may encounter many defeats but we must not be defeated.", author: "Maya Angelou", gender: .female),
    FamousQuotes(quote: "The most important thing is to enjoy your life - to be happy - it's all that matters.", author: "Steve Jobs", gender: .male),
    FamousQuotes(quote: "Your time is limited, don't waste it living someone else's life.", author: "Steve Jobs", gender: .male),
    FamousQuotes(quote: "The best way to find out what you want in life is to try a lot of things.", author: "Oprah Winfrey", gender: .female),
    FamousQuotes(quote: "In order to be truly happy, you must pursue your dreams and goals.", author: "Oprah Winfrey", gender: .female),
    FamousQuotes(quote: "You can have anything you want if you are willing to give up everything you have.", author: "Oprah Winfrey", gender: .female),
    FamousQuotes(quote: "Don't let anyone tell you what you can't do. Follow your dreams and persist.", author: "Barack Obama", gender: .male),
    FamousQuotes(quote: "You only live once, but if you do it right, once is enough.", author: "Mae West", gender: .female),
    FamousQuotes(quote: "Life is what we make it and how we make it – whether we realize it or not.", author: "Napoleon Hill", gender: .male),
    FamousQuotes(quote: "The road to success is always under construction.", author: "Lily Tomlin", gender: .female),
    FamousQuotes(quote: "I'm not a self-made man. I've had a lot of help.", author: "Stan Lee", gender: .male),
    FamousQuotes(quote: "If you don't build your dream, someone else will hire you to help them build theirs.", author: "Tony Gaskins", gender: .male),
    FamousQuotes(quote: "You've got to be in it to win it.", author: "Tony Robbins", gender: .male),
    FamousQuotes(quote: "Success is stumbling from failure to failure with no loss of enthusiasm.", author: "Winston Churchill", gender: .male),
    FamousQuotes(quote: "People often say that motivation doesn't last. Well, neither does bathing. That's why we recommend it daily.", author: "Zig Ziglar", gender: .male),
    FamousQuotes(quote: "If you want to make your dreams come true, the first thing you have to do is wake up.", author: "J.M. Power", gender: .male),
    FamousQuotes(quote: "The only limit to our realization of tomorrow will be our doubts of today.", author: "Franklin D. Roosevelt", gender: .male),
    FamousQuotes(quote: "We may encounter many defeats but we must not be defeated.", author: "Maya Angelou", gender: .female),
    FamousQuotes(quote: "Be persistent and never give up hope.", author: "George Lucas", gender: .male),
    FamousQuotes(quote: "The best way to find out if you can trust somebody is to trust them.", author: "Ernest Hemingway", gender: .male),
    FamousQuotes(quote: "The only way to do great work is to love what you do.", author: "Steve Jobs", gender: .male),
    FamousQuotes(quote: "If you want to live a happy life, tie it to a goal, not to people or things.", author: "Albert Einstein", gender: .male),
    FamousQuotes(quote: "If you can't handle me at my worst, then you sure as hell don't deserve me at my best.", author: "Marilyn Monroe", gender: .female),
    FamousQuotes(quote: "I can't change the direction of the wind, but I can adjust my sails to always reach my destination.", author: "Jimmy Dean", gender: .male),
    FamousQuotes(quote: "The only Limit to our realization of tomorrow will be our doubts of today.", author: "Franklin D. Roosevelt", gender: .male),
    FamousQuotes(quote: "Don't let yesterday take up too much of today.", author: "Will Rogers", gender: .male),
    FamousQuotes(quote: "It is never too late to be what you might have been.", author: "George Eliot", gender: .female),
    FamousQuotes(quote: "Don't walk in front of me; I may not follow. Don't walk behind me; I may not lead. Walk beside me; just be my friend.", author: "Albert Camus", gender: .male),
    FamousQuotes(quote: "I can accept failure, everyone fails at something. But I can't accept not trying.", author: "Michael Jordan", gender: .male),
    FamousQuotes(quote: "I have a dream.", author: "Martin Luther King Jr.", gender: .male),
    FamousQuotes(quote: "The greatest glory in living lies not in never falling, but in rising every time we fall.", author: "Nelson Mandela", gender: .male),
    FamousQuotes(quote: "The way to get started is to quit talking and begin doing.", author: "Walt Disney", gender: .male),
    FamousQuotes(quote: "So we beat on, boats against the current, borne back ceaselessly into the past.", author: "F. Scott Fitzgerald", gender: .male),
    FamousQuotes(quote: "A journey of a thousand miles begins with a single step.", author: "Lao Tzu", gender: .male),
    FamousQuotes(quote: "Don't judge each day by the harvest you reap but by the seeds that you plant.", author: "Robert Louis Stevenson", gender: .male),
    FamousQuotes(quote: "If you want to make your dreams come true, the first thing you have to do is wake up.", author: "J.M. Power", gender: .male),
    FamousQuotes(quote: "I can't change the direction of the wind, but I can adjust my sails to always reach my destination.", author: "Jimmy Dean", gender: .male),
    FamousQuotes(quote: "Believe you can and you're halfway there.", author: "Theodore Roosevelt", gender: .male),
    FamousQuotes(quote: "The best and most beautiful things in the world cannot be seen or even heard, but must be felt with the heart.", author: "Helen Keller", gender: .female)
]


