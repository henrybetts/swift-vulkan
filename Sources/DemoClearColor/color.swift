func hsvToRgb(h: Float, s: Float, v: Float) -> (r: Float, g: Float, b: Float) {
    if s == 0 { return (r: v, g: v, b: v) } // Achromatic grey
    
    let angle = (h >= 360 ? 0 : h)
    let sector = angle / 60 // Sector
    let i = sector.rounded(.down)
    let f = sector - i // Factorial part of h
    
    let p = v * (1 - s)
    let q = v * (1 - (s * f))
    let t = v * (1 - (s * (1 - f)))
    
    switch(i) {
    case 0:
        return (r: v, g: t, b: p)
    case 1:
        return (r: q, g: v, b: p)
    case 2:
        return (r: p, g: v, b: t)
    case 3:
        return (r: p, g: q, b: v)
    case 4:
        return (r: t, g: p, b: v)
    default:
        return (r: v, g: p, b: q)
    }
}
