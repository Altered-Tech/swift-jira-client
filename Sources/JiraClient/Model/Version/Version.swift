//
// Version.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Details about a project version. */

public struct Version {

    /** If the expand option &#x60;approvers&#x60; is used, returns a list containing the approvers for this version. */
    public var approvers: [VersionApprover]?
    /** Indicates that the version is archived. Optional when creating or updating a version. */
    public var archived: Bool?
    /** The description of the version. Optional when creating or updating a version. The maximum size is 16,384 bytes. */
    public var description: String?
    /** If the expand option &#x60;driver&#x60; is used, returns the Atlassian account ID of the driver. */
    public var driver: String?
    /** Use [expand](em&gt;#expansion) to include additional information about version in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;operations&#x60; Returns the list of operations available for this version.  *  &#x60;issuesstatus&#x60; Returns the count of issues in this version for each of the status categories *to do*, *in progress*, *done*, and *unmapped*. The *unmapped* property contains a count of issues with a status other than *to do*, *in progress*, and *done*.  *  &#x60;driver&#x60; Returns the Atlassian account ID of the version driver.  *  &#x60;approvers&#x60; Returns a list containing approvers for this version.  Optional for create and update. */
    public var expand: String?
    /** The ID of the version. */
    public var id: String?
    /** If the expand option &#x60;issuesstatus&#x60; is used, returns the count of issues in this version for each of the status categories *to do*, *in progress*, *done*, and *unmapped*. The *unmapped* property contains a count of issues with a status other than *to do*, *in progress*, and *done*. */
    public var issuesStatusForFixVersion: VersionIssuesStatus?
    /** The URL of the self link to the version to which all unfixed issues are moved when a version is released. Not applicable when creating a version. Optional when updating a version. */
    public var moveUnfixedIssuesTo: String?
    /** The unique name of the version. Required when creating a version. Optional when updating a version. The maximum length is 255 characters. */
    public var name: String?
    /** If the expand option &#x60;operations&#x60; is used, returns the list of operations available for this version. */
    public var operations: [SimpleLink]?
    /** Indicates that the version is overdue. */
    public var overdue: Bool?
    /** Deprecated. Use &#x60;projectId&#x60;. */
    public var project: String?
    /** The ID of the project to which this version is attached. Required when creating a version. Not applicable when updating a version. */
    public var projectId: Int64?
    /** The release date of the version. Expressed in ISO 8601 format (yyyy-mm-dd). Optional when creating or updating a version. */
    public var releaseDate: String?
    /** Indicates that the version is released. If the version is released a request to release again is ignored. Not applicable when creating a version. Optional when updating a version. */
    public var released: Bool?
    /** The URL of the version. */
    public var _self: String?
    /** The start date of the version. Expressed in ISO 8601 format (yyyy-mm-dd). Optional when creating or updating a version. */
    public var startDate: String?
    /** The date on which work on this version is expected to finish, expressed in the instance&#x27;s *Day/Month/Year Format* date format. */
    public var userReleaseDate: String?
    /** The date on which work on this version is expected to start, expressed in the instance&#x27;s *Day/Month/Year Format* date format. */
    public var userStartDate: String?

    public init(
        approvers: [VersionApprover]? = nil,
        archived: Bool? = nil,
        description: String? = nil,
        driver: String? = nil,
        expand: String? = nil,
        id: String? = nil,
        issuesStatusForFixVersion: VersionIssuesStatus? = nil,
        moveUnfixedIssuesTo: String? = nil,
        name: String? = nil,
        operations: [SimpleLink]? = nil,
        overdue: Bool? = nil,
        project: String? = nil,
        projectId: Int64? = nil,
        releaseDate: String? = nil,
        released: Bool? = nil,
        _self: String? = nil,
        startDate: String? = nil,
        userReleaseDate: String? = nil,
        userStartDate: String? = nil
    ) {
        self.approvers = approvers
        self.archived = archived
        self.description = description
        self.driver = driver
        self.expand = expand
        self.id = id
        self.issuesStatusForFixVersion = issuesStatusForFixVersion
        self.moveUnfixedIssuesTo = moveUnfixedIssuesTo
        self.name = name
        self.operations = operations
        self.overdue = overdue
        self.project = project
        self.projectId = projectId
        self.releaseDate = releaseDate
        self.released = released
        self._self = _self
        self.startDate = startDate
        self.userReleaseDate = userReleaseDate
        self.userStartDate = userStartDate
    }

    internal init(client: Components.Schemas.Version?) {
        self.approvers = client?.approvers?.map{ VersionApprover(client: $0) }
        self.archived = client?.archived
        self.description = client?.description
        self.driver = client?.driver
        self.expand = client?.expand
        self.id = client?.id
        self.issuesStatusForFixVersion = VersionIssuesStatus(client: client?.issuesStatusForFixVersion?.value1)
        self.moveUnfixedIssuesTo = client?.moveUnfixedIssuesTo
        self.name = client?.name
        self.operations = client?.operations?.map{ SimpleLink(client: $0) }
        self.overdue = client?.overdue
        self.project = client?.project
        self.projectId = client?.projectId
        self.releaseDate = client?.releaseDate
        self.released = client?.released
        self._self = client?._self
        self.startDate = client?.startDate
        self.userReleaseDate = client?.userReleaseDate
        self.userStartDate = client?.userStartDate
    }
}
