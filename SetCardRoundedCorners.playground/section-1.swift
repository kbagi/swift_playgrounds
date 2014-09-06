// Playground - noun: a place where people can play

import UIKit


class SetCard : UIView {
    var number = 3;
    
    override init(){
        super.init()
        number = 3;
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func drawRect(rect: CGRect) {
        var H = Double(rect.size.height); // full card height
        var W = Double(rect.size.width); // full card width
        var a = 0.1 * W; // horizontal histance
        var w = 0.8 * W; // symbol's width
        var h = 0.2 * H; // symbol's height
        var b = 0.0; // vertical distance
    
        var symbols = [CGRect]();
        
        switch number {
        case 1:
            b = (H - h) / 2;
            
            var symbol = CGRect(x:CGFloat(a), y:CGFloat(b), width:CGFloat(w), height:CGFloat(h));
            symbols.append(symbol);
        case 2:
            b = 0.2 * H;
            
            var symbol = CGRect(x:CGFloat(a), y:CGFloat(b), width:CGFloat(w), height:CGFloat(h));
            var symbol2 = CGRect(x:CGFloat(a), y:CGFloat(b + 2 * h), width:CGFloat(w), height:CGFloat(h));
            symbols.append(symbol);
            symbols.append(symbol2);
        case 3:
            b = 0.1 * H;
            
            var symbol = CGRect(x:CGFloat(a), y:CGFloat(b), width:CGFloat(w), height:CGFloat(h));
            var symbol2 = CGRect(x:CGFloat(a), y:CGFloat(2 * b + h), width:CGFloat(w), height:CGFloat(h));
            var symbol3 = CGRect(x:CGFloat(a), y:CGFloat(3 * b + 2 * h), width:CGFloat(w), height:CGFloat(h));
            
            symbols.append(symbol);
            symbols.append(symbol2);
            symbols.append(symbol3);
        default:
            b = (H - h) / 2;
            
            var symbol = CGRect(x:CGFloat(a), y:CGFloat(b), width:CGFloat(w), height:CGFloat(h));
            symbols.append(symbol);
        }
        
        // Draw card's border
        var path = UIBezierPath(roundedRect: rect, cornerRadius: 15)
        UIColor.blackColor().setStroke()
        path.stroke()
        
        // Draw symbols
        for r in symbols{
            var path = UIBezierPath(roundedRect: r, cornerRadius: 30)
            UIColor.redColor().setStroke()
            path.stroke()
        }
    }
}

var view1  = SetCard(frame: CGRect(x: 0, y: 0, width: 200, height: 350));
view1.number = 1;

var view2  = SetCard(frame: CGRect(x: 0, y: 0, width: 200, height: 350));
view2.number = 2;

var view3  = SetCard(frame: CGRect(x: 0, y: 0, width: 200, height: 350));
view3.number = 3;

view1.backgroundColor = UIColor.whiteColor()
view1.setNeedsDisplay();

view2.backgroundColor = UIColor.whiteColor()
view2.setNeedsDisplay();

view3.backgroundColor = UIColor.whiteColor()
view3.setNeedsDisplay();





