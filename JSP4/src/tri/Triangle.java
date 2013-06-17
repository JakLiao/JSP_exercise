package tri;

public class Triangle {
	private double a;
	private double b;
	private double c;
	private String isTri;
	private String area;
	/**
	 * @return the area
	 */
	public String getArea() {
		return area;
	}
	/**
	 * @param area the area to set
	 */
	public void setArea(String area) {
		this.area = area;
	}
	/**
	 * @return the a
	 */
	public double getA() {
		return a;
	}
	/**
	 * @param a the a to set
	 */
	public void setA(double a) {
		this.a = a;
	}
	/**
	 * @return the b
	 */
	public double getB() {
		return b;
	}
	/**
	 * @param b the b to set
	 */
	public void setB(double b) {
		this.b = b;
	}
	/**
	 * @return the c
	 */
	public double getC() {
		return c;
	}
	/**
	 * @param c the c to set
	 */
	public void setC(double c) {
		this.c = c;
	}
	
	private boolean isTriangle(){
		if(a+b<=c || a+c<=b || b+c<=a){
			this.setIsTri("false");
			return false;
		}
		else{
			this.setIsTri("true");
			return true;
		}
	}
	public String circleArea(){
		if(isTriangle()){
			double p = (this.a + this.b + this.c)/2;
			this.area = Double.toString(Math.sqrt(p*(p-this.a)*(p-this.b)*(p-this.c)));
			return area;
		}
		else 
			this.area = "不能构成三角形";
			return area;
	}
	public String getIsTri() {
		return isTri;
	}
	public void setIsTri(String isTri) {
		this.isTri = isTri;
	}
}
