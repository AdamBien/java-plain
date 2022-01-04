#!/usr/bin/java --source 17
import java.nio.file.Path;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;

public class CreateJavaScript {

    public static void main(String ...args) throws IOException{
        var scriptDeclaration = "#!/usr/bin/java --source 17";
        var inputFile = Path.of("src/main/java/airhacks/App.java");
        var outputFile = Path.of("target","App.sh");

        var content = Files.readString(inputFile);
        var contentWithDeclaration = """
        $declaration
        $content
        """.replace("$declaration", scriptDeclaration)
            .replace("$content", content);
        Files.writeString(outputFile,contentWithDeclaration,StandardOpenOption.CREATE);
    }
}
