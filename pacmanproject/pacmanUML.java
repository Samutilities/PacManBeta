/*(NULL)*/
abstract class Ghost * extends Character * {
	protected ScriptIa typeIa;
	protected boolean isFrozen = false;
	protected boolean isEaten = false;
	protected sound soundEffectGhost;

	public Ghost *() {
		
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
abstract class Elements * {
	private image elementImg;
	private image elementImgIco;
	private int elementHeight;
	private int elementLenth;
	private int idElement;

	public Elements *() {
		
	}

}

/*// regroupes tous les objets et les murs */
abstract class Items * extends Elements * {
	private int score;
	private sound soundEffect;

	public Items *() {
		
	}

	public boolean isEaten () {
		
	}

}

class Wall extends Elements * {

	public Wall() {
		
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

class PacMan extends Character * {
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
class SuperPacGum extends Items * {

	public SuperPacGum() {
		
	}

}

abstract class Character * extends Elements * {
	private int characterSpeed;
	private int characterX;
	private int characterY;

	public Character *() {
		
	}

	public X,Y move (Button button) {
		
	}

	public boolean meetWall () {
		
	}

}

class Inky extends Ghost * {

	public Inky() {
		
	}

}

/*// 40pts*/
class PacFruit extends Items * {

	public PacFruit() {
		
	}

}

/*//30pts*/
class PacPrika extends Items * {

	public PacPrika() {
		
	}

}

/*// 20pts*/
class PacFreeze extends Items * {

	public PacFreeze() {
		
	}

}

class Clyde extends Ghost * {

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

class Blinky extends Ghost * {

	public Blinky() {
		
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
class PacGum extends Items * {

	public PacGum() {
		
	}

}

class Main {

	public Main() {
		
	}

}

class Pinky extends Ghost * {

	public Pinky() {
		
	}

}

