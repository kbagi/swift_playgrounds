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
        var H = Double(rect.size.height);
        var W = Double(rect.size.width);
        var a = 0.1 * W;
        var w = 0.8 * W;
        var h = 0.2 * H;
        var b = 0.0;
        
        
        var shapes = [Diamond]();
        
        switch number{
        case 1:
            b = (H - h) / 2;
            
            var point1 = CGPoint(x:CGFloat(a), y:CGFloat(H / 2));
            var point2 = CGPoint(x:CGFloat(W / 2), y:CGFloat(b));
            var point3 = CGPoint(x:CGFloat(W - a), y:CGFloat(H / 2));
            var point4 = CGPoint(x:CGFloat(W / 2), y:CGFloat(H - b));
            
            shapes.append(Diamond(a: point1, b: point2, c: point3, d: point4));
        case 2:
            b = 0.2 * H;
            
            var point1 = CGPoint(x:CGFloat(a), y:CGFloat(b + (h / 2)));
            var point2 = CGPoint(x:CGFloat(W / 2), y:CGFloat(b));
            var point3 = CGPoint(x:CGFloat(W - a), y:CGFloat(b + (h / 2)));
            var point4 = CGPoint(x:CGFloat(W / 2), y:CGFloat(b + h));
            
            var point5 = CGPoint(x:CGFloat(a), y:CGFloat(2 * b + 1.5 * h));
            var point6 = CGPoint(x:CGFloat(W / 2), y:CGFloat(2 * b + h));
            var point7 = CGPoint(x:CGFloat(W - a), y:CGFloat(2 * b + 1.5 * h));
            var point8 = CGPoint(x:CGFloat(W / 2), y:CGFloat(H - b));
            
            shapes.append(Diamond(a: point1, b: point2, c: point3, d: point4));
            shapes.append(Diamond(a: point5, b: point6, c: point7, d: point8));
        case 3:
            b = 0.1 * H;
            
            var point1 = CGPoint(x:CGFloat(a), y:CGFloat(b + h / 2));
            var point2 = CGPoint(x:CGFloat(W / 2), y:CGFloat(b));
            var point3 = CGPoint(x:CGFloat(W - a), y:CGFloat(b + h / 2));
            var point4 = CGPoint(x:CGFloat(W / 2), y:CGFloat(b + h));
            
            var point5 = CGPoint(x:CGFloat(a), y:CGFloat(2 * b + 1.5 * h));
            var point6 = CGPoint(x:CGFloat(W / 2), y:CGFloat(2 * b + h));
            var point7 = CGPoint(x:CGFloat(W - a), y:CGFloat(2 * b + 1.5 * h));
            var point8 = CGPoint(x:CGFloat(W / 2), y:CGFloat(2 * b + 2 * h));
            
            var point9 = CGPoint(x:CGFloat(a), y:CGFloat(3 * b + 2.5 * h));
            var point10 = CGPoint(x:CGFloat(W / 2), y:CGFloat(3 * b + 2 * h));
            var point11 = CGPoint(x:CGFloat(W - a), y:CGFloat(3 * b + 2.5 * h));
            var point12 = CGPoint(x:CGFloat(W / 2), y:CGFloat(H - b));
            
            shapes.append(Diamond(a: point1, b: point2, c: point3, d: point4));
             shapes.append(Diamond(a: point5, b: point6, c: point7, d: point8));
             shapes.append(Diamond(a: point9, b: point10, c: point11, d: point12));
        default:
            b = (H - h) / 2;
            
            var point1 = CGPoint(x:CGFloat(a), y:CGFloat(H / 2));
            var point2 = CGPoint(x:CGFloat(W / 2), y:CGFloat(b));
            var point3 = CGPoint(x:CGFloat(W - a), y:CGFloat(H / 2));
            var point4 = CGPoint(x:CGFloat(W / 2), y:CGFloat(H - b));
            
            shapes.append(Diamond(a: point1, b: point2, c: point3, d: point4));
            
        }
        
        
        for p in shapes{
             var path = UIBezierPath(rect: rect);
            path.moveToPoint(p.a);
            path.addLineToPoint(p.b);
            path.addLineToPoint(p.c);
            path.addLineToPoint(p.d);
            path.addLineToPoint(p.a);
            UIColor.redColor().setStroke()
            path.stroke()
        }
        
    }
    
    struct Diamond{
        var a:CGPoint;
        var b: CGPoint;
        var c: CGPoint;
        var d: CGPoint;
        
        init(a:CGPoint, b:CGPoint, c:CGPoint, d:CGPoint){
            self.a = a;
            self.b = b;
            self.c = c;
            self.d = d;
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





