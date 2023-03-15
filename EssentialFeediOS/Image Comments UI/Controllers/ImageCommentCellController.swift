//	
// Copyright © 2023 Alexander Sundiev. All rights reserved.
//

import UIKit
import EssentialFeed

public class ImageCommentCellController: CellController {
    private let model: ImageCommentViewModel
    
    public init(model: ImageCommentViewModel) {
        self.model = model
    }
    
    public func view(in tableView: UITableView) -> UITableViewCell {
        let cell: ImageCommentCell = tableView.dequeueReusableCell()
        cell.usernameLabel.text = model.username
        cell.dateLabel.text = model.date
        cell.messageLabel.text = model.message
        return cell
    }
    
    public func preload() {
        
    }
    
    public func cancelLoad() {
        
    }
}
