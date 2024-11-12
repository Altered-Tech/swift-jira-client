//import Foundation
//
//// MARK: - Attachment
//public struct Attachment {
//    public let author: User?
//    public let content: String?
//    public let created: Date?
//    public let filename: String?
//    public let id: String?
//    public let mimeType: String?
//    public let attachmentSelf: String?
//    public let size: Int64?
//
//    public init(author: User, content: String?, created: Date?, filename: String?, id: String?, mimeType: String?, attachmentSelf: String?, size: Int64?) {
//        self.author = author
//        self.content = content
//        self.created = created
//        self.filename = filename
//        self.id = id
//        self.mimeType = mimeType
//        self.attachmentSelf = attachmentSelf
//        self.size = size
//    }
//    
//    internal init(client: Components.Schemas.Attachment) {
//        self.author = User(client: client.author?.value1)
//        self.content = client.content
//        self.created = client.created
//        self.filename = client.filename
//        self.id = client.id
//        self.mimeType = client.mimeType
//        self.attachmentSelf = client._self
//        self.size = client.size
//    }
//}
