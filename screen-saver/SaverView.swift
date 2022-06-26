//
//  SaverView.swift
//  j2k-saver
//
//  Created by Dawninest on 2019/4/8.
//  Copyright © 2019 dawninest. All rights reserved.
//

import Foundation
import ScreenSaver

final class SaverView: ScreenSaverView {
    
    let locationY = NSColor(red:1, green:0.894, blue:0.066, alpha:1.00) // FFE411
    
    let ratio: CGFloat = 0.618
    
    let canDoText = NSTextField()
    let daliyText = NSTextField()
    let sdfText = NSTextField()
    
    let dateNumText = NSView()
    let dateNum_h = NSTextField()
    let dateNum_m = NSTextField()
    let dateNum_s = NSTextField()
    
    let lineOne = NSView()
    let lineTwo = NSView()
    
    override init!(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
       
    }
    
    func initUI (_ rect: NSRect) {
        if (rect.size.width < 300 && rect.size.height < 200) {
            // 此时为在设置中的预览窗口 296 * 184
            let width = rect.size.width
            let height = rect.size.height
            
            let tipTitle = NSTextField()
            tipTitle.frame = NSRect.init(x: width * 0.05, y: height * 0.618 + 10, width: width * 0.9, height: 30)
            tipTitle.isEditable = false
            tipTitle.isBordered = false
            tipTitle.drawsBackground = false
            tipTitle.font = NSFont.systemFont(ofSize: 20)
            tipTitle.textColor = locationY
            tipTitle.alignment = .center
            tipTitle.stringValue = "Enjoy Life."
            self.addSubview(tipTitle)
            
            let tipLine = NSView.init(frame: NSRect.init(x: width * 0.05, y: height * 0.618, width: width * 0.9, height: 1))
            tipLine.wantsLayer = true
            tipLine.layer?.setNeedsDisplay()
            tipLine.layer?.backgroundColor = locationY.cgColor
            self.addSubview(tipLine)
            
            let tipText = NSTextField()
            tipText.frame = NSRect.init(x: width * 0.05, y: 10, width: width * 0.9, height: height * 0.618 - 20)
            tipText.isEditable = false
            tipText.isBordered = false
            tipText.drawsBackground = false
            tipText.font = NSFont.systemFont(ofSize: 12)
            tipText.textColor = locationY
            tipText.alignment = .center
            tipText.stringValue = "盛年不重来，\n一日难再晨；\n及时当勉励，\n岁月不待人。"
            self.addSubview(tipText)
            
        } else {
            // 多屏幕下通过制定到当前window去取当前的窗口的尺寸
            let width: CGFloat = (self.window?.screen?.frame.size.width)!
            let height: CGFloat = (self.window?.screen?.frame.size.height)!
            
            let showWith = width * ratio
            let widthPadding = width * (1 - ratio) / 2
            let lineHeight = height * (1 - ratio)
            canDoText.frame = NSRect.init(x: widthPadding, y: lineHeight - 100, width: showWith, height: 80)
            canDoText.isEditable = false
            canDoText.isBordered = false
            canDoText.drawsBackground = false
            canDoText.font = NSFont.systemFont(ofSize: 60)
            canDoText.textColor = locationY
            canDoText.alignment = .center
            self.addSubview(canDoText)
            
            daliyText.frame = NSRect.init(x: widthPadding, y: lineHeight + 220, width: showWith, height: 50)
            daliyText.isEditable = false
            daliyText.isBordered = false
            daliyText.drawsBackground = false
            daliyText.font = NSFont.systemFont(ofSize: 30)
            daliyText.textColor = locationY
            daliyText.alignment = .center
            self.addSubview(daliyText)
            
            dateNumText.frame = NSRect.init(x: widthPadding, y: lineHeight + 30, width: showWith, height: 200)
            
            let leftPadding = ( showWith - 840 ) / 2
            
            dateNum_h.frame = NSRect.init(x: leftPadding, y: 0, width: 240, height: 200)
            dateNum_h.isEditable = false
            dateNum_h.isBordered = false
            dateNum_h.drawsBackground = false
            dateNum_h.font = NSFont.systemFont(ofSize: 180)
            dateNum_h.textColor = locationY
            dateNum_h.alignment = .center
            dateNumText.addSubview(dateNum_h)
            
            let dateSignOne = NSTextField()
            dateSignOne.frame = NSRect.init(x: leftPadding + 240, y: 0, width: 60, height: 200)
            dateSignOne.isEditable = false
            dateSignOne.isBordered = false
            dateSignOne.drawsBackground = false
            dateSignOne.font = NSFont.systemFont(ofSize: 180)
            dateSignOne.textColor = locationY
            dateSignOne.alignment = .center
            dateSignOne.stringValue = ":"
            dateNumText.addSubview(dateSignOne)
            
            dateNum_m.frame = NSRect.init(x: leftPadding + 300, y: 0, width: 240, height: 200)
            dateNum_m.isEditable = false
            dateNum_m.isBordered = false
            dateNum_m.drawsBackground = false
            dateNum_m.font = NSFont.systemFont(ofSize: 180)
            dateNum_m.textColor = locationY
            dateNum_m.alignment = .center
            dateNumText.addSubview(dateNum_m)
            
            let dateSignTwo = NSTextField()
            dateSignTwo.frame = NSRect.init(x: leftPadding + 540, y: 0, width: 60, height: 200)
            dateSignTwo.isEditable = false
            dateSignTwo.isBordered = false
            dateSignTwo.drawsBackground = false
            dateSignTwo.font = NSFont.systemFont(ofSize: 180)
            dateSignTwo.textColor = locationY
            dateSignTwo.alignment = .center
            dateSignTwo.stringValue = ":"
            dateNumText.addSubview(dateSignTwo)
            
            dateNum_s.frame = NSRect.init(x: leftPadding + 600, y: 0, width: 240, height: 200)
            dateNum_s.isEditable = false
            dateNum_s.isBordered = false
            dateNum_s.drawsBackground = false
            dateNum_s.font = NSFont.systemFont(ofSize: 180)
            dateNum_s.textColor = locationY
            dateNum_s.alignment = .center
            dateNumText.addSubview(dateNum_s)
            
            self.addSubview(dateNumText)
            
            lineOne.frame = NSRect.init(x: widthPadding, y: lineHeight + 5, width: showWith, height: 4)
            lineOne.wantsLayer = true
            lineOne.layer?.setNeedsDisplay()
            lineOne.layer?.backgroundColor = locationY.cgColor
            self.addSubview(lineOne)
            
            lineTwo.frame = NSRect.init(x: widthPadding, y: lineHeight, width: showWith, height: 1)
            lineTwo.wantsLayer = true
            lineTwo.layer?.setNeedsDisplay()
            lineTwo.layer?.backgroundColor = locationY.cgColor
            self.addSubview(lineTwo)
            
            sdfText.frame = NSRect.init(x: widthPadding, y: lineHeight - 150, width: showWith, height: 60)
            sdfText.isEditable = false
            sdfText.isBordered = false
            sdfText.drawsBackground = false
            sdfText.font = NSFont.systemFont(ofSize: 40)
            sdfText.textColor = locationY
            sdfText.alignment = .center
            self.addSubview(sdfText)
        }
    }
    
    
    func initData () {
        self.getDailyData({(data) in
            self.updateData(data)
        })
    }
    
    func getDailyData (_ success: @escaping (Dictionary<String, Any>) -> Void) {
        let dailyDataUrl = "http://open.iciba.com/dsapi/"
        let session = URLSession(configuration: .default)
        let url = NSURL(string: dailyDataUrl)
        let request = URLRequest(url: url! as URL)
        let task = session.dataTask(with: request) {(data, response, error) in
            do {
                let dailyData = try JSONSerialization.jsonObject(with: data!, options: []) as! NSDictionary as! Dictionary<String, Any>
                let data: Dictionary<String, Any> = dailyData
                success(data)
            } catch {
                return
            }
        }
        task.resume()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    override func startAnimation() {
        super.startAnimation()
    }
    
    override func stopAnimation() {
        super.stopAnimation()
    }
    
    override func draw(_ rect: NSRect) {
        super.draw(rect)
        self.initUI(rect)
        self.initData()
    }
    
    func updateData (_ data: Dictionary<String, Any>) {
        let fortune: String = data["content"] as! String
        let recommedDes: String = data["note"] as! String
        
        DispatchQueue.main.sync {
            self.canDoText.stringValue = fortune
            self.sdfText.stringValue = recommedDes
        }
    }
    
    override func animateOneFrame() {
        updateDate()
        return
    }
    
    func updateDate () {
        let weekArr = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"]
        
        let date = Date.init()
        let chinese = Calendar.init(identifier: .gregorian)
        let components = Set<Calendar.Component>([.year, .month,.weekday,.day, .hour, .minute, .second])
        let theComponents = chinese.dateComponents(components, from: date)
        
        let year = theComponents.year!.description
        let mouth = theComponents.month!.description
        let dayStr = theComponents.day!.description
        let day = theComponents.day! < 10 ? "0\(dayStr)" : dayStr
        let week = weekArr[theComponents.weekday! - 1]
        
        
       
        let hourStr = theComponents.hour!.description
        let hour = theComponents.hour! < 10 ? "0\(hourStr)" : hourStr
        
        let minStr = theComponents.minute!.description
        let min = theComponents.minute! < 10 ? "0\(minStr)" : minStr
        
        let secStr = theComponents.second!.description
        let sec = theComponents.second! < 10 ? "0\(secStr)" : secStr
        
        daliyText.stringValue = "\(year) 年 \(mouth) 月 \(day) 日  \(week)"
        dateNum_h.stringValue = "\(hour)"
        dateNum_m.stringValue = "\(min)"
        dateNum_s.stringValue = "\(sec)"
        
    }
    
    override var hasConfigureSheet: Bool {
        return true
    }
    
    override var configureSheet: NSWindow? {
        return nil
    }
}
