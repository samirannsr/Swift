//: [Previous](@previous)

import Foundation
import UIKit

var str = "Hello, playground"

//: [Next](@next)
import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

class myCell: UICollectionViewCell {

    @IBOutlet public weak var myImageView: UIImageView?

    private var imageUrlString: String?

    private var downloadTask: URLSessionDownloadTask?
    public var imageURL: URL? {
        didSet {
            self.downloadItemImageForSearchResult(imageURL: imageURL)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }

    public func downloadItemImageForSearchResult(imageURL: URL?) {

        if let urlOfImage = imageURL {
            if let cachedImage = imageCache.object(forKey: urlOfImage.absoluteString as NSString)  {
            self.myImageView!.image = cachedImage as? UIImage
        } else {
            let session = URLSession.shared
            self.downloadTask = session.downloadTask(
                with: urlOfImage as URL, completionHandler: { [weak self] url, response, error in
                    if error == nil, let url = url, let data = NSData(contentsOf: url), let image = UIImage(data: data as Data) {

                        DispatchQueue.main.async() {

                            let imageToCache = image

                            if let strongSelf = self, let imageView = strongSelf.myImageView {

                                imageView.image = imageToCache

                                imageCache.setObject(imageToCache, forKey: urlOfImage.absoluteString as NSString , cost: 1)
                            }
                        }
                    } else {
                        //print("ERROR \(error?.localizedDescription)")
                    }
            })
            self.downloadTask!.resume()
        }
      }
    }

    override public func prepareForReuse() {
      self.downloadTask?.cancel()
      myImageView?.image = UIImage(named: "ImagePlaceholder")
    }

    deinit {
      self.downloadTask?.cancel()
      myImageView?.image = nil
    }
}
