package states;

public class PairInt implements Comparable {
    private int key;
    private int val;

    public PairInt(int key, int val){
        this.key = key;
        this.val = val;
    }

    public int getKey(){
        return key;
    }

    public int getVal(){
        return val;
    }
    public void setVal(int val){
        this.val = val;
    }


    @Override
    public int compareTo(Object o) {
        if(this.val >((PairInt) o).getVal()) return 1;
        if(this.val <((PairInt) o).getVal()) return -1;
        return 0;
    }
}
