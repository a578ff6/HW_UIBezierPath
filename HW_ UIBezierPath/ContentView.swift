import SwiftUI

struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        // 添加背景
        let southParkImage = UIImage(named: "south-park-bus-stop")
        let southParkImageView = UIImageView(image: southParkImage)
        southParkImageView.frame = CGRect(x: 0, y: 0, width: 393, height: 852)
        southParkImageView.contentMode = .scaleToFill
        view.addSubview(southParkImageView)
        
        // 製作cartman 位移、縮放、 concatenating運用
        let cartmanView = UIView(frame: CGRect(x: 0, y: 0, width: 393, height: 852))
        let cartmanViewTranslateTransform = CGAffineTransform(translationX: 0, y: 300)
        let cartmanViewScaleTransform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        cartmanView.transform = cartmanViewTranslateTransform.concatenating(cartmanViewScaleTransform)
        cartmanView.backgroundColor = UIColor.clear
        view.addSubview(cartmanView)
    
        // 身體
        let bodySharpPath = UIBezierPath()
        bodySharpPath.move(to: CGPoint(x: 73.2, y: 421.9))
        bodySharpPath.addCurve(to: CGPoint(x: 36.4, y: 526.7), controlPoint1: CGPoint(x: 25.5, y: 447.9), controlPoint2: CGPoint(x: -10.2, y: 514.8))
        bodySharpPath.addLine(to: CGPoint(x: 38.2, y: 554.4))
        bodySharpPath.addLine(to: CGPoint(x: 54.3, y: 564.2))
        bodySharpPath.addLine(to: CGPoint(x: 63.9, y: 596.2))
        bodySharpPath.addLine(to: CGPoint(x: 47.8, y: 599))
        bodySharpPath.addLine(to: CGPoint(x: 353.3, y: 600.1))
        bodySharpPath.addLine(to: CGPoint(x: 341.6, y: 592.3))
        bodySharpPath.addLine(to: CGPoint(x: 353.1, y: 563.5))
        bodySharpPath.addLine(to: CGPoint(x: 348, y: 560.6))
        bodySharpPath.addCurve(to: CGPoint(x: 369.9, y: 520.3), controlPoint1: CGPoint(x: 358.1, y: 565.1), controlPoint2: CGPoint(x: 379, y: 523.8))
        bodySharpPath.addCurve(to: CGPoint(x: 370.7, y: 466.7), controlPoint1: CGPoint(x: 400.7, y: 521.9), controlPoint2: CGPoint(x: 388.2, y: 457.4))
        bodySharpPath.addCurve(to: CGPoint(x: 326.8, y: 425.6), controlPoint1: CGPoint(x: 380.3, y: 461.5), controlPoint2: CGPoint(x: 333.6, y: 420.7))
        bodySharpPath.addLine(to: CGPoint(x: 73.2, y: 421.9))
        bodySharpPath.close()
        
        let bodyPathSharpLayer = CAShapeLayer()
        bodyPathSharpLayer.path = bodySharpPath.cgPath
        bodyPathSharpLayer.fillColor = UIColor(red: 228/255, green: 0, blue: 0, alpha: 1).cgColor
        bodyPathSharpLayer.strokeColor = UIColor.black.cgColor
        bodyPathSharpLayer.lineWidth = 2
        cartmanView.layer.addSublayer(bodyPathSharpLayer)
        
        // 拉鍊
        let zipperSharpPath = UIBezierPath()
        let zipperStartPoint = CGPoint(x: 211, y: 490)
        zipperSharpPath.move(to: zipperStartPoint)
        zipperSharpPath.addLine(to: CGPoint(x: 215, y: 588))
        zipperSharpPath.addLine(to: CGPoint(x: 211, y: 588))
        zipperSharpPath.close()
        
        let zipperSharpLayer = CAShapeLayer()
        zipperSharpLayer.path = zipperSharpPath.cgPath
        zipperSharpLayer.strokeColor = UIColor.clear.cgColor
        zipperSharpLayer.lineWidth = 10
        cartmanView.layer.addSublayer(zipperSharpLayer)
        
        //中間鈕扣
        let middleButtonSharpPath = UIBezierPath()
        middleButtonSharpPath.move(to: CGPoint(x: 203, y: 534.6))
        middleButtonSharpPath.addCurve(to: CGPoint(x: 201.9, y: 538.4), controlPoint1: CGPoint(x: 203, y: 536.1), controlPoint2: CGPoint(x: 202.6, y: 537.4))
        middleButtonSharpPath.addCurve(to: CGPoint(x: 199.1, y: 540.1), controlPoint1: CGPoint(x: 201.3, y: 539.4), controlPoint2: CGPoint(x: 200.2, y: 540.1))
        middleButtonSharpPath.addCurve(to: CGPoint(x: 196.3, y: 538.4), controlPoint1: CGPoint(x: 198, y: 540.1), controlPoint2: CGPoint(x: 196.9, y: 539.4))
        middleButtonSharpPath.addCurve(to: CGPoint(x: 195.2, y: 534.6), controlPoint1: CGPoint(x: 195.6, y: 537.4), controlPoint2: CGPoint(x: 195.2, y: 536.1))
        middleButtonSharpPath.addCurve(to: CGPoint(x: 196.3, y: 530.8), controlPoint1: CGPoint(x: 195.2, y: 533.2), controlPoint2: CGPoint(x: 195.6, y: 531.8))
        middleButtonSharpPath.addCurve(to: CGPoint(x: 199.1, y: 529.2), controlPoint1: CGPoint(x: 196.9, y: 529.9), controlPoint2: CGPoint(x: 198, y: 529.2))
        middleButtonSharpPath.addCurve(to: CGPoint(x: 201.9, y: 530.8), controlPoint1: CGPoint(x: 200.2, y: 529.2), controlPoint2: CGPoint(x: 201.3, y: 529.9))
        middleButtonSharpPath.addCurve(to: CGPoint(x: 203, y: 534.6), controlPoint1: CGPoint(x: 202.6, y: 531.8), controlPoint2: CGPoint(x: 203, y: 533.2))
        middleButtonSharpPath.close()
        
        let middleButtonSharpLayer = CAShapeLayer()
        middleButtonSharpLayer.path = middleButtonSharpPath.cgPath
        middleButtonSharpLayer.fillColor = UIColor.black.cgColor
        cartmanView.layer.addSublayer(middleButtonSharpLayer)
        
        //最下方的鈕扣 (由中間鈕扣去做位移）
        let hemButtonSharpLayer = CAShapeLayer()
        hemButtonSharpLayer.path = middleButtonSharpPath.cgPath
        let hemButtonBondingBox = middleButtonSharpPath.cgPath.boundingBox
        hemButtonSharpLayer.bounds = hemButtonBondingBox
        hemButtonSharpLayer.position = CGPoint(x: hemButtonBondingBox.midX, y: hemButtonBondingBox.midY)
        hemButtonSharpLayer.setAffineTransform(CGAffineTransform(translationX: 0, y: 27))
        hemButtonSharpLayer.fillColor = UIColor.black.cgColor
        cartmanView.layer.addSublayer(hemButtonSharpLayer)
        
        //最上方的紐夠 （由中間鈕扣去做位移)
        let collarButtonSharpLayer = CAShapeLayer()
        collarButtonSharpLayer.path = middleButtonSharpPath.cgPath
        let collarButtonBoundingBox = middleButtonSharpPath.cgPath.boundingBox
        collarButtonSharpLayer.bounds = collarButtonBoundingBox
        collarButtonSharpLayer.position = CGPoint(x: collarButtonBoundingBox.midX, y: collarButtonBoundingBox.midY)
        collarButtonSharpLayer.setAffineTransform(CGAffineTransform(translationX: 0, y: -27))
        collarButtonSharpLayer.fillColor = UIColor.black.cgColor
        cartmanView.layer.addSublayer(collarButtonSharpLayer)
        
        // 臉部
        let faceShapPath = UIBezierPath()
        faceShapPath.move(to: CGPoint(x: 339.6, y: 378.9))
        faceShapPath.addCurve(to: CGPoint(x: 298.8, y: 459), controlPoint1: CGPoint(x: 339.6, y: 410.2), controlPoint2: CGPoint(x: 323.9, y: 438.6))
        faceShapPath.addCurve(to: CGPoint(x: 200.5, y: 492.2), controlPoint1: CGPoint(x: 273.7, y: 479.5), controlPoint2: CGPoint(x: 238.9, y: 492.2))
        faceShapPath.addCurve(to: CGPoint(x: 102.2, y: 459), controlPoint1: CGPoint(x: 162.2, y: 492.2), controlPoint2: CGPoint(x: 127.3, y: 479.5))
        faceShapPath.addCurve(to: CGPoint(x: 61.4, y: 378.9), controlPoint1: CGPoint(x: 77.1, y: 438.6), controlPoint2: CGPoint(x: 61.4, y: 410.2))
        faceShapPath.addCurve(to: CGPoint(x: 102.2, y: 298.8), controlPoint1: CGPoint(x: 61.4, y: 347.7), controlPoint2: CGPoint(x: 77.1, y: 319.3))
        faceShapPath.addCurve(to: CGPoint(x: 200.5, y: 265.7), controlPoint1: CGPoint(x: 127.3, y: 278.4), controlPoint2: CGPoint(x: 162.2, y: 265.7))
        faceShapPath.addCurve(to: CGPoint(x: 298.8, y: 298.8), controlPoint1: CGPoint(x: 238.9, y: 265.7), controlPoint2: CGPoint(x: 273.7, y: 278.4))
        faceShapPath.addCurve(to: CGPoint(x: 339.6, y: 378.9), controlPoint1: CGPoint(x: 323.9, y: 319.3), controlPoint2: CGPoint(x: 339.6, y: 347.7))
        faceShapPath.close()

        let faceShapPathLayer = CAShapeLayer()
        faceShapPathLayer.path = faceShapPath.cgPath
        faceShapPathLayer.fillColor = UIColor(red: 1, green: 226/255, blue: 196/255, alpha: 1).cgColor
        faceShapPathLayer.strokeColor = UIColor.black.cgColor
        faceShapPathLayer.lineWidth = 2
        cartmanView.layer.addSublayer(faceShapPathLayer)
        
        //脖子
        let neckSharpPath = UIBezierPath()
        neckSharpPath.move(to: CGPoint(x: 95.9, y: 433.2))
        neckSharpPath.addCurve(to: CGPoint(x: 97, y: 435), controlPoint1: CGPoint(x: 95.9, y: 433.2), controlPoint2: CGPoint(x: 96.5, y: 434.3))
        neckSharpPath.addCurve(to: CGPoint(x: 98.6, y: 437.3), controlPoint1: CGPoint(x: 97.4, y: 435.7), controlPoint2: CGPoint(x: 98, y: 436.4))
        neckSharpPath.addCurve(to: CGPoint(x: 103.6, y: 442.8), controlPoint1: CGPoint(x: 99.9, y: 438.9), controlPoint2: CGPoint(x: 101.6, y: 440.8))
        neckSharpPath.addCurve(to: CGPoint(x: 119.8, y: 456.4), controlPoint1: CGPoint(x: 107.6, y: 446.8), controlPoint2: CGPoint(x: 113.2, y: 451.6))
        neckSharpPath.addCurve(to: CGPoint(x: 172.3, y: 481.3), controlPoint1: CGPoint(x: 133.2, y: 465.9), controlPoint2: CGPoint(x: 151.4, y: 475.8))
        neckSharpPath.addCurve(to: CGPoint(x: 241.6, y: 479.7), controlPoint1: CGPoint(x: 193.3, y: 486.8), controlPoint2: CGPoint(x: 217.1, y: 487.8))
        neckSharpPath.addCurve(to: CGPoint(x: 315.7, y: 423.2), controlPoint1: CGPoint(x: 266.1, y: 471.6), controlPoint2: CGPoint(x: 291.5, y: 454.3))
        neckSharpPath.addLine(to: CGPoint(x: 314.9, y: 422.5))
        neckSharpPath.addCurve(to: CGPoint(x: 241.3, y: 478.8), controlPoint1: CGPoint(x: 290.9, y: 453.6), controlPoint2: CGPoint(x: 265.7, y: 470.7))
        neckSharpPath.addCurve(to: CGPoint(x: 172.6, y: 480.3), controlPoint1: CGPoint(x: 216.9, y: 486.8), controlPoint2: CGPoint(x: 193.4, y: 485.8))
        neckSharpPath.addCurve(to: CGPoint(x: 120.4, y: 455.5), controlPoint1: CGPoint(x: 151.8, y: 474.9), controlPoint2: CGPoint(x: 133.7, y: 465.1))
        neckSharpPath.addCurve(to: CGPoint(x: 104.3, y: 442.1), controlPoint1: CGPoint(x: 113.8, y: 450.8), controlPoint2: CGPoint(x: 108.3, y: 446.1))
        neckSharpPath.addCurve(to: CGPoint(x: 99.4, y: 436.6), controlPoint1: CGPoint(x: 102.3, y: 440.1), controlPoint2: CGPoint(x: 100.6, y: 438.2))
        neckSharpPath.addCurve(to: CGPoint(x: 97.8, y: 434.4), controlPoint1: CGPoint(x: 98.7, y: 435.8), controlPoint2: CGPoint(x: 98.2, y: 435.1))
        neckSharpPath.addCurve(to: CGPoint(x: 97.2, y: 433.5), controlPoint1: CGPoint(x: 97.6, y: 434.1), controlPoint2: CGPoint(x: 97.4, y: 433.8))
        neckSharpPath.addCurve(to: CGPoint(x: 96.8, y: 432.7), controlPoint1: CGPoint(x: 97.1, y: 433.2), controlPoint2: CGPoint(x: 96.8, y: 432.7))
        neckSharpPath.addCurve(to: CGPoint(x: 95.9, y: 433.2), controlPoint1: CGPoint(x: 96.8, y: 432.7), controlPoint2: CGPoint(x: 95.9, y: 433.2))
        neckSharpPath.close()

        let neckSharpLayer = CAShapeLayer()
        neckSharpLayer.path = neckSharpPath.cgPath
        neckSharpLayer.strokeColor = UIColor.black.cgColor
        neckSharpLayer.lineWidth = 1
        cartmanView.layer.addSublayer(neckSharpLayer)
        
        // 下巴 (位移縮放）順序
        let chinSharpLayer = CAShapeLayer()
        chinSharpLayer.path = neckSharpPath.cgPath
        let chinBoundingBox = neckSharpPath.cgPath.boundingBox
        chinSharpLayer.bounds = chinBoundingBox
        chinSharpLayer.position = CGPoint(x: chinBoundingBox.midX, y: chinBoundingBox.midY)
        let chinTransform = CGAffineTransform.identity.translatedBy(x: 3, y: 14).scaledBy(x: 0.2, y: 0.2)
        chinSharpLayer.setAffineTransform(chinTransform)
        chinSharpLayer.strokeColor = UIColor.black.cgColor
        chinSharpLayer.lineWidth = 8
        cartmanView.layer.addSublayer(chinSharpLayer)
        
        //嘴巴 mouth
        let mouthSharpPath = UIBezierPath()
        mouthSharpPath.move(to: CGPoint(x: 218.2, y: 451.5))
        mouthSharpPath.addCurve(to: CGPoint(x: 215.5, y: 459.2), controlPoint1: CGPoint(x: 218.2, y: 454.5), controlPoint2: CGPoint(x: 217.1, y: 457.2))
        mouthSharpPath.addCurve(to: CGPoint(x: 208.8, y: 462.3), controlPoint1: CGPoint(x: 213.8, y: 461.1), controlPoint2: CGPoint(x: 211.3, y: 462.3))
        mouthSharpPath.addCurve(to: CGPoint(x: 202.1, y: 459.2), controlPoint1: CGPoint(x: 206.2, y: 462.3), controlPoint2: CGPoint(x: 203.7, y: 461.1))
        mouthSharpPath.addCurve(to: CGPoint(x: 199.3, y: 451.5), controlPoint1: CGPoint(x: 200.4, y: 457.2), controlPoint2: CGPoint(x: 199.3, y: 454.5))
        mouthSharpPath.addCurve(to: CGPoint(x: 202.1, y: 443.9), controlPoint1: CGPoint(x: 199.3, y: 448.6), controlPoint2: CGPoint(x: 200.4, y: 445.9))
        mouthSharpPath.addCurve(to: CGPoint(x: 208.8, y: 440.7), controlPoint1: CGPoint(x: 203.7, y: 442), controlPoint2: CGPoint(x: 206.2, y: 440.7))
        mouthSharpPath.addCurve(to: CGPoint(x: 215.5, y: 443.9), controlPoint1: CGPoint(x: 211.3, y: 440.7), controlPoint2: CGPoint(x: 213.8, y: 442))
        mouthSharpPath.addCurve(to: CGPoint(x: 218.2, y: 451.5), controlPoint1: CGPoint(x: 217.1, y: 445.9), controlPoint2: CGPoint(x: 218.2, y: 448.6))
        mouthSharpPath.close()
        
        let mouthSharpLayer = CAShapeLayer()
        mouthSharpLayer.path = mouthSharpPath.cgPath
        mouthSharpLayer.fillColor = UIColor.black.cgColor
        cartmanView.layer.addSublayer(mouthSharpLayer)

        // 左眼（旋轉)
        let leftEyeSharpPath = UIBezierPath()
        leftEyeSharpPath.move(to: CGPoint(x: 198.8, y: 379.7))
        leftEyeSharpPath.addCurve(to: CGPoint(x: 191.1, y: 404.6), controlPoint1: CGPoint(x: 198.8, y: 389.4), controlPoint2: CGPoint(x: 195.9, y: 398.2))
        leftEyeSharpPath.addCurve(to: CGPoint(x: 172.3, y: 414.9), controlPoint1: CGPoint(x: 186.4, y: 410.9), controlPoint2: CGPoint(x: 179.7, y: 414.9))
        leftEyeSharpPath.addCurve(to: CGPoint(x: 153.6, y: 404.6), controlPoint1: CGPoint(x: 165, y: 414.9), controlPoint2: CGPoint(x: 158.3, y: 410.9))
        leftEyeSharpPath.addCurve(to: CGPoint(x: 145.9, y: 379.7), controlPoint1: CGPoint(x: 148.8, y: 398.2), controlPoint2: CGPoint(x: 145.9, y: 389.4))
        leftEyeSharpPath.addCurve(to: CGPoint(x: 153.6, y: 354.9), controlPoint1: CGPoint(x: 145.9, y: 370.1), controlPoint2: CGPoint(x: 148.8, y: 361.2))
        leftEyeSharpPath.addCurve(to: CGPoint(x: 172.3, y: 344.5), controlPoint1: CGPoint(x: 158.3, y: 348.5), controlPoint2: CGPoint(x: 165, y: 344.5))
        leftEyeSharpPath.addCurve(to: CGPoint(x: 191.1, y: 354.9), controlPoint1: CGPoint(x: 179.7, y: 344.5), controlPoint2: CGPoint(x: 186.4, y: 348.5))
        leftEyeSharpPath.addCurve(to: CGPoint(x: 198.8, y: 379.7), controlPoint1: CGPoint(x: 195.9, y: 361.2), controlPoint2: CGPoint(x: 198.8, y: 370.1))
        leftEyeSharpPath.close()
        
        let leftEyeSharpLayer = CAShapeLayer()
        leftEyeSharpLayer.path = leftEyeSharpPath.cgPath
        let leftEyeBoundingBox = leftEyeSharpPath.cgPath.boundingBox
        leftEyeSharpLayer.bounds = leftEyeBoundingBox
        leftEyeSharpLayer.position = CGPoint(x: leftEyeBoundingBox.midX, y: leftEyeBoundingBox.midY)
        leftEyeSharpLayer.setAffineTransform(CGAffineTransform(rotationAngle: .pi/180 * 30))
        leftEyeSharpLayer.fillColor = UIColor.white.cgColor
        cartmanView.layer.addSublayer(leftEyeSharpLayer)
        
        //右眼(鏡像＋旋轉）
        let rightEyeLayer = CAShapeLayer()
        rightEyeLayer.path = leftEyeSharpPath.cgPath
        let rightEyeBoundingBox = leftEyeSharpPath.cgPath.boundingBox
        rightEyeLayer.bounds = rightEyeBoundingBox
        rightEyeLayer.position = CGPoint(x: rightEyeBoundingBox.midX, y: rightEyeBoundingBox.midY)
//        let eyeTransform = CGAffineTransform(scaleX: -1, y: 1).translatedBy(x: -rightEyeBoundingBox.width - 5, y: 0).rotated(by: .pi/180 * 210)
        let eyeTransform = CGAffineTransform.identity.scaledBy(x: -1, y: 1).translatedBy(x: -rightEyeBoundingBox.width - 5, y: 0).rotated(by: .pi/180 * 210)
        rightEyeLayer.setAffineTransform(eyeTransform)
        rightEyeLayer.fillColor = UIColor.white.cgColor
        cartmanView.layer.addSublayer(rightEyeLayer)
        
        //左眼珠 (單純設置boundingBox）
        let leftEyeBallSharpPath = UIBezierPath()
        leftEyeBallSharpPath.move(to: CGPoint(x: 189.5, y: 381.3))
        leftEyeBallSharpPath.addCurve(to: CGPoint(x: 187.7, y: 385.5), controlPoint1: CGPoint(x: 189.5, y: 382.9), controlPoint2: CGPoint(x: 188.8, y: 384.5))
        leftEyeBallSharpPath.addCurve(to: CGPoint(x: 183.5, y: 387.2), controlPoint1: CGPoint(x: 186.7, y: 386.5), controlPoint2: CGPoint(x: 185.1, y: 387.2))
        leftEyeBallSharpPath.addCurve(to: CGPoint(x: 179.3, y: 385.5), controlPoint1: CGPoint(x: 181.9, y: 387.2), controlPoint2: CGPoint(x: 180.3, y: 386.5))
        leftEyeBallSharpPath.addCurve(to: CGPoint(x: 177.5, y: 381.3), controlPoint1: CGPoint(x: 178.2, y: 384.5), controlPoint2: CGPoint(x: 177.5, y: 382.9))
        leftEyeBallSharpPath.addCurve(to: CGPoint(x: 179.3, y: 377.2), controlPoint1: CGPoint(x: 177.5, y: 379.8), controlPoint2: CGPoint(x: 178.2, y: 378.2))
        leftEyeBallSharpPath.addCurve(to: CGPoint(x: 183.5, y: 375.5), controlPoint1: CGPoint(x: 180.3, y: 376.2), controlPoint2: CGPoint(x: 181.9, y: 375.5))
        leftEyeBallSharpPath.addCurve(to: CGPoint(x: 187.7, y: 377.2), controlPoint1: CGPoint(x: 185.1, y: 375.5), controlPoint2: CGPoint(x: 186.7, y: 376.2))
        leftEyeBallSharpPath.addCurve(to: CGPoint(x: 189.5, y: 381.3), controlPoint1: CGPoint(x: 188.8, y: 378.2), controlPoint2: CGPoint(x: 189.5, y: 379.8))
        leftEyeBallSharpPath.close()
        
        let leftEyeBallSharpLayer = CAShapeLayer()
        leftEyeBallSharpLayer.path = leftEyeBallSharpPath.cgPath
        let leftEyeBallBoundingBox = leftEyeBallSharpPath.cgPath.boundingBox
        leftEyeBallSharpLayer.bounds = leftEyeBallBoundingBox
        leftEyeBallSharpLayer.position = CGPoint(x: leftEyeBallBoundingBox.midX, y: leftEyeBallBoundingBox.midY)
        let leftEyeBallTranform = CGAffineTransform(scaleX: 1, y: 1)
        leftEyeBallSharpLayer.setAffineTransform(leftEyeBallTranform)
        leftEyeBallSharpLayer.fillColor = UIColor.black.cgColor
        cartmanView.layer.addSublayer(leftEyeBallSharpLayer)
        
        //右眼珠 (鏡像)
        let rightEyeBallSharpLayer = CAShapeLayer()
        rightEyeBallSharpLayer.path = leftEyeBallSharpPath.cgPath
        let rightEyeBallBoundingBox = leftEyeBallSharpPath.cgPath.boundingBox
        rightEyeBallSharpLayer.bounds = rightEyeBallBoundingBox
        rightEyeBallSharpLayer.position = CGPoint(x: rightEyeBallBoundingBox.midX, y: rightEyeBallBoundingBox.midY)
        let rightEyeBallTransform = CGAffineTransform.identity.scaledBy(x: -1, y: 1).translatedBy(x: -rightEyeBallBoundingBox.width - 23, y: 0)
        rightEyeBallSharpLayer.setAffineTransform(rightEyeBallTransform)
        rightEyeBallSharpLayer.fillColor = UIColor.black.cgColor
        cartmanView.layer.addSublayer(rightEyeBallSharpLayer)
        
        // 帽簷(放大)
        let hatBrimSharpPath = UIBezierPath()
        hatBrimSharpPath.move(to: CGPoint(x: 63, y: 371.8))
        hatBrimSharpPath.addCurve(to: CGPoint(x: 336.8, y: 362.5), controlPoint1: CGPoint(x: 107.1, y: 341.5), controlPoint2: CGPoint(x: 231.3, y: 306))
        hatBrimSharpPath.addCurve(to: CGPoint(x: 206.2, y: 276), controlPoint1: CGPoint(x: 346.5, y: 333.3), controlPoint2: CGPoint(x: 262.3, y: 242.1))
        hatBrimSharpPath.addCurve(to: CGPoint(x: 63, y: 371.8), controlPoint1: CGPoint(x: 135.5, y: 246.4), controlPoint2: CGPoint(x: 55.6, y: 325.1))
        hatBrimSharpPath.close()
        
        let hatBrimSharpLayer = CAShapeLayer()
        hatBrimSharpLayer.path = hatBrimSharpPath.cgPath
        let hatBrimBoundimgBox = hatBrimSharpPath.cgPath.boundingBox
        hatBrimSharpLayer.bounds = hatBrimBoundimgBox
        hatBrimSharpLayer.position = CGPoint(x: hatBrimBoundimgBox.midX, y: hatBrimBoundimgBox.midY)
        hatBrimSharpLayer.setAffineTransform(CGAffineTransform(scaleX: 1, y: 1.1))
        hatBrimSharpLayer.fillColor = UIColor(red: 1, green: 242/255, blue: 0, alpha: 1).cgColor
        hatBrimSharpLayer.strokeColor = UIColor.black.cgColor
        hatBrimSharpLayer.lineWidth = 2
        cartmanView.layer.addSublayer(hatBrimSharpLayer)
        
        // 帽子（位移加縮放）
        let hatSharpLayer = CAShapeLayer()
        hatSharpLayer.path = hatBrimSharpPath.cgPath
        let hatBoundingBox = hatBrimSharpPath.cgPath.boundingBox
        hatSharpLayer.bounds = hatBoundingBox
        hatSharpLayer.position = CGPoint(x: hatBoundingBox.midX, y: hatBoundingBox.midY)
        let hatTransform = CGAffineTransform.identity.translatedBy(x: 0, y: -5).scaledBy(x: 1, y: 1)
        hatSharpLayer.setAffineTransform(hatTransform)
        hatSharpLayer.fillColor = UIColor(red: 142/255, green: 217/255, blue: 249/255, alpha: 1).cgColor
        hatSharpLayer.strokeColor = UIColor.black.cgColor
        hatSharpLayer.lineWidth = 2
        cartmanView.layer.addSublayer(hatSharpLayer)
        
        // 帽子裝飾品
        let hatTopSharpPath = UIBezierPath()
        hatTopSharpPath.move(to: CGPoint(x: 155.2, y: 271))
        hatTopSharpPath.addCurve(to: CGPoint(x: 176, y: 268.5), controlPoint1: CGPoint(x: 154.3, y: 277.7), controlPoint2: CGPoint(x: 174.5, y: 279.9))
        hatTopSharpPath.addCurve(to: CGPoint(x: 198.7, y: 268), controlPoint1: CGPoint(x: 172.6, y: 272.7), controlPoint2: CGPoint(x: 189.2, y: 283.3))
        hatTopSharpPath.addCurve(to: CGPoint(x: 219.3, y: 269.9), controlPoint1: CGPoint(x: 198.3, y: 278.6), controlPoint2: CGPoint(x: 218.9, y: 280.5))
        hatTopSharpPath.addCurve(to: CGPoint(x: 237.1, y: 269.7), controlPoint1: CGPoint(x: 220.9, y: 277.9), controlPoint2: CGPoint(x: 238.7, y: 277.7))
        hatTopSharpPath.addCurve(to: CGPoint(x: 196.3, y: 252.1), controlPoint1: CGPoint(x: 244.5, y: 263.6), controlPoint2: CGPoint(x: 203.6, y: 246))
        hatTopSharpPath.addCurve(to: CGPoint(x: 155.2, y: 271), controlPoint1: CGPoint(x: 181.8, y: 244.5), controlPoint2: CGPoint(x: 146.6, y: 266.4))
        hatTopSharpPath.close()
        
        // 放大
        let hatTopSharpLayer = CAShapeLayer()
        hatTopSharpLayer.path = hatTopSharpPath.cgPath
        let hatTopBoundingBox = hatTopSharpPath.cgPath.boundingBox
        hatTopSharpLayer.bounds = hatTopBoundingBox
        hatTopSharpLayer.position = CGPoint(x: hatTopBoundingBox.midX, y: hatTopBoundingBox.midY)
        hatTopSharpLayer.setAffineTransform(CGAffineTransform(scaleX: 1.5, y: 1.5))
        hatTopSharpLayer.fillColor = UIColor(red: 254/255, green: 242/255, blue: 0, alpha: 1).cgColor
        hatTopSharpLayer.strokeColor = UIColor.black.cgColor
        hatTopSharpLayer.lineWidth = 1
        cartmanView.layer.addSublayer(hatTopSharpLayer)

        // 左手套
        let leftGloveSharpPath = UIBezierPath()
        leftGloveSharpPath.move(to: CGPoint(x: 5.2, y: 500.9))
        leftGloveSharpPath.addCurve(to: CGPoint(x: 54.1, y: 520.5), controlPoint1: CGPoint(x: 23.4, y: 415.3), controlPoint2: CGPoint(x: 151.4, y: 541.3))
        leftGloveSharpPath.addCurve(to: CGPoint(x: 34.9, y: 528.6), controlPoint1: CGPoint(x: 60.7, y: 528.7), controlPoint2: CGPoint(x: 48.6, y: 536.5))
        leftGloveSharpPath.addCurve(to: CGPoint(x: 5.2, y: 500.9), controlPoint1: CGPoint(x: 15, y: 537.4), controlPoint2: CGPoint(x: 5.3, y: 516.8))
        leftGloveSharpPath.close()

        let leftGloveSharpLayer = CAShapeLayer()
        leftGloveSharpLayer.path = leftGloveSharpPath.cgPath
        leftGloveSharpLayer.fillColor = UIColor(red: 254/255, green: 242/255, blue: 0, alpha: 1).cgColor
        leftGloveSharpLayer.strokeColor = UIColor.black.cgColor
        leftGloveSharpLayer.lineWidth = 2
        cartmanView.layer.addSublayer(leftGloveSharpLayer)
        
        // 右手套
        let rightGloveSharpPath = UIBezierPath()
        rightGloveSharpPath.move(to: CGPoint(x: 380.3, y: 468.2))
        rightGloveSharpPath.addCurve(to: CGPoint(x: 382.1, y: 514), controlPoint1: CGPoint(x: 387.6, y: 475.2), controlPoint2: CGPoint(x: 397, y: 506.2))
        rightGloveSharpPath.addCurve(to: CGPoint(x: 355.7, y: 516.9), controlPoint1: CGPoint(x: 383.3, y: 521.8), controlPoint2: CGPoint(x: 357.6, y: 529.9))
        rightGloveSharpPath.addCurve(to: CGPoint(x: 320.7, y: 504), controlPoint1: CGPoint(x: 346.3, y: 526.9), controlPoint2: CGPoint(x: 311.2, y: 514))
        rightGloveSharpPath.addCurve(to: CGPoint(x: 380.3, y: 468.2), controlPoint1: CGPoint(x: 323.9, y: 475.5), controlPoint2: CGPoint(x: 360.4, y: 452.2))
        rightGloveSharpPath.close()
        
        let rightGloveSharpLayer = CAShapeLayer()
        rightGloveSharpLayer.path = rightGloveSharpPath.cgPath
        rightGloveSharpLayer.fillColor = UIColor(red: 254/255, green: 242/255, blue: 0, alpha: 1).cgColor
        rightGloveSharpLayer.strokeColor = UIColor.black.cgColor
        rightGloveSharpLayer.lineWidth = 2
        cartmanView.layer.addSublayer(rightGloveSharpLayer)
        
        // 褲子
        let pantsShapPath = UIBezierPath()
        pantsShapPath.move(to: CGPoint(x: 53.7, y: 564.2))
        pantsShapPath.addCurve(to: CGPoint(x: 66.4, y: 600.3), controlPoint1: CGPoint(x: 52.8, y: 562.6), controlPoint2: CGPoint(x: 60.1, y: 589.7))
        pantsShapPath.addLine(to: CGPoint(x: 336.6, y: 599.8))
        pantsShapPath.addCurve(to: CGPoint(x: 351.8, y: 561.4), controlPoint1: CGPoint(x: 340.8, y: 600.5), controlPoint2: CGPoint(x: 356, y: 562))
        pantsShapPath.addLine(to: CGPoint(x: 344.5, y: 560.4))
        pantsShapPath.addCurve(to: CGPoint(x: 214.4, y: 576.9), controlPoint1: CGPoint(x: 303.6, y: 566.2), controlPoint2: CGPoint(x: 266.8, y: 572.3))
        pantsShapPath.addCurve(to: CGPoint(x: 53.7, y: 564.2), controlPoint1: CGPoint(x: 156.4, y: 581.9), controlPoint2: CGPoint(x: 105.8, y: 579.7))
        pantsShapPath.close()
        
        let pantsShapLayer = CAShapeLayer()
        pantsShapLayer.path = pantsShapPath.cgPath
        pantsShapLayer.fillColor = UIColor(red: 124/255, green: 79/255, blue: 50/255, alpha: 1).cgColor
        pantsShapLayer.strokeColor = UIColor.black.cgColor
        pantsShapLayer.lineWidth = 2
        cartmanView.layer.addSublayer(pantsShapLayer)
        
        //鞋子
        let shoesShapPath = UIBezierPath()
        shoesShapPath.move(to: CGPoint(x: 42.7, y: 601.9))
        shoesShapPath.addCurve(to: CGPoint(x: 359, y: 602), controlPoint1: CGPoint(x: 46.6, y: 607.7), controlPoint2: CGPoint(x: 359.3, y: 602.4))
        shoesShapPath.addCurve(to: CGPoint(x: 287.8, y: 590.5), controlPoint1: CGPoint(x: 368.6, y: 595.3), controlPoint2: CGPoint(x: 306, y: 586.6))
        shoesShapPath.addCurve(to: CGPoint(x: 205.5, y: 601.1), controlPoint1: CGPoint(x: 255, y: 592.3), controlPoint2: CGPoint(x: 190.3, y: 599.5))
        shoesShapPath.addCurve(to: CGPoint(x: 131.4, y: 591.7), controlPoint1: CGPoint(x: 214.9, y: 600.4), controlPoint2: CGPoint(x: 160, y: 589.4))
        shoesShapPath.addCurve(to: CGPoint(x: 42.7, y: 601.9), controlPoint1: CGPoint(x: 105.4, y: 586.7), controlPoint2: CGPoint(x: 30.9, y: 598.7))
        shoesShapPath.close()
        
        let shoesShapLayer = CAShapeLayer()
        shoesShapLayer.path = shoesShapPath.cgPath
        shoesShapLayer.fillColor = UIColor.black.cgColor
        cartmanView.layer.addSublayer(shoesShapLayer)
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}

struct ContentView: View {
    var body: some View {
        DrawView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


