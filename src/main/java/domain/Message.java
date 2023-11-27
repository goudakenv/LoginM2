package domain;

public class Message {
    private String username;
    private String name;
    private String age;
    private String messageText;

    public Message(String username, String name, String messageText, String age) {
        this.username = username;
        this.name = name;
        this.age = age;
        this.messageText = messageText;
    }

    public String getUsername() {
        return username;
    }
    
    public String getName() {
        return name;
    }
    
    public String getAge() {
        return age;
    }
    
    public String getMessageText() {
        return messageText;
    }
}
