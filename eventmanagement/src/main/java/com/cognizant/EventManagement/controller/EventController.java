package com.cognizant.EventManagement.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.EventManagement.entity.Event;
import com.cognizant.EventManagement.service.EventService;

@Controller
@RequestMapping("/event")
public class EventController {
	
	@Autowired
    EventService eventService;
    
	@GetMapping("/list")
    public String listEvents(Model theModel)
    {
		List<Event> events= eventService.getAllEvents();
		theModel.addAttribute("events",events);
        events.forEach(s -> System.out.println(s));
    	return "event-list";
    }
	
    @GetMapping("/addEvent")
	public String addEvent(Model model) {
		Event e1=new Event();
		model.addAttribute("event",e1);
		return "event-add-form";
	}
    
    @PostMapping("/saveEvent")
	public String saveEvent(@Valid @ModelAttribute("event") Event eve,BindingResult bind)
	{
    	if(bind.hasErrors())
    	{
    		System.out.println(bind);
    		return "event-add-form";
    	}
    	else
    	{
    	   eventService.saveEvent(eve);
		   return "redirect:/event/list";
    	}
	}
    
    @GetMapping("/updateEvent")
    public String updateEvent(@RequestParam("eventId") int id,Model model)
	{
		Event eve=eventService.getEvent(id);
		model.addAttribute("event", eve);
		return "event-update-form";
	}
    
    @GetMapping("/deleteEvent")
	public String delete(@RequestParam("eventId") int id)
	{
		eventService.deleteEvent(id);
		return "redirect:/event/list";
	}
    @GetMapping("/searchEvent")
  	public String searchEvent(@RequestParam("eventId") int id, Model model)
  	{
    	Event eve=eventService.searchEvent(id);
      	model.addAttribute("event", eve);
  		return "event-search-form";
  	}
}