.class Landroid/view/OrientationEventListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/view/OrientationEventListener;


# direct methods
.method constructor <init>(Landroid/view/OrientationEventListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v8, 0x0

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, -0x1

    aget v8, v7, v8

    neg-float v1, v8

    aget v8, v7, v12

    neg-float v2, v8

    const/4 v8, 0x2

    aget v8, v7, v8

    neg-float v3, v8

    mul-float v8, v1, v1

    mul-float v9, v2, v2

    add-float v5, v8, v9

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v8, v5

    mul-float v9, v3, v3

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    const v0, 0x42652ee1

    neg-float v8, v2

    float-to-double v8, v8

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const v9, 0x42652ee1

    mul-float v4, v8, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    rsub-int/lit8 v6, v8, 0x5a

    :goto_0
    const/16 v8, 0x168

    if-lt v6, v8, :cond_0

    add-int/lit16 v6, v6, -0x168

    goto :goto_0

    :cond_0
    :goto_1
    if-gez v6, :cond_1

    add-int/lit16 v6, v6, 0x168

    goto :goto_1

    :cond_1
    iget-object v8, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v8}, Landroid/view/OrientationEventListener;->-get0(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v8}, Landroid/view/OrientationEventListener;->-get0(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v8

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v8, v12, v9}, Landroid/view/OrientationListener;->onSensorChanged(I[F)V

    :cond_2
    iget-object v8, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v8}, Landroid/view/OrientationEventListener;->-get1(Landroid/view/OrientationEventListener;)I

    move-result v8

    if-eq v6, v8, :cond_3

    iget-object v8, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v8, v6}, Landroid/view/OrientationEventListener;->-set0(Landroid/view/OrientationEventListener;I)I

    iget-object v8, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-virtual {v8, v6}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    :cond_3
    return-void
.end method
