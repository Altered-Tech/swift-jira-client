//import Foundation
//
//// MARK: - Comment
//public struct Comment {
//    public let author: User?
//    public let body: String?
//    public let created: Date?
//    public let id: String?
//    public let commentSelf: String?
//    public let updateAuthor: User?
//    public let updated: Date?
//    public let visibility: Visibility?
//
//    public init(author: User, body: String, created: Date, id: String, commentSelf: String, updateAuthor: User, updated: Date, visibility: Visibility) {
//        self.author = author
//        self.body = body
//        self.created = created
//        self.id = id
//        self.commentSelf = commentSelf
//        self.updateAuthor = updateAuthor
//        self.updated = updated
//        self.visibility = visibility
//    }
//    
//    internal init(client: Components.Schemas.Comment) {
//        self.author = User(client: client.author?.value1)
//        self.body = client.body
//        self.created = client.created
//        self.id = client.id
//        self.commentSelf = client._self
//        self.updateAuthor = User(client: client.updateAuthor?.value1)
//        self.updated = client.updated
//        self.visibility = Visibility(client: client.visibility?.value1)
//    }
//}
//
