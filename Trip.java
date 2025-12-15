package com.bus.model;

public class Trip {
	private String id;
	private String routeName; // Vd: Hà Nội - Sapa
	private String departureTime;
	private String duration; // Thời gian trung bình
	private double price;
	private String fromLocation;
	private String toLocation;

	public Trip(String id, String route, String time, String duration, double price, String from, String to) {
		this.id = id;
		this.routeName = route;
		this.departureTime = time;
		this.duration = duration;
		this.price = price;
		this.fromLocation = from;
		this.toLocation = to;
	}

	// Getter & Setter (Bạn tự sinh code này nhé)
	public String getId() {
		return id;
	}

	public String getRouteName() {
		return routeName;
	}

	public String getDepartureTime() {
		return departureTime;
	}

	public String getDuration() {
		return duration;
	}

	public double getPrice() {
		return price;
	}

	public String getFromLocation() {
		return fromLocation;
	}

	public String getToLocation() {
		return toLocation;
	}
}