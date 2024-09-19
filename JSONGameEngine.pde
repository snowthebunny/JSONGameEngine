class Object
{
  int x = 0;
  int y = 0;
  
  public Object(int _x, int _y)
  {
    x = _x;
    y = _y;
  }
}

JSONObject project = new JSONObject();
JSONObject window = new JSONObject();

void setup()
{
  size(1, 1);
  
  project = loadJSONObject("game/project.json");
  window = project.getJSONObject("window");
  
  windowResize(window.getInt("width"), window.getInt("height"));
  surface.setTitle(window.getString("title"));
}
