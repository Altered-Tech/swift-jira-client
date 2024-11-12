//import Foundation
//
//// MARK: - ProjectCategory
//public struct ProjectCategory {
//    public let description, id, name: String?
//    public let projectCategorySelf: String?
//
//    public init(description: String, id: String, name: String, projectCategorySelf: String) {
//        self.description = description
//        self.id = id
//        self.name = name
//        self.projectCategorySelf = projectCategorySelf
//    }
//    
//    internal init(client: Components.Schemas.ProjectCategory?) {
//        self.description = client?.description
//        self.id = client?.id
//        self.name = client?.name
//        self.projectCategorySelf = client?._self
//    }
//    
//    internal init(client: Components.Schemas.UpdatedProjectCategory?) {
//        self.description = client?.description
//        self.id = client?.id
//        self.name = client?.name
//        self.projectCategorySelf = client?._self
//    }
//}
