import java.util.ArrayList;
import java.util.List;

public class Session {
    List<Talk> talks = new ArrayList<>();
    int remainingTime;

    public Session(int remainingTime) {
        this.remainingTime = remainingTime;
    }

    public boolean addTalk(Talk talk) {
        if (remainingTime >= talk.duration) {
            talks.add(talk);
            remainingTime -= talk.duration;
            return true;
        }
        return false;
    }
}
