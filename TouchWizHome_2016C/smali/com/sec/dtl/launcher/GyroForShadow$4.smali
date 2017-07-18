.class final Lcom/sec/dtl/launcher/GyroForShadow$4;
.super Ljava/lang/Object;
.source "GyroForShadow.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dtl/launcher/GyroForShadow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sget-wide v4, Lcom/sec/dtl/launcher/GyroForShadow;->mStartTimestamp:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v7, v1, v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v8, v1, v2

    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v2, 0x41200000    # 10.0f

    sget v3, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    const v4, 0x3d8f5c29    # 0.07f

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v11

    sput v11, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v2, 0x41200000    # 10.0f

    sget v3, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    const v4, 0x3d8f5c29    # 0.07f

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v12

    sput v12, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    sget v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v9, 0x0

    sget v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, 0x41200000    # 10.0f

    sget v2, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    sub-float v9, v1, v2

    :goto_0
    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, -0x3f600000    # -5.0f

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$300()F

    move-result v3

    neg-float v3, v3

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$300()F

    move-result v4

    invoke-static {v9, v1, v2, v3, v4}, Lcom/sec/dtl/launcher/GyroForShadow;->access$400(FFFFF)F

    move-result v1

    invoke-static {v1}, Lcom/sec/dtl/launcher/GyroForShadow;->access$202(F)F

    :goto_1
    sget v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    const/4 v10, 0x0

    sget v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const/high16 v1, 0x41200000    # 10.0f

    sget v2, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    sub-float v10, v1, v2

    :goto_2
    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, -0x3f600000    # -5.0f

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$600()F

    move-result v3

    neg-float v3, v3

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$600()F

    move-result v4

    invoke-static {v10, v1, v2, v3, v4}, Lcom/sec/dtl/launcher/GyroForShadow;->access$400(FFFFF)F

    move-result v1

    invoke-static {v1}, Lcom/sec/dtl/launcher/GyroForShadow;->access$502(F)F

    :goto_3
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$700()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$200()F

    move-result v1

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$500()F

    move-result v2

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$300()F

    move-result v3

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$600()F

    move-result v4

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$800()F

    move-result v5

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$900()F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;->onVectorChanged(FFFFFF)V

    goto :goto_4

    :cond_1
    const/high16 v1, -0x3ee00000    # -10.0f

    sget v2, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    sub-float v9, v1, v2

    goto :goto_0

    :cond_2
    sget v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, -0x3f600000    # -5.0f

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$300()F

    move-result v4

    neg-float v4, v4

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$300()F

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/dtl/launcher/GyroForShadow;->access$400(FFFFF)F

    move-result v1

    invoke-static {v1}, Lcom/sec/dtl/launcher/GyroForShadow;->access$202(F)F

    goto :goto_1

    :cond_3
    const/high16 v1, -0x3ee00000    # -10.0f

    sget v2, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    sub-float v10, v1, v2

    goto :goto_2

    :cond_4
    sget v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, -0x3f600000    # -5.0f

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$600()F

    move-result v4

    neg-float v4, v4

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$600()F

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/dtl/launcher/GyroForShadow;->access$400(FFFFF)F

    move-result v1

    invoke-static {v1}, Lcom/sec/dtl/launcher/GyroForShadow;->access$502(F)F

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1002b -> :sswitch_1
    .end sparse-switch
.end method
