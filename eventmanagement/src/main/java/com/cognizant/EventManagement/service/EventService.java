package com.cognizant.EventManagement.service;

import java.util.List;

import com.cognizant.EventManagement.entity.Event;

public interface EventService {

	public List<Event> getAllEvents();
	public void saveEvent(Event eve);
	public Event getEvent(int id);
	public void deleteEvent(int id);
	public Event searchEvent(int id);
}