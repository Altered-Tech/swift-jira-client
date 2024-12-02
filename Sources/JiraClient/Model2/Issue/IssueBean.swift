//
// IssueBean.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//
import OpenAPIRuntime
import Foundation


/** Details about an issue. */

public struct Issue {

    /** Details of changelogs associated with the issue. */
    public let changelog: PageOfChangelogs?
    /** The metadata for the fields on the issue that can be amended. */
    public let editmeta: IssueUpdateMetadata?
    /** Expand options that include additional issue details in the response. */
    public let expand: String?
    public let fields: [String: (any Sendable)?]?
    public let fieldsToInclude: IncludedFields?
    /** The ID of the issue. */
    public let id: String?
    /** The key of the issue. */
    public let key: String?
    /** The ID and name of each field present on the issue. */
    public let names: [String:String]?
    /** The operations that can be performed on the issue. */
    public let operations: Operation?
    /** Details of the issue properties identified in the request. */
    public let properties: [String:Any]?
    /** The rendered value of each field present on the issue. */
    public let renderedFields: [String:Any]?
    /** The schema describing each field present on the issue. */
//    public let schema: [String:JsonTypeBean]?
    /** The URL of the issue details. */
    public let _self: String?
    /** The transitions that can be performed on the issue. */
    public let transitions: [IssueTransition]?
    /** The versions of each field on the issue. */
//    public let versionedRepresentations: [String:[String:Any]]?
    
    internal init(client: Components.Schemas.IssueBean?) {
        self.changelog = PageOfChangelogs(client: client?.changelog?.value1)
        self.editmeta = IssueUpdateMetadata(client: client?.editmeta?.value1)
        self.expand = client?.expand
        self.fields = client?.fields?.additionalProperties.value
        self.fieldsToInclude = IncludedFields(client: client?.fieldsToInclude)
        self.id = client?.id
        self.key = client?.key
        self.names = client?.names?.additionalProperties
        self.operations = Operation(client: client?.operations?.value1)
        self.properties = client?.properties?.additionalProperties
        self.renderedFields = client?.renderedFields?.additionalProperties
//        self.schema = client?.schema?.additionalProperties.map{ }
        self._self = client?._self
        self.transitions = client?.transitions?.map{ IssueTransition(client: $0) }
        
    }
    
}
