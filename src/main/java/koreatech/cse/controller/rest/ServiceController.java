package koreatech.cse.controller.rest;

import koreatech.cse.domain.rest.Book;
import koreatech.cse.domain.rest.Event;
import koreatech.cse.domain.rest.Library;
import koreatech.cse.service.EventService;
import koreatech.cse.service.LibraryService;
import koreatech.cse.service.NaverBookService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.util.List;

@RestController
@RequestMapping("/api")
public class ServiceController {
    @Inject
    EventService eventService;
    @Inject
    LibraryService libraryService;
    @Inject
    NaverBookService naverBookService;

    @RequestMapping(value = "/xml/book/{keyword}", method = RequestMethod.GET, produces = "application/xml")
    public ResponseEntity<List<Book>> bookSearchXml(@PathVariable("keyword") String keyword) {
        List<Book> bookList = naverBookService.searchBook(keyword,10, 1);
        if (bookList.size() == 0) {
            System.out.println("Book" + keyword + " is not found");
            return new ResponseEntity<List<Book>>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<List<Book>>(bookList, HttpStatus.OK);
    }

    @RequestMapping(value = "/xml/lib_list/{district}", method = RequestMethod.GET, produces = "application/xml")
    public ResponseEntity<List<Library>> lib_listXml(@PathVariable("district") String district) {
        List<Library> libraryList = libraryService.serachLibrary(district);
        if (libraryList.size() == 0) {
            System.out.println("Library" + district + " is not found");
            return new ResponseEntity<List<Library>>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<List<Library>>(libraryList, HttpStatus.OK);
    }

    @RequestMapping(value = "/xml/event_list/{event_dis}/{event_lib}", method = RequestMethod.GET, produces = "application/xml")
    public ResponseEntity<List<Event>> event_listXml(@PathVariable("event_dis") String event_dis, @PathVariable("event_lib") String event_lib) {
        List<Event> eventList = eventService.serachEvent(event_dis, event_lib);
        if (eventList.size() == 0) {
            System.out.println("Evnet" + event_dis + ", " + event_lib + " is not found");
            return new ResponseEntity<List<Event>>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<List<Event>>(eventList, HttpStatus.OK);
    }
}
