import java.nio.charset.Charset;

class Code {
    public static void main(String[] args) {
        String a = "中";
        dump(a);
        String b = "文";
        dump(b); 
    }

    private static void dump(String a) {
        System.out.print("str value:" + a + ", length:" + a.length() + ", bytes with charset " + Charset.defaultCharset().name() + ":"); 
        byte[] defaultBytes = a.getBytes();
        int bl = defaultBytes.length;
        for(int b = 0; b < bl; b++){
            if (b != 0) {
                System.out.print(" ");
            }
            System.out.printf("%02x", (defaultBytes[b] & 0xff));
        } 
        System.out.printf(", internal chars:");
        for (int c = 0; c < a.length(); c++) {
            System.out.printf("%04x", ((short)a.charAt(c)) & 0xffff);
        }
        System.out.println();
    }
}
