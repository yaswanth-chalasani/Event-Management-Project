package com.cognizant.EventManagement.dao;

import java.util.List;

import com.cognizant.EventManagement.entity.Event;

public interface EventDAO {
  public List<Event> getAllEvents();
  public void saveEvent(Event eve);
  public Event getEvent(int id);
  public void deleteEvent(int id);
  public Event searchEvent(int id);
}