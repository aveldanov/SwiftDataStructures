struct Point{
    var x: Int
    var y: Int
    
}


struct Size{
    var width: Int
    var height: Int
}

public class ColumnLayout{
    static func layoutChildViews(parentViewSize: Size, childViewSizes: [Size]) throws -> [Point]{
                
        var remainingWidth = parentViewSize.width
        var remainingHeight = parentViewSize.height
        var array = [Point]()
        var point = Point(x: 0, y: 0)
        var count = 0
        for item in childViewSizes{
            print("RemW", remainingWidth)
            if item.width <= remainingWidth && count <= childViewSizes.count{
                if item.height <= remainingHeight{
                    point.y = parentViewSize.height - remainingHeight
                    point.x = parentViewSize.width - remainingWidth
                    print("point a ", point)
                    array.append(point)
                    remainingHeight -= item.height

                }else{
                    remainingWidth -= item.width
                    remainingHeight = parentViewSize.height
                    point.y = parentViewSize.height - remainingHeight
                    point.x = parentViewSize.width - remainingWidth
                    print("point b",point)
                    array.append(point)
                    remainingHeight -= item.height

                }
            }else{
               throw
                return array
            }

        }
        
        
        
        return array
    }
    
    
}



try ColumnLayout.layoutChildViews(parentViewSize: Size(width: 5, height: 10), childViewSizes: [Size(width: 2, height: 3), Size(width: 2, height: 3),Size(width: 2, height: 3),Size(width: 2, height: 3),Size(width: 2, height: 3),Size(width: 2, height: 3),Size(width: 2, height: 3)])
