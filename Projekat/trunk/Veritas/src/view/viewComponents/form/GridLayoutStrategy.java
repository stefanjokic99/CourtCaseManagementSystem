package view.viewComponents.form;

import java.awt.GridLayout;

public class GridLayoutStrategy extends LayoutStrategy{

	public GridLayoutStrategy(int rows, int cols, int xgap, int ygap) {
		this.layoutManager =  new GridLayout(rows, cols, xgap, ygap);
	}

}
