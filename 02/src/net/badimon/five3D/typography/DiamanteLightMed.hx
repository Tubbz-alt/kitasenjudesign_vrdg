package net.badimon.five3D.typography;

class DiamanteLightMed extends Typography3D {

	private static var _instance:DiamanteLightMed;

	/*
	public static var instance(getInstance, null):DiamanteLightMed;
	private static function getInstance():DiamanteLightMed {
		if (_instance == null) _instance = new DiamanteLightMed();
		return _instance;
	}*/

	public function new() {
		super();
		initializeMotifs();
		initializeWidths();
		height = 116;
	}

	private function initializeMotifs():Void {
		motifs.set(".", [['M',[7.3,90.6]],['L',[16.7,90.6]],['L',[16.7,77.2]],['L',[7.3,77.2]],['L',[7.3,90.6]]]);
		motifs.set("0", [['M',[4.2,85.1]],['L',[9.4,90.6]],['L',[32.5,90.6]],['L',[37.7,85.1]],['L',[37.7,29.5]],['L',[32.3,23.9]],['L',[9.6,23.9]],['L',[4.2,29.5]],['L',[4.2,85.1]],['M',[13.3,82.5]],['L',[13.3,32.1]],['L',[28.6,32.1]],['L',[28.6,82.5]],['L',[13.3,82.5]]]);
		motifs.set("1", [['M',[10.9,31.4]],['L',[18.5,31.4]],['L',[18.5,90.6]],['L',[27.6,90.6]],['L',[27.6,23.9]],['L',[20.1,23.9]],['L',[10.9,26.8]],['L',[10.9,31.4]]]);
		motifs.set("2", [['M',[4,90.6]],['L',[37.7,90.6]],['L',[37.7,82.1]],['L',[13,82.1]],['L',[13,70.5]],['L',[34.1,59.4]],['L',[37.9,55]],['L',[37.9,29.4]],['L',[32.7,23.9]],['L',[9.2,23.9]],['L',[4,29.2]],['L',[4,46.4]],['L',[13,45]],['L',[13,32.1]],['L',[28.9,32.1]],['L',[28.9,51.8]],['L',[7.8,63]],['L',[4,67.3]],['L',[4,90.6]]]);
		motifs.set("3", [['M',[4,85.1]],['L',[9.2,90.6]],['L',[32.5,90.6]],['L',[37.8,85.3]],['L',[37.8,60.8]],['L',[33,56]],['L',[37.9,51]],['L',[37.9,29.6]],['L',[32.4,23.9]],['L',[9.5,23.9]],['L',[4.1,29.6]],['L',[4.1,44.5]],['L',[13.2,46.5]],['L',[13.2,32.2]],['L',[29,32.2]],['L',[29,52.5]],['L',[17,52.5]],['L',[17,59.4]],['L',[28.9,59.4]],['L',[28.9,82.6]],['L',[13,82.6]],['L',[13,68.4]],['L',[4,70]],['L',[4,85.1]]]);
		motifs.set("4", [['M',[1.3,75.7]],['L',[26.1,75.7]],['L',[26.1,90.6]],['L',[35.1,90.6]],['L',[35.1,75.7]],['L',[40.4,75.7]],['L',[40.4,68.1]],['L',[35.2,68.1]],['L',[35.2,23.9]],['L',[23,23.9]],['L',[1.3,68.1]],['L',[1.3,75.7]],['M',[9.4,68.1]],['L',[26.2,34.8]],['L',[26.2,68.1]],['L',[9.4,68.1]]]);
		motifs.set("5", [['M',[4,85]],['L',[9.4,90.6]],['L',[32.4,90.6]],['L',[37.9,85]],['L',[37.9,52.9]],['L',[32.4,47.4]],['L',[13,47.4]],['L',[13,32.4]],['L',[36.2,32.4]],['L',[36.2,23.9]],['L',[4.2,23.9]],['L',[4.2,50.6]],['L',[9.2,55.8]],['L',[28.9,55.8]],['L',[28.9,82.4]],['L',[13,82.4]],['L',[13,68.1]],['L',[4,70.1]],['L',[4,85]]]);
		motifs.set("6", [['M',[4,85.1]],['L',[9.3,90.6]],['L',[32.5,90.6]],['L',[37.8,85.1]],['L',[37.8,53.9]],['L',[32.3,48.4]],['L',[16.2,48.4]],['L',[13,51.3]],['L',[13,32.1]],['L',[28.9,32.1]],['L',[28.9,44.7]],['L',[37.9,43]],['L',[37.9,29.4]],['L',[32.6,23.9]],['L',[9.3,23.9]],['L',[4,29.6]],['L',[4,85.1]],['M',[12.9,82.4]],['L',[12.9,56.6]],['L',[28.9,56.6]],['L',[28.9,82.4]],['L',[12.9,82.4]]]);
		motifs.set("7", [['M',[2.9,32.4]],['L',[30.1,32.4]],['L',[4.4,90.6]],['L',[14.4,90.6]],['L',[40.4,31]],['L',[40.4,23.9]],['L',[2.9,23.9]],['L',[2.9,32.4]]]);
		motifs.set("8", [['M',[4.2,85.3]],['L',[9.5,90.6]],['L',[32.5,90.6]],['L',[37.8,85.3]],['L',[37.8,60.8]],['L',[33.1,56.1]],['L',[37.7,51.2]],['L',[37.7,29.4]],['L',[32.2,23.9]],['L',[9.8,23.9]],['L',[4.2,29.4]],['L',[4.2,51.2]],['L',[9,56.1]],['L',[4.2,60.8]],['L',[4.2,85.3]],['M',[13.2,82.5]],['L',[13.2,59.3]],['L',[28.8,59.3]],['L',[28.8,82.5]],['L',[13.2,82.5]],['M',[13.3,52.5]],['L',[13.3,32.1]],['L',[28.7,32.1]],['L',[28.7,52.5]],['L',[13.3,52.5]]]);
		motifs.set("9", [['M',[4.1,61.1]],['L',[9.5,66.6]],['L',[25.7,66.6]],['L',[28.9,63.7]],['L',[28.9,82.7]],['L',[13,82.7]],['L',[13,70.1]],['L',[4,71.6]],['L',[4,85.2]],['L',[9.3,90.6]],['L',[32.6,90.6]],['L',[37.9,85.1]],['L',[37.9,29.6]],['L',[32.6,23.9]],['L',[9.5,23.9]],['L',[4.1,29.5]],['L',[4.1,61.1]],['M',[13.1,58.3]],['L',[13.1,32.2]],['L',[28.9,32.2]],['L',[28.9,58.3]],['L',[13.1,58.3]]]);
	}

	private function initializeWidths():Void {
		widths.set(".", 24.7);
		widths.set("0", 43.4);
		widths.set("1", 43.4);
		widths.set("2", 43.4);
		widths.set("3", 43.4);
		widths.set("4", 43.4);
		widths.set("5", 43.4);
		widths.set("6", 43.4);
		widths.set("7", 43.4);
		widths.set("8", 43.5);
		widths.set("9", 43.4);
	}

}