.class final Lcom/android/server/GestureLauncherService$GestureEventListener;
.super Ljava/lang/Object;
.source "GestureLauncherService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$GestureEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method

.method private trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V
    .locals 24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get1(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v16, v10, v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x0

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v12, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x1

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v14, v0

    const/16 v19, 0x2

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-int v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get0(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v2, v10, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get2(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v4, v12, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get3(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v20

    sub-long v6, v14, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/GestureLauncherService;->-get4(Lcom/android/server/GestureLauncherService;)I

    move-result v19

    sub-int v8, v9, v19

    const-wide/16 v20, 0x0

    cmp-long v19, v2, v20

    if-ltz v19, :cond_0

    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-gez v19, :cond_1

    :cond_0
    return-void

    :cond_1
    const-wide/16 v20, 0x0

    cmp-long v19, v6, v20

    if-ltz v19, :cond_0

    invoke-static/range {v2 .. v8}, Lcom/android/server/EventLogTags;->writeCameraGestureTriggered(JJJI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10, v11}, Lcom/android/server/GestureLauncherService;->-set0(Lcom/android/server/GestureLauncherService;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v12, v13}, Lcom/android/server/GestureLauncherService;->-set1(Lcom/android/server/GestureLauncherService;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v14, v15}, Lcom/android/server/GestureLauncherService;->-set2(Lcom/android/server/GestureLauncherService;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/server/GestureLauncherService;->-set3(Lcom/android/server/GestureLauncherService;I)I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get7(Lcom/android/server/GestureLauncherService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-get5(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/GestureLauncherService;->-wrap0(Lcom/android/server/GestureLauncherService;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get6(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;->trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V

    :cond_1
    return-void

    :cond_2
    return-void
.end method
