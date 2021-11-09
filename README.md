# SwiftUI-weak-self
SwiftUI project demonstrating how weak self works

Inspired by Swiftful Thinking's video on the topic: https://www.youtube.com/watch?v=TPHp9kR0Go8 

Before diving into what weak self is, I would recommend reading up on what ARC (Automatic Reference Counting) is: https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html

Weak self is used in order to more effectively allocate memory when you run into asynchronous tasks, such as downloading data from a server. Usually Swift is able to take care of allocating and deallocting memory for us using ARC (Automatic Reference Counting). But occasionally you 

