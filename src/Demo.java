public class Demo {
    public static void main(String[] args) {
	System.out.println("\nWelcome to Objectville Diner!\n");

	Waitress wendy = new Waitress("Wendy");
	Customer chuck = new Customer("Chuck");
	Customer charlene = new Customer("Charlene");
	ShortOrderCook sammy = new ShortOrderCook("Sammy");
	VeganCook vinny = new VeganCook("Vinny");
	Order chucksOrder;
	Order charlenesOrder;

	wendy.approachTable(chuck);
	chucksOrder = wendy.takeOrder(chuck);
	wendy.bundle(chucksOrder, sammy, vinny);
	chuck.signalServer();
	System.out.println();

	wendy.approachTable(charlene);
	charlenesOrder = wendy.takeOrder(charlene);
	wendy.bundle(charlenesOrder, sammy, vinny);
	charlene.signalServer();
    }
}