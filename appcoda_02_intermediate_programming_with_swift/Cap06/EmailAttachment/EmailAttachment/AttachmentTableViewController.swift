//
//  AttachmentTableViewController.swift
//  EmailAttachment
//
//  Created by Lucas Inocencio on 21/07/20.
//  Copyright © 2020 Lucas Inocencio. All rights reserved.
//

import UIKit
import MessageUI



class AttachmentTableViewController: UITableViewController {
    
    enum MIMEType: String {
        case jpg = "image/jpeg"
        case png = "image/png"
        case doc = "application/msword"
        case ppt = "application/vnd.ms-powerpoint"
        case html = "text/html"
        case pdf = "application/pdf"
        
        init?(type: String) {
            switch type.lowercased() {
            case "jpg": self = .jpg
            case "png": self = .png
            case "doc": self = .doc
            case "ppt": self = .ppt
            case "html": self = .html
            case "pdf": self = .pdf
            default: return nil
            }
        }
    }
    
    let filenames = ["10 Great iPhone Tips.pdf", "camera-photo-tips.html", "foggy.jpg", "Hello World.ppt", "no more complaint.png", "Why Appcoda.doc"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Enable large title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows
        return filenames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = filenames[indexPath.row]
        cell.imageView?.image = UIImage(named: "icon\(indexPath.row)");
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedFile = filenames[indexPath.row]
        showEmail(attachment: selectedFile)
    }
    
    // MARK: - Methods
    
    func showEmail(attachment: String) {
        guard MFMailComposeViewController.canSendMail() else {
            print("This device doesn't allow to send email.")
            return
        }
        
        let emailTitle = "Great Photo and Doc"
        let messageBody = "Hey, check this out!"
        let toRecepients = ["support@appcoda.com"]
        
        // Initialize the email composer and populate the email content
        let mailComposer = MFMailComposeViewController()
        mailComposer.mailComposeDelegate = self
        mailComposer.setSubject(emailTitle)
        mailComposer.setMessageBody(messageBody, isHTML: false)
        mailComposer.setToRecipients(toRecepients)
        
        // Determine the file name and extensions
        let fileparts = attachment.components(separatedBy: ".")
        let filename = fileparts[0]
        let fileExtension = fileparts[1]
        
        // Get the resource path and read the file file using NSData
        guard let filePath = Bundle.main.path(forResource: filename, ofType: fileExtension) else {
            return
        }
        
        // Get the file data and MIME type
        if let fileData = try? Data(contentsOf: URL(fileURLWithPath: filePath)),
            let mimeType = MIMEType(type: fileExtension) {
            // Add attachment
            mailComposer.addAttachmentData(fileData, mimeType: mimeType.rawValue, fileName: filename)
            // Present mail view controller on screen
            present(mailComposer, animated: true, completion: nil)
        }
    }
    
}

extension AttachmentTableViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        switch result {
        case MFMailComposeResult.cancelled:
            print("Mail cancelled")
        case MFMailComposeResult.saved:
            print("Mail saved")
        case MFMailComposeResult.sent:
            print("Mail sent")
        case MFMailComposeResult.failed:
            print("Failed to send:\(error?.localizedDescription ?? "")")
        default: break
        }
        
        dismiss(animated: true, completion: nil)
    }
}
