.class public Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;
.super Lcom/android/systemui/statusbar/GestureRecorder$Gesture$Record;
.source "GestureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MotionEventRecord"
.end annotation


# instance fields
.field public event:Landroid/view/MotionEvent;


# virtual methods
.method actionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "down"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "up"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "move"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "cancel"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "{\"type\":\"motion\", \"time\":%d, \"action\":\"%s\", \"x\":%.2f, \"y\":%.2f, \"s\":%.2f, \"p\":%.2f}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->actionName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
