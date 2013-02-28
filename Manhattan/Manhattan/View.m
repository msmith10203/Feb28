//
//  View.m
//  Manhattan
//
//  Created by NYU User on 10/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <CoreLocation/CLLocation.h>	//for CLLocationCoordinate2D
#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
    // Drawing code
    
    static CLLocationCoordinate2D manhattan[] = {
		{40.72921,      -73.971548},    //East River at East 17th Street
		{40.735519,     -73.974595},    //24
		{40.742998,     -73.971806},    //34
		{40.754767,     -73.96215},     //53
		{40.762146,     -73.954296},    //65
		{40.771474,     -73.946185},    //81
		{40.776154,     -73.942022},    //89
		{40.776154,     -73.942022},    //96
		{40.787008,     -73.93816},     //103
		{40.795326,     -73.929534},    //118
		{40.800946,     -73.929062},    //125
		{40.808775,     -73.934212},    //Harlem River at 132nd Street
		{40.817772,     -73.933868},    //143
		{40.83547,      -73.935113},    //163
		{40.855857,     -73.922195},    //Dyckman Street
		{40.869878,     -73.91078},     //218
		{40.873416,     -73.911767},    //Broadway Bridge
		{40.877018,     -73.922968},    //Henry Hudson Parkway Bridge
		{40.877082,     -73.926916},    //Hudson River
		{40.867379,     -73.933096},    //Riverside Drive
		{40.852417,     -73.943224},    //Hudson River at West 181st Street
		{40.850339,     -73.946786},    //George Washingon Bridge
		{40.850339,     -73.946786},    //168
		{40.834626,     -73.95052},     //155
		{40.827417,     -73.955026},    //144 sewage treatment plant
		{40.828034,     -73.956399},    //144
		{40.82365,      -73.959446},    //137
		{40.822676,     -73.957601},    //137
		{40.771669,     -73.994765},    //57
		{40.769524,     -73.995152},    //54
		{40.763316,     -73.999872},    //44
		{40.762276,     -74.001718},    //42
		{40.754052,     -74.007726},    //29
		{40.749825,     -74.009442},    //23
		{40.748362,     -74.00794},     //21
		{40.740754,     -74.009228},    //Meatpacking District
		{40.739258,     -74.010344},    //Gansevoort Street
		{40.726218,     -74.011545},    //Holland Tunnel
		{40.718315,     -74.013176},    //Battery Park City
		{40.718737,     -74.016609},    //Battery Park City
		{40.706539,     -74.019227},    //South Cove
		{40.70078,      -74.014893},    //Battery Park
		{40.701919,     -74.009314},    //Heliport
		{40.708523,     -73.997984},    //north of Brooklyn Bridge
		{40.710475,     -73.977985},    //Corlears Hook Park
		{40.712752,     -73.976011},    //Grand Street
		{40.720819,     -73.972964}		//East 6th Street
	};
    
    // Governor isl
    static CLLocationCoordinate2D governor[] = {
        {40.693199231174844, -74.01678085327148},
        {40.69326430897806, -74.01798248291016},
        {40.69287384120536, -74.0192699432373},
        {40.692288135255865, -74.0200424194336},
        {40.69144210646147, -74.02090072631836},
        {40.690530986515746, -74.02210235595703},
        {40.68955477274907, -74.02304649353027},
        {40.68877379143866, -74.02373313903809},
        {40.68773246878694, -74.02493476867676},
        {40.68649587700388, -74.02630805969238},
        {40.68636570811299, -74.0262222290039},
        {40.68558468942849, -74.02665138244629},
        {40.684608403201835, -74.02639389038086},
        {40.684217884706854, -74.02570724487305},
        {40.683827363923726, -74.02424812316895},
        {40.684282971281604, -74.02304649353027},
        {40.685064005220624, -74.02141571044922},
        {40.68571485984485, -74.01961326599121},
        {40.68662604564053, -74.01798248291016},
        {40.687211801359204, -74.01643753051758},
        {40.687472135581565, -74.01592254638672},
        {40.68734196859751, -74.01540756225586},
        {40.68734196859751, -74.01472091674805},
        {40.68812296668819, -74.01386260986328},
        {40.68961985411176, -74.01248931884766},
        {40.691181787748235, -74.01266098022461},
        {40.69235321394892, -74.01369094848633},
        {40.69293891932638, -74.01557922363281}
    };
    
    static CLLocationCoordinate2D roosevelt[] ={
    {40.772936879967084, -73.94021987915039},
    {40.77254687948199, -73.94073486328125},
    {40.77228687788679, -73.94133567810059},
    {40.77202687527417, -73.94210815429688},
    {40.77163686944753, -73.94253730773926},
    {40.77111685811769, -73.9431381225586},
    {40.77046683823235, -73.94373893737793},
    {40.7701418259051, -73.94425392150879},
    {40.76988181489869, -73.94468307495117},
    {40.76936178983361, -73.94511222839355},
    {40.768776756770855, -73.94545555114746},
    {40.76825672305774, -73.94579887390137},
    {40.76793169992044, -73.94631385803223},
    {40.76734665426719, -73.94657135009766},
    {40.76676160346333, -73.94717216491699},
    {40.76598152771282, -73.94777297973633},
    {40.76533145759273, -73.94837379455566},
    {40.76461637311633, -73.94871711730957},
    {40.7641613153526, -73.94923210144043},
    {40.76396628964295, -73.94974708557129},
    {40.76344621828599, -73.95017623901367},
    {40.762861133145016, -73.95069122314453},
    {40.76227604285355, -73.95129203796387},
    {40.761560925502806, -73.95172119140625},
    {40.76084580045815, -73.95215034484863},
    {40.76019568010469, -73.95283699035645},
    {40.75954555339266, -73.95378112792969},
    {40.75928550092745, -73.95395278930664},
    {40.758830406665325, -73.9541244506836},
    {40.75818026660039, -73.9548110961914},
    {40.757400090129245, -73.95524024963379},
    {40.75661990450192, -73.95627021789551},
    {40.75570967636433, -73.95687103271484},
    {40.75505950577882, -73.9573860168457},
        {40.75434431079081, -73.95815849304199},
    {40.75382416414895, -73.95875930786133},
    {40.75297891717686, -73.95953178405762},
    {40.75219867966512, -73.9599609375},
    {40.751418432997426, -73.96073341369629},
    {40.75057315544191, -73.96116256713867},
    {40.74966284451889, -73.96150588989258},
    {40.75018302371518, -73.96039009094238},
    {40.75102830623012, -73.95901679992676},
    {40.7519385984599, -73.95841598510742},
    {40.752913897733926, -73.95730018615723},
    {40.75408423797857, -73.95609855651855},
    {40.75544960889312, -73.95498275756836},
    {40.75635984059143, -73.95369529724121},
    {40.7572700598272, -73.95266532897949},
    {40.758505337427664, -73.95172119140625},
    {40.7598706175435, -73.95026206970215},
    {40.76182096906601, -73.9486312866211},
    {40.76377126336098, -73.94691467285156},
    {40.765396464890884, -73.94545555114746},
    {40.76676160346333, -73.9445972442627},
    {40.76767168026598, -73.94373893737793},
    {40.76825672305774, -73.94305229187012},
    {40.768776756770855, -73.94262313842773},
    {40.7694267931893, -73.94133567810059},
    {40.77053184050704, -73.94030570983887},
    {40.77176687164411, -73.94021987915039},
    {40.77228687788679, -73.94013404846191},
    {40.772936879967084, -73.94013404846191}
    };
    
    static const size_t n = sizeof manhattan / sizeof manhattan[0];
	static const size_t n2 = sizeof governor / sizeof governor[0];
    static const size_t n3 = sizeof roosevelt / sizeof roosevelt[0];
	
	CGContextRef c = UIGraphicsGetCurrentContext();
	
	CGSize s = self.bounds.size;
	CGContextTranslateCTM(c, s.width / 2, s.height / 2);
	
	//Longitude and latitude in degrees of the heart of Manhattan,
	//probably somewhere around the Angel of the Waters.
	CGFloat xtranslate = 73.965;
	CGFloat ytranslate = -40.79;
	CGFloat scale = 2000;	//pixels per degree of latitude
    
	CGContextScaleCTM(c, scale * cos(ytranslate * M_PI / 180), -scale);
	CGContextTranslateCTM(c, xtranslate, ytranslate);
    
    CGContextBeginPath(c);
	CGContextMoveToPoint(c, manhattan[0].longitude, manhattan[0].latitude);
	for (size_t i = 1; i < n; ++i) {
		CGContextAddLineToPoint(c, manhattan[i].longitude, manhattan[i].latitude);
	}
	CGContextClosePath(c);
    
    // central park
    CGContextMoveToPoint(c, -73.97305, 40.764291);		//Grand Army Plaza
	CGContextAddLineToPoint(c, -73.981762, 40.767997);	//Columbus Circle
	CGContextAddLineToPoint(c, -73.958116, 40.800556);	//Frederick Douglass Circle
	CGContextAddLineToPoint(c, -73.949235, 40.796848);	//Frawley Circle
	CGContextClosePath(c);
    
    
    // island in the park
    CGContextMoveToPoint(c, -73.96133422851562, 40.78860000674633);		//
	CGContextAddLineToPoint(c, -73.96305084228516, 40.78834006798032);	//
	CGContextAddLineToPoint(c, -73.96476745605469, 40.78756024557722);	//
	CGContextAddLineToPoint(c, -73.9657974243164, 40.786000573298125);	//
    
    CGContextAddLineToPoint(c, -73.9651107788086, 40.78444086438882);	//
    CGContextAddLineToPoint(c, -73.96339416503906, 40.78340103809933);	//
    CGContextAddLineToPoint(c, -73.96167755126953, 40.78210123234386);	//
    CGContextAddLineToPoint(c, -73.9603042602539, 40.78418090934269);	//
    CGContextAddLineToPoint(c, -73.95858764648438, 40.786000573298125);	//
    CGContextAddLineToPoint(c, -73.95721435546875, 40.78730030274114);	//
    
	CGContextClosePath(c);
    
    
	CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);	//opaque red
	CGContextFillPath(c);
    
	CGContextBeginPath(c);
	CGContextMoveToPoint(c, governor[0].longitude, governor[0].latitude);
	for (size_t i = 1; i < n2; ++i) {
		CGContextAddLineToPoint(c, governor[i].longitude, governor[i].latitude);
	}
	CGContextClosePath(c);
	CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);	//opaque red
	CGContextFillPath(c);
    
    CGContextBeginPath(c);
	CGContextMoveToPoint(c, roosevelt[0].longitude, roosevelt[0].latitude);
	for (size_t i = 1; i < n3; ++i) {
		CGContextAddLineToPoint(c, roosevelt[i].longitude, roosevelt[i].latitude);
	}
	CGContextClosePath(c);
    
   
    
	CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);	//opaque red
	CGContextFillPath(c);}

@end
