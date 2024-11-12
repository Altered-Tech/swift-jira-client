//
// AllOfJiraExpressionEvaluationMetaDataBeanComplexity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about the expression complexity. For example, the number of steps it took to evaluate the expression. */

public struct AllOfJiraExpressionEvaluationMetaDataBeanComplexity {

    /** The number of Jira REST API beans returned in the response. */
    public var beans: Any
    /** The number of expensive operations executed while evaluating the expression. Expensive operations are those that load additional data, such as entity properties, comments, or custom fields. */
    public var expensiveOperations: Any
    /** The number of primitive values returned in the response. */
    public var primitiveValues: Any
    /** The number of steps it took to evaluate the expression, where a step is a high-level operation performed by the expression. A step is an operation such as arithmetic, accessing a property, accessing a context variable, or calling a function. */
    public var steps: Any

    public init(beans: Any, expensiveOperations: Any, primitiveValues: Any, steps: Any) {
        self.beans = beans
        self.expensiveOperations = expensiveOperations
        self.primitiveValues = primitiveValues
        self.steps = steps
    }


}
