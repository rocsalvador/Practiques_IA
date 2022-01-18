package main;

public class Global {
    public static final int viatgesMax = 5;
    public static final int dipositMax = 2;
    public static final int kmMax = 640;
    public static final int preuDiposit = 1000;
    public static final int costKm = 2;
    public static int heuristic = 3; // 1-> Beneficis nets, 2-> Quocient, 3-> Beneficis+Diposits, 4-> Bonus per CD
    public static boolean hillClimbing = true;
    public static int solution = 1; // 1-> Naive solution, 2-> Greedy solution, 3-> random solution
    public static int seed = 0;
    public static int ncds, ngas, camionsperCD;
}
