public class Talk implements Comparable<Talk> {
    String title;
    int duration;

    public Talk(String title, int duration) {
        this.title = title;
        this.duration = duration;
    }

    @Override
    public int compareTo(Talk talk) {
        return talk.duration - this.duration; // Ordenar en orden descendente por duración
    }
}
