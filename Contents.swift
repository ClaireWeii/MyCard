import UIKit

/*製作狗寶寶為底的愛心卡片*/

//生成狗寶寶照片
let dobbypic = UIImage(named: "Dobby.jpg")
let dobby = UIImageView(image: dobbypic)
//為狗寶寶照片設定圓角
dobby.layer.cornerRadius = 20
dobby.clipsToBounds = true
//為狗寶寶照片設定邊框寬度及顏色
dobby.layer.borderWidth = 5
dobby.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 0.5)
//生成愛心圖片
let heartpic = UIImage(named: "heart.png")
let heart = UIImageView(image: heartpic)
//生成背景圖
let background = UIImageView(frame: CGRect(x: 0, y: 0, width: 880, height: 880))
background.backgroundColor = UIColor(red: 1, green: 228/255, blue: 225/255, alpha: 0.8)

heart.frame = background.frame  //將愛心圖片的尺寸變為背景圖的尺寸相同
background.mask = heart  //把愛心圖片設為背景圖的遮罩
dobby.addSubview(background)  //把愛心背景圖放到狗寶寶照片上

/*加入Emoji，並使用迴圈使其自行排列*/
for i in 0...22 {
    let emoji = UILabel(frame: CGRect(x: 8+i*40, y: 5, width: 26, height: 26))
    emoji.text = "🐶"
    emoji.font = UIFont.systemFont(ofSize: 26)
    emoji.transform = CGAffineTransform(rotationAngle: .pi/180 * 45)
    dobby.addSubview(emoji)
}
for i in 0..<22 {
    let emoji = UILabel(frame: CGRect(x: 8, y: 45+i*40, width: 26, height: 26))
    emoji.text = "🐶"
    emoji.font = UIFont.systemFont(ofSize: 26)
    emoji.transform = CGAffineTransform(rotationAngle: .pi/180 * 45)
    dobby.addSubview(emoji)
}
for i in 0..<22 {
    let emoji = UILabel(frame: CGRect(x: 48+i*40, y: 845, width: 26, height: 26))
    emoji.text = "🐶"
    emoji.font = UIFont.systemFont(ofSize: 26)
    emoji.transform = CGAffineTransform(rotationAngle: .pi/180 * 45)
    dobby.addSubview(emoji)
}
for i in 0..<20 {
    let emoji = UILabel(frame: CGRect(x: 848, y: 45+i*40, width: 26, height: 26))
    emoji.text = "🐶"
    emoji.font = UIFont.systemFont(ofSize: 26)
    emoji.transform = CGAffineTransform(rotationAngle: .pi/180 * 45)
    dobby.addSubview(emoji)
}

/*加文字Lable，設定內容、顏色、字體*/
let label = UILabel(frame: CGRect(x: 250, y: 840, width: 500, height: 40))
label.text = "The greatest gift in my life - Dobby"
label.font = UIFont.systemFont(ofSize: 26)
label.textColor = UIColor(red: 233/255, green: 150/255, blue: 122/255, alpha: 1)
label.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
label.textAlignment = NSTextAlignment.center
label.sizeToFit()
dobby.addSubview(label)
