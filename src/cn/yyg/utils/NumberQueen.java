package cn.yyg.utils;

import java.util.Collection;
import java.util.concurrent.ArrayBlockingQueue;

public class NumberQueen extends ArrayBlockingQueue<Integer> {

	private String aid;// activity's aid

	// public NumberQueen(int capacity, boolean fair,
	// Collection<? extends Integer> c) {
	// super(capacity, fair, c);
	// // TODO Auto-generated constructor stub
	// init(capacity);
	// }
	//
	// public NumberQueen(int capacity, boolean fair) {
	// super(capacity, fair);
	// // TODO Auto-generated constructor stub
	// init(capacity);
	// }
	//
	// public NumberQueen(int capacity) {
	// super(capacity);
	// // TODO Auto-generated constructor stub
	// init(capacity);
	// }
	public void init(int capacity) {

		// init the queue
		this.addAll(NumberCache.getValues(capacity));
	}

	public NumberQueen(String aid, int capacity, boolean fair) {
		super(capacity, fair);

		this.setAid(aid);
		init(capacity);
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	// pop
	public Integer getNumber() {

		return this.poll();
	}

	// push
	public boolean addNumber(int num) {

		return this.add(NumberCache.getValue(num));
	}

}
