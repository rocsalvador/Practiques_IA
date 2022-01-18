package states;

import java.util.Objects;

public class Posicio {
    private int x, y;

    public Posicio(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public static int distancia(Posicio origen, Posicio desti) {
        return (Math.abs((desti.x - origen.x)) + Math.abs(desti.y - origen.y));
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Posicio posicio = (Posicio) o;
        return x == posicio.x && y == posicio.y;
    }

    @Override
    public int hashCode() {
        return Objects.hash(x, y);
    }
}
