import static org.mockito.Mockito.*;
import org.junit.Test;

public class VerifyingInstruction {

    @Test
    public void testVerifyInteraction() {
        // Step 1: Create a mock object
        ExternalApi mockApi = mock(ExternalApi.class);

        // Step 2: Call the method with specific arguments (in this case no args)
        MyService service = new MyService(mockApi);
        service.fetchData();

        // Step 3: Verify interaction
        verify(mockApi).getData();
    }
}
