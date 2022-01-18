package states;

import java.util.ArrayList;

import main.*;

public class Camio {
    private ArrayList<Integer> trajecte;
    private ArrayList<Integer> diesPeticions;
    // Si trajecte[i] == CD, llavors diesPeticions[i] = -1.

    private int viatges; // 0 <= viatges < 5
    private int km;      // 0 <= km <= 640
    private int diposit; // 0 <= diposit <= 2
    private int CD; // Identificador centre distribució

    // Constructores

    /**
     * Constructora per defecte.
      * @param centreDist Identificador del centre de distribució del camió.
     */
    public Camio(int centreDist) {
        this.trajecte = new ArrayList<>();
        this.diesPeticions = new ArrayList<>();
        this.viatges = 0;
        this.km = 0;
        this.diposit = 2;
        this.CD = centreDist;
    }

    /**
     * Constructora per còpia.
     * @param camio Camió a replicar.
     */
    public Camio(Camio camio) {
        trajecte = new ArrayList<>();
        for (Integer x : camio.trajecte) {
            trajecte.add(x);
        }

        diesPeticions = new ArrayList<>();
        for (Integer x : camio.diesPeticions) {
            diesPeticions.add(x);
        }

        viatges = camio.viatges;
        km = camio.km;
        diposit = camio.diposit;
        CD = camio.CD;
    }

    // Consultores

    public int getCD(){
        return CD;
    }

    public int getDestiIesim(int i) {
        return this.trajecte.get(i);
    }

    public int getDiesPeticioIesima(int i) {
        return this.diesPeticions.get(i);
    }

    public ArrayList<Integer> getTrajecte() {
        return trajecte;
    }

    public ArrayList<Integer> getDiesPeticions() {
        return diesPeticions;
    }

    public int numDestins() {
        return this.trajecte.size();
    }

    public boolean teDestins() {
        return !this.trajecte.isEmpty();
    }

    public int getViatges() {
        return this.viatges;
    }

    public int getKm() {
        return this.km;
    }

    public int getDiposit() {
        return this.diposit;
    }

    public int getLastDesti() {
        return trajecte.get(trajecte.size() - 1);
    }

    //Is viatges == MAX_VIATGES?
    public boolean noViatgesLeft() { return viatges == Global.viatgesMax; }

    //Is km == MAX_KMS?
    public boolean noKmLeft() { return km == Global.viatgesMax; }

    public int getKmLeft() {
        return (Global.kmMax - this.km);
    }

    public static Boolean swapViable(Camio a, int posAlTrajecte_a, Camio b, int posAlTrajecte_b) {
        int posActual_a = a.trajecte.get(posAlTrajecte_a);
        int posActual_b = b.trajecte.get(posAlTrajecte_b);

        if (posActual_a == a.CD || posActual_b == b.CD) return false;

        int posAnt_a;
        if (posAlTrajecte_a - 1 < 0) posAnt_a = a.CD;
        else posAnt_a = a.trajecte.get(posAlTrajecte_a - 1);

        int posAnt_b;
        if (posAlTrajecte_b - 1 < 0) posAnt_b = b.CD;
        else posAnt_b = b.trajecte.get(posAlTrajecte_b - 1);

        int km_a = a.getKm();
        int km_b = b.getKm();

        km_a -= State.getDistancia(posAnt_a, posActual_a);
        km_b -= State.getDistancia(posAnt_b, posActual_b);

        km_a += State.getDistancia(posAnt_a, posActual_b);
        km_b += State.getDistancia(posAnt_b, posActual_a);

        return km_a <= Global.kmMax && km_b <= Global.kmMax;
    }

    // Modificadores

    public void setTrajecte(ArrayList<Integer> trajecte, ArrayList<Integer> dies) {
        this.trajecte = trajecte;
        this.diesPeticions = dies;
    }

    public void addDestiCentreDist() {
        int id_last_pos = this.getLastDesti();
        this.km += State.getDistancia(id_last_pos, this.CD);

        this.diposit = 2;
        this.viatges++;

        this.trajecte.add(this.CD);
        this.diesPeticions.add(-1);
    }

    public void addDestiGasolinera(int id_pos, int dies) {
        int id_last_pos = this.CD;
        if (this.teDestins()) id_last_pos = this.getLastDesti();
        this.km += State.getDistancia(id_last_pos, id_pos);

        this.diposit--;

        this.trajecte.add(id_pos);
        this.diesPeticions.add(dies);
    }

    public void esborrarDestiIesim(int pos_i) {
        int dest_i = this.getDestiIesim(pos_i);
        int prev_pos = this.CD;
        if (pos_i - 1 >= 0) prev_pos = this.getDestiIesim(pos_i - 1);
        this.km -= State.getDistancia(prev_pos, dest_i);

        if (pos_i + 1 < this.numDestins())
            this.km -= State.getDistancia(this.getDestiIesim(pos_i + 1), dest_i);

        if (dest_i == this.CD) {
            diposit = 0;
            this.viatges--;
        }
        else {
            diposit++;
        }

        this.trajecte.remove(pos_i);
        this.diesPeticions.remove(pos_i);
    }

    public static void swapDestins(Camio a, int posAlTrajecte_a, Camio b, int posAlTrajecte_b) {
        int posAnt_a;
        if (posAlTrajecte_a - 1 < 0) posAnt_a = a.CD;
        else posAnt_a = a.trajecte.get(posAlTrajecte_a - 1);

        int posAnt_b;
        if (posAlTrajecte_b - 1 < 0) posAnt_b = b.CD;
        else posAnt_b = b.trajecte.get(posAlTrajecte_b - 1);

        int posActual_a = a.trajecte.get(posAlTrajecte_a);
        int posActual_b = b.trajecte.get(posAlTrajecte_b);
        a.km -= State.getDistancia(posAnt_a,  posActual_a);
        b.km -= State.getDistancia(posAnt_b, posActual_b);

        a.trajecte.set(posAlTrajecte_a, posActual_b);
        b.trajecte.set(posAlTrajecte_b, posActual_a);

        a.km += State.getDistancia(posAnt_a, posActual_b);
        b.km += State.getDistancia(posAnt_b, posActual_a);
    }

    /*
    public void removeLastDesti() {
        Posicio lastP = this.trajecte.get(this.trajecte.size() - 1);
        this.trajecte.remove(this.trajecte.size() - 1);

        Posicio pos = CD;
        if (!this.trajecte.isEmpty())
            pos = this.trajecte.get(this.trajecte.size() - 1);
        this.km -= Posicio.distancia(lastP, pos);

        if (State.posGasolineres.contains(lastP)) {
            this.diposit++;
        }
        else {
            this.viatges--;
            this.diposit = this.prevDiposit;
        }
    }
    */

}
