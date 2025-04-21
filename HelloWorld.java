public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello from basic Java app!");
        System.out.flush(); // important!
        try {
            Thread.sleep(60000);
        }catch(InterruptedException e){
            e.printStackTrace();
        }

    }
}
