abstract class Ghost extends Mobile {
	protected ScriptIa typeIa;
	protected boolean isFrozen = false;
	protected boolean isEaten = false;
	protected sound soundEffectGhost;

	public Ghost() {
		
	}

	public boolean meetPlayer () {
		
	}

	public boolean focusPlayer () {
		
	}

}

class Map extends Menu {
	protected bidimensionnal array mapSize = [700][700];
	protected Score mapScore;
	protected frame mapTimer;
	protected array int [399] mapComposition;

	public Map() {
		
	}

	public boolean mapCompleted () {
		
	}

	public boolean gameOver () {
		
	}

}

/*//chaque element peuvent faire jusqu'à 35x et 35y*/
abstract class Elements {
	private image elementImg;
	private image elementImgIco;
	private int elementHeight;
	private int elementLenth;
	private int idElement;

	public Elements() {
		
	}

}

/*// regroupes tous les objets et les murs */
abstract class Immobile extends Elements {
	private int score;
	private sound soundEffect;

	public Immobile() {
		
	}

	public boolean isEaten () {
		
	}

}

class Blinky extends Ghost {

	public Blinky() {
		
	}

}

abstract class Mobile extends Elements {
	private int characterSpeed;
	private int characterX;
	private int characterY;

	public Mobile() {
		
	}

	public X,Y move (Button button) {
		
	}

	public boolean meetWall () {
		
	}

}

abstract class Menu implements Main {
	protected String namePlayer = " ";

	public Menu() {
		
	}

	public boolean beginMap () {
		
	}

	public void showResult (Result result) {
		
	}

	public String registerPlayer () {
		
	}

}

class PacMan extends Mobile {
	protected int playerLife = 3;
	public array sound soundEffects;

	public PacMan() {
		
	}

	public boolean haveWin () {
		
	}

	public boolean swallowPacFreeze (tableau bi cordonnes) {
		
	}

	public boolean swallowSuperPacGum () {
		
	}

	public boolean swallowFruit () {
		
	}

	public boolean swallowPacGum () {
		
	}

	public boolean swallowPacPrika () {
		
	}

	public boolean meetGhost () {
		
	}

	public boolean loseLife () {
		
	}

}

/*//50pts*/
class SuperPacGum extends Immobile {

	public SuperPacGum() {
		
	}

}

class Inky extends Ghost {

	public Inky() {
		
	}

}

/*// 40pts*/
class PacFruit extends Immobile {

	public PacFruit() {
		
	}

}

/*//30pts*/
class PacPrika extends Immobile {

	public PacPrika() {
		
	}

}

/*// 20pts*/
class PacFreeze extends Immobile {

	public PacFreeze() {
		
	}

}

class Wall extends Elements {

	public Wall() {
		
	}

}

class Clyde extends Ghost {

	public Clyde() {
		
	}

}

abstract class Score {
	protected int scoreFruit;
	protected int scoreGhost;
	protected int scorePac-gum;
	protected int scoreLife;
	protected boolean haveUsedContinues;
	protected String namePlayer;

	public Score() {
		
	}

	public void showScore () {
		
	}

	public array String saveScore ( Score) {
		
	}

}

/*// base de donnees ou sont regroupées les scores des joueurs (les 5 meilleurs)*/
class Result {
	protected String nomJoueur;
	protected int resultFruit;
	protected int resultGhost;
	protected bool usedContinues;

	public Result() {
		
	}

}

class Control {
	protected Button buttonLeft;
	protected Button buttonRight;
	protected Button buttonUp;
	protected Button buttonDown;
	protected Button buttonPausedMap;
	protected Button buttonSelect;
	protected Button buttonCancel;

	public Control() {
		
	}

	public boolean pushButtonLeft () {
		
	}

	public boolean pushButtonRignt () {
		
	}

	public boolean pushButtonUp () {
		
	}

	public boolean pushButtonDown () {
		
	}

	public boolean pushButtonPausedMap () {
		
	}

	public boolean pushButtonSelect () {
		
	}

	public boolean pushButtonCancel () {
		
	}

}

/*// 10pts*/
class PacGum extends Immobile {

	public PacGum() {
		
	}

}

class Main {

	public Main() {
		
	}

}

class Pinky extends Ghost {

	public Pinky() {
		
	}

}

