package koreatech.cse.controller.rest;

import koreatech.cse.service.EventService;
import koreatech.cse.service.LibraryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/service/library")
public class LibraryController {
    @Autowired
    private LibraryService libraryService;
    @Autowired
    private EventService eventService;

    //키워드가 있을때도 있고 없을때도있음
    //있을때는 가져가고 없을때는 안가져가고
    @RequestMapping("/list.do")
    public ModelAndView list(@RequestParam(required=false)String district){
        ModelAndView mav = new ModelAndView();
        if(district != "")
        {
            mav.addObject("library_list",libraryService.serachLibrary(district));
        } else
            mav.addObject("library_list", null);

        mav.setViewName("library_list");

        return mav;
    }

    @RequestMapping("/event.do")
    public ModelAndView schedule(@RequestParam(required=false)String district_event, @RequestParam(required=false)String library_event){
        ModelAndView mav = new ModelAndView();
        if((district_event != ""  && library_event != "") || (district_event != "" && library_event == ""))
            mav.addObject("library_event",eventService.serachEvent(district_event, library_event));
        else
            mav.addObject("library_event", null);

        mav.setViewName("library_event");

        return mav;
    }

}