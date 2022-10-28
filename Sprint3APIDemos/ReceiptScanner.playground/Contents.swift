//Step 1. Load a receipt image from Resource folder
import Vision
import UIKit
//import Cocoa

//Step 1. Load a receipt image from Resource folder
//Input an Image from the Resources folder. Enter only Receipt number and igore '-receipt' from file name
let image = UIImage(imageLiteralResourceName: getTestReceiptImageName(1008))


//Step 2. Declare a VNRecognizeTextRequest to detect text in the receipt image
let recognizeTextRequest = VNRecognizeTextRequest  { (request, error) in
    guard let observations = request.results as? [VNRecognizedTextObservation] else {
        print("Error: \(error! as NSError)")
        return
    }
    for currentObservation in observations {
        let topCandidate = currentObservation.topCandidates(1)
        if let recognizedText = topCandidate.first {
            //OCR Results
            print(recognizedText.string)
        }
    }
    let fillColor: UIColor = UIColor.green.withAlphaComponent(0.3)
   let result = visualization(image, observations: observations, boundingBoxColor: fillColor)
}
recognizeTextRequest.recognitionLevel = .accurate

//Step 3. Processing the receipt image using VNImageRequestHandler. 
func request(_ image: UIImage) {
    guard let cgImage = image.cgImage else {
        return
    }
    let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
    DispatchQueue.global(qos: .userInitiated).async {
        do {
            try handler.perform([recognizeTextRequest])
        }
        catch let error as NSError {
            print("Failed: \(error)")
        }
    }
}
request(image)
