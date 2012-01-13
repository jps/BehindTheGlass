using UnityEngine;
[ExecuteInEditMode()] 
public class RotatableGuiItem : MonoBehaviour {
	
	
	public Transform from;
	public Transform to;
    public Texture2D texture = null;
    public float angle = 0;
    public Vector2 size = new Vector2(128, 128);
    public Vector2 pos;// = new Vector2(0, 0);
    Rect rect;
    Vector2 pivot;

    void Start() {
        UpdateSettings();
    }

    void UpdateSettings() {
		rect = new Rect(pos.x, pos.y, size.x, size.y);
        pivot = new Vector2(rect.xMin + rect.width * 0.5f, rect.yMin + rect.height * 0.5f);		
    }

    void OnGUI() {
        
		var deltax = from.position.x - to.position.x; 
		var deltaz = from.position.z - to.position.z;
		
		float angle_rad = Mathf.Atan2( deltaz, deltax);
		angle = (((angle_rad*180/Mathf.PI) -180)*-1) - from.eulerAngles.y; // convert to degrees then rotate the texture around the y axis

		
		if (Application.isEditor) { UpdateSettings(); }
        Matrix4x4 matrixBackup = GUI.matrix;
        GUIUtility.RotateAroundPivot(angle, pivot);
        GUI.DrawTexture(rect, texture);
        GUI.matrix = matrixBackup;
    }
}