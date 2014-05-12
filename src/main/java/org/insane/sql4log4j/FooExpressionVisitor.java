package org.insane.sql4log4j;

import java.util.regex.Pattern;

import org.insane.sql4log4j.grammars.s4lql.ExpressionBaseVisitor;
import org.insane.sql4log4j.grammars.s4lql.ExpressionParser.AndContext;
import org.insane.sql4log4j.grammars.s4lql.ExpressionParser.EqualsContext;
import org.insane.sql4log4j.grammars.s4lql.ExpressionParser.MatchesContext;
import org.insane.sql4log4j.grammars.s4lql.ExpressionParser.NotContext;
import org.insane.sql4log4j.grammars.s4lql.ExpressionParser.OrContext;
import org.insane.sql4log4j.grammars.s4lql.ExpressionParser.ParenthesesContext;

public class FooExpressionVisitor extends ExpressionBaseVisitor<Boolean> {

	@Override
	public Boolean visitParentheses(ParenthesesContext ctx) {
		return visit(ctx.expression());
	}

	@Override
	public Boolean visitNot(NotContext ctx) {
		return !visit(ctx.expression());
	}

	@Override
	public Boolean visitOr(OrContext ctx) {
		return visit(ctx.expression(0)) || visit(ctx.expression(1));
	}

	@Override
	public Boolean visitAnd(AndContext ctx) {
		return visit(ctx.expression(0)) && visit(ctx.expression(1));
	}

	@Override
	public Boolean visitEquals(EqualsContext ctx) {
		String column = ctx.column().getText(); // Stub implementation
		String value = ctx.T_STRING_LITERAL().getText();

		return column.equalsIgnoreCase(value);
	}

	@Override
	public Boolean visitMatches(MatchesContext ctx) {
		String column = ctx.column().getText(); // Stub implementation
		String value = ctx.T_STRING_LITERAL().getText();

		return Pattern.matches(value, column);
	}

}