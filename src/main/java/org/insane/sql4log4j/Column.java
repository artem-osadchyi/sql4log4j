package org.insane.sql4log4j;

import java.util.function.Predicate;

import org.insane.sql4log4j.grammars.log4j.Log4jPatternParser;

public enum Column {
	CATEGORY("c", "category", Log4jPatternParser.CATEGORY),
	FQCN("C", "fcqn", Log4jPatternParser.FQCN),
	DATE("d", "date", Log4jPatternParser.DATE),
	FILE("F", "file", Log4jPatternParser.FILE),
	LOCATION("l", "location", Log4jPatternParser.LOCATION),
	LINE("L", "line", Log4jPatternParser.LINE),
	MESSAGE("m", "message", Log4jPatternParser.MESSAGE),
	METHOD("M", "method", Log4jPatternParser.METHOD),
	PRIORITY("p", "priority", Log4jPatternParser.PRIORITY),
	MILLIS("r", "millis", Log4jPatternParser.MILLIS),
	THREAD("t", "thread", Log4jPatternParser.THREAD),
	NDC("x", "ndc", Log4jPatternParser.NDC),
	MDC("X", "mdc", Log4jPatternParser.MDC);

	protected static Column getByPredicate(Predicate<Column> predicate) {
		for (Column column : Column.values()) {
			if (predicate.test(column)) {
				return column;
			}
		}

		return null;
	}

	public static Column getByConversionCharacter(String conversionCharacter) {
		return Column.getByPredicate(c -> c.getConversionCharacter().equals(conversionCharacter));
	}

	public static Column getByColumnName(String columnName) {
		return Column.getByPredicate(c -> c.getColumnName().equals(columnName));
	}

	public static Column getByIndex(int index) {
		return Column.getByPredicate(c -> c.getIndex() == index);
	}

	private String conversionCharacter;
	private String columnName;
	private int index;

	private Column(String conversionCharacter, String columnName, int index) {
		this.conversionCharacter = conversionCharacter;
		this.columnName = columnName;
		this.index = index;
	}

	public String getConversionCharacter() {
		return this.conversionCharacter;
	}

	public String getColumnName() {
		return this.columnName;
	}

	public int getIndex() {
		return this.index;
	}

}