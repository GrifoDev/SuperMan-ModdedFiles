.class final Landroid/os/MacroModeManager$MacroModeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MacroModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MacroModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MacroModeInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/MacroModeManager;


# direct methods
.method public constructor <init>(Landroid/os/MacroModeManager;Landroid/view/InputChannel;)V
    .locals 1

    iput-object p1, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method

.method private initialize()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v2}, Landroid/os/MacroModeManager;->-set1(Landroid/os/MacroModeManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v1, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v2}, Landroid/os/MacroModeManager;->-set2(Landroid/os/MacroModeManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v1, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    invoke-static {v1}, Landroid/os/MacroModeManager;->-get1(Landroid/os/MacroModeManager;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "event"

    iget-object v3, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    invoke-static {v3}, Landroid/os/MacroModeManager;->-get3(Landroid/os/MacroModeManager;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private recordEvent(Landroid/view/MotionEvent;)V
    .locals 14

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iget-object v10, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    invoke-static {v10}, Landroid/os/MacroModeManager;->-get3(Landroid/os/MacroModeManager;)Lorg/json/JSONObject;

    move-result-object v10

    iget-object v11, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    invoke-static {v11}, Landroid/os/MacroModeManager;->-get0(Landroid/os/MacroModeManager;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v10, "action"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "actionButton"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "buttonState"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "deviceId"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "downTime"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v12

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v10, "edgeFlags"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "eventTime"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v10, "flags"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "metaState"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "source"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "xPrecision"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    float-to-double v12, v11

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v10, "yPrecision"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v11

    float-to-double v12, v11

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v10, "pointer"

    invoke-virtual {v8, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v10, v11, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-array v0, v10, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v4, v10, :cond_0

    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v10, v0, v4

    aget-object v10, v0, v4

    invoke-virtual {p1, v4, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-array v7, v10, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v4, v10, :cond_1

    new-instance v10, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v10, v7, v4

    aget-object v10, v7, v4

    invoke-virtual {p1, v4, v10}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v10, "AXIS_PRESSURE"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v0, v11

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    float-to-double v12, v11

    invoke-virtual {v1, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v10, "AXIS_SIZE"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v0, v11

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->size:F

    float-to-double v12, v11

    invoke-virtual {v1, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v10, "AXIS_X"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v0, v11

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-double v12, v11

    invoke-virtual {v1, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v10, "AXIS_Y"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v0, v11

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-double v12, v11

    invoke-virtual {v1, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v10, "ORIENTATION"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v0, v11

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v12, v11

    invoke-virtual {v1, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v10, "TOOL_MAJOR"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v0, v11

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    float-to-double v12, v11

    invoke-virtual {v1, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v10, "TOOL_MINOR"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v0, v11

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    float-to-double v12, v11

    invoke-virtual {v1, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v10, "TOUCH_MAJOR"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v0, v11

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    float-to-double v12, v11

    invoke-virtual {v1, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v10, "TOUCH_MINOR"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v0, v11

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    float-to-double v12, v11

    invoke-virtual {v1, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v10, "id"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v7, v11

    iget v11, v11, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "toolType"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v7, v11

    iget v11, v11, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    :cond_2
    iget-object v10, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    invoke-static {v10}, Landroid/os/MacroModeManager;->-get0(Landroid/os/MacroModeManager;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/MacroModeManager;->-set0(Landroid/os/MacroModeManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private recordJSONMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    invoke-static {v0}, Landroid/os/MacroModeManager;->-get1(Landroid/os/MacroModeManager;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    invoke-static {v0}, Landroid/os/MacroModeManager;->-get3(Landroid/os/MacroModeManager;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    invoke-static {v0}, Landroid/os/MacroModeManager;->-get0(Landroid/os/MacroModeManager;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1}, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->recordEvent(Landroid/view/MotionEvent;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->recordEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/MacroModeManager;->-wrap0(Landroid/os/MacroModeManager;Z)V

    invoke-direct {p0}, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->initialize()V

    goto :goto_0
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->this$0:Landroid/os/MacroModeManager;

    invoke-static {v3}, Landroid/os/MacroModeManager;->-get2(Landroid/os/MacroModeManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    nop

    nop

    move-object v2, v0

    invoke-direct {p0, v2}, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;->recordJSONMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3
.end method
