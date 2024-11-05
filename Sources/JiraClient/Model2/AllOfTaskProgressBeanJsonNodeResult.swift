//
// AllOfTaskProgressBeanJsonNodeResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The result of the task execution. */

public struct AllOfTaskProgressBeanJsonNodeResult: Codable {

    public enum NumberType: String, Codable { 
        case int = "INT"
        case long = "LONG"
        case bigInteger = "BIG_INTEGER"
        case float = "FLOAT"
        case double = "DOUBLE"
        case bigDecimal = "BIG_DECIMAL"
    }
    public var array: Bool?
    public var bigDecimal: Bool?
    public var bigInteger: Bool?
    public var bigIntegerValue: Int?
    public var binary: Bool?
    public var binaryValue: [Data]?
    public var boolean: Bool?
    public var booleanValue: Bool?
    public var containerNode: Bool?
    public var decimalValue: Decimal?
    public var double: Bool?
    public var doubleValue: Double?
    public var elements: Any?
    public var fieldNames: Any?
    public var fields: Any?
    public var floatingPointNumber: Bool?
    public var int: Bool?
    public var intValue: Int?
    public var integralNumber: Bool?
    public var long: Bool?
    public var longValue: Int64?
    public var missingNode: Bool?
    public var null: Bool?
    public var number: Bool?
    public var numberType: NumberType?
    public var numberValue: Decimal?
    public var object: Bool?
    public var pojo: Bool?
    public var textValue: String?
    public var textual: Bool?
    public var valueAsBoolean: Bool?
    public var valueAsDouble: Double?
    public var valueAsInt: Int?
    public var valueAsLong: Int64?
    public var valueAsText: String?
    public var valueNode: Bool?

    public init(array: Bool? = nil, bigDecimal: Bool? = nil, bigInteger: Bool? = nil, bigIntegerValue: Int? = nil, binary: Bool? = nil, binaryValue: [Data]? = nil, boolean: Bool? = nil, booleanValue: Bool? = nil, containerNode: Bool? = nil, decimalValue: Decimal? = nil, double: Bool? = nil, doubleValue: Double? = nil, elements: Any? = nil, fieldNames: Any? = nil, fields: Any? = nil, floatingPointNumber: Bool? = nil, int: Bool? = nil, intValue: Int? = nil, integralNumber: Bool? = nil, long: Bool? = nil, longValue: Int64? = nil, missingNode: Bool? = nil, null: Bool? = nil, number: Bool? = nil, numberType: NumberType? = nil, numberValue: Decimal? = nil, object: Bool? = nil, pojo: Bool? = nil, textValue: String? = nil, textual: Bool? = nil, valueAsBoolean: Bool? = nil, valueAsDouble: Double? = nil, valueAsInt: Int? = nil, valueAsLong: Int64? = nil, valueAsText: String? = nil, valueNode: Bool? = nil) {
        self.array = array
        self.bigDecimal = bigDecimal
        self.bigInteger = bigInteger
        self.bigIntegerValue = bigIntegerValue
        self.binary = binary
        self.binaryValue = binaryValue
        self.boolean = boolean
        self.booleanValue = booleanValue
        self.containerNode = containerNode
        self.decimalValue = decimalValue
        self.double = double
        self.doubleValue = doubleValue
        self.elements = elements
        self.fieldNames = fieldNames
        self.fields = fields
        self.floatingPointNumber = floatingPointNumber
        self.int = int
        self.intValue = intValue
        self.integralNumber = integralNumber
        self.long = long
        self.longValue = longValue
        self.missingNode = missingNode
        self.null = null
        self.number = number
        self.numberType = numberType
        self.numberValue = numberValue
        self.object = object
        self.pojo = pojo
        self.textValue = textValue
        self.textual = textual
        self.valueAsBoolean = valueAsBoolean
        self.valueAsDouble = valueAsDouble
        self.valueAsInt = valueAsInt
        self.valueAsLong = valueAsLong
        self.valueAsText = valueAsText
        self.valueNode = valueNode
    }


}
