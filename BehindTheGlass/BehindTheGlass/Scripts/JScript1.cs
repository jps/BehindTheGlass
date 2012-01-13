using UnityEngine;
[ExecuteInEditMode()]
public class RotatableGuiItem : MonoBehaviour
{
    public Transform from; //current location
    public Transform to; //objective location
    public Texture2D texture = null;
    public float angle = 0;
    public Vector2 size = new Vector2(128, 128);
    public Vector2 pos;
    Rect rect;
    Vector2 pivot;

    void Start()
    {
        UpdateSettings();
    }

    void UpdateSettings()
    {
        rect = new Rect(pos.x, pos.y, size.x, size.y); // update the rectangle
        pivot = new Vector2(rect.xMin + rect.width * 0.5f, rect.yMin + rect.height * 0.5f); //ajust pivot
    }

    void OnGUI()
    {

        var deltax = from.position.x - to.position.x; //find dif
        var deltaz = from.position.z - to.position.z; //find dif

        float angle_rad = Mathf.Atan2(deltaz, deltax); //take the a tan to calulate the angle between the two
        angle = (((angle_rad * 180 / Mathf.PI) - 180) * -1) - from.eulerAngles.y; // convert to degrees then rotate the texture around the y axis
        

        if (Application.isEditor) { UpdateSettings(); }
        Matrix4x4 matrixBackup = GUI.matrix;
        GUIUtility.RotateAroundPivot(angle, pivot);
        GUI.DrawTexture(rect, texture);
        GUI.matrix = matrixBackup;
    }
}