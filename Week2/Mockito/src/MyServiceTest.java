import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.*;

import org.junit.Test;

public class MyServiceTest {

    @Test
    public void testExternalApi() {
        // Create mock object
        ExternalApi mockApi = mock(ExternalApi.class);

        // Stub method
        when(mockApi.getData()).thenReturn("Mock Data");

        // Use mock in service
        MyService service = new MyService(mockApi);

        // Act + Assert
        String result = service.fetchData();
        assertEquals("Mock Data", result);
    }
}
