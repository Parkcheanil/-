package com.petworld.util;

import java.sql.Timestamp;
import lombok.Data;

@Data
public class PageVO {
	private Timestamp fromDate;
	private Timestamp toDate;
}
