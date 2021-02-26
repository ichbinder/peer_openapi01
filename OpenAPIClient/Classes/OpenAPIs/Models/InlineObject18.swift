//
// InlineObject18.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct InlineObject18: Codable {

    /** Start position of the element to reorder */
    public var startPosition: Int
    /** New position for the block to reorder, to add the block before the first element */
    public var insertAfterPosition: Int
    /** How many element from &#x60;startPosition&#x60; to reorder */
    public var reorderLength: Int?

    public init(startPosition: Int, insertAfterPosition: Int, reorderLength: Int? = nil) {
        self.startPosition = startPosition
        self.insertAfterPosition = insertAfterPosition
        self.reorderLength = reorderLength
    }

}
