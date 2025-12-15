package com.bus.data;

import com.bus.model.Trip;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class DataStore {
    public static List<Trip> tripList = new ArrayList<>();

    static {
        // Dữ liệu mẫu
        tripList.add(new Trip("T01", "Hà Nội - Hải Phòng", "08:00 16/12/2025", "2 giờ", 150000, "Hà Nội", "Hải Phòng"));
        tripList.add(new Trip("T02", "Hà Nội - Sapa", "22:00 16/12/2025", "6 giờ", 350000, "Hà Nội", "Sapa"));
        tripList.add(new Trip("T03", "Đà Nẵng - Huế", "14:30 16/12/2025", "2.5 giờ", 120000, "Đà Nẵng", "Huế"));
        tripList.add(new Trip("T04", "Sài Gòn - Đà Lạt", "23:00 17/12/2025", "7 giờ", 400000, "Sài Gòn", "Đà Lạt"));
    }

    // Hàm tìm kiếm
    public static List<Trip> searchTrips(String from, String to) {
        if (from == null && to == null) return tripList;
        return tripList.stream()
                .filter(t -> (from == null || t.getFromLocation().contains(from)) &&
                             (to == null || t.getToLocation().contains(to)))
                .collect(Collectors.toList());
    }
}