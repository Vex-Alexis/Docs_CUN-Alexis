import java.util.ArrayList;
import java.util.List;

public class Track {
    List<Session> sessions = new ArrayList<>();

    public Track() {
        sessions.add(new Session(180)); // Mañana
        sessions.add(new Session(240)); // Tarde
    }

    public void scheduleTalks(List<Talk> talks) {
        for (Talk talk : talks) {
            boolean scheduled = false;
            for (Session session : sessions) {
                scheduled = session.addTalk(talk);
                if (scheduled) break;
            }
            if (!scheduled) {
                // Si no se pudo programar en ninguna sesión, crear una nueva sesión en la tarde
                Session newSession = new Session(240);
                newSession.addTalk(talk);
                sessions.add(newSession);
            }
        }
    }

    public void printSchedule() {
        int trackNumber = 1;
        for (Session session : sessions) {
            System.out.println("Pista " + trackNumber + ":");
            int startTime = 9 * 60; // 9:00 AM
            for (Talk talk : session.talks) {
                System.out.println(String.format("%02d:%02dAM %s %dmin", startTime / 60, startTime % 60, talk.title, talk.duration));
                startTime += talk.duration;
            }
            if (startTime < 12 * 60) {
                System.out.println("12:00PM Almuerzo");
            } else {
                System.out.println("05:00PM Evento de Networking");
            }
            trackNumber++;
        }
    }
}