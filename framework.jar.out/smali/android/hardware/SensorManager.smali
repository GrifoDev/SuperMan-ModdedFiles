.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$DynamicSensorCallback;
    }
.end annotation


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field protected static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final mTempMatrix:[F


# instance fields
.field private mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    return-void
.end method

.method public static getAltitude(FF)F
    .locals 6

    const v0, 0x3e42dcae

    div-float v1, p1, p0

    float-to-double v2, v1

    const-wide v4, 0x3fc85b95c0000000L    # 0.19029495120048523

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const v2, 0x472d2a00    # 44330.0f

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .locals 30

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    const/16 v25, 0x0

    aget v16, p1, v25

    const/16 v25, 0x1

    aget v17, p1, v25

    const/16 v25, 0x2

    aget v18, p1, v25

    const/16 v25, 0x3

    aget v19, p1, v25

    const/16 v25, 0x4

    aget v20, p1, v25

    const/16 v25, 0x5

    aget v21, p1, v25

    const/16 v25, 0x6

    aget v22, p1, v25

    const/16 v25, 0x7

    aget v23, p1, v25

    const/16 v25, 0x8

    aget v24, p1, v25

    :cond_0
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    const/16 v25, 0x0

    aget v2, p2, v25

    const/16 v25, 0x1

    aget v3, p2, v25

    const/16 v25, 0x2

    aget v4, p2, v25

    const/16 v25, 0x3

    aget v5, p2, v25

    const/16 v25, 0x4

    aget v6, p2, v25

    const/16 v25, 0x5

    aget v7, p2, v25

    const/16 v25, 0x6

    aget v8, p2, v25

    const/16 v25, 0x7

    aget v9, p2, v25

    const/16 v25, 0x8

    aget v10, p2, v25

    :cond_1
    :goto_1
    mul-float v25, v2, v17

    mul-float v26, v5, v20

    add-float v25, v25, v26

    mul-float v26, v8, v23

    add-float v11, v25, v26

    mul-float v25, v3, v17

    mul-float v26, v6, v20

    add-float v25, v25, v26

    mul-float v26, v9, v23

    add-float v12, v25, v26

    mul-float v25, v4, v16

    mul-float v26, v7, v19

    add-float v25, v25, v26

    mul-float v26, v10, v22

    add-float v13, v25, v26

    mul-float v25, v4, v17

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v10, v23

    add-float v14, v25, v26

    mul-float v25, v4, v18

    mul-float v26, v7, v21

    add-float v25, v25, v26

    mul-float v26, v10, v24

    add-float v15, v25, v26

    float-to-double v0, v11

    move-wide/from16 v26, v0

    float-to-double v0, v12

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    aput v25, p0, v26

    neg-float v0, v14

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    aput v25, p0, v26

    neg-float v0, v13

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v15

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x2

    aput v25, p0, v26

    return-void

    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    const/16 v25, 0x0

    aget v16, p1, v25

    const/16 v25, 0x1

    aget v17, p1, v25

    const/16 v25, 0x2

    aget v18, p1, v25

    const/16 v25, 0x4

    aget v19, p1, v25

    const/16 v25, 0x5

    aget v20, p1, v25

    const/16 v25, 0x6

    aget v21, p1, v25

    const/16 v25, 0x8

    aget v22, p1, v25

    const/16 v25, 0x9

    aget v23, p1, v25

    const/16 v25, 0xa

    aget v24, p1, v25

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    const/16 v25, 0x0

    aget v2, p2, v25

    const/16 v25, 0x1

    aget v3, p2, v25

    const/16 v25, 0x2

    aget v4, p2, v25

    const/16 v25, 0x4

    aget v5, p2, v25

    const/16 v25, 0x5

    aget v6, p2, v25

    const/16 v25, 0x6

    aget v7, p2, v25

    const/16 v25, 0x8

    aget v8, p2, v25

    const/16 v25, 0x9

    aget v9, p2, v25

    const/16 v25, 0xa

    aget v10, p2, v25

    goto/16 :goto_1
.end method

.method private static getDelay(I)I
    .locals 1

    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    move v0, p0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x4e20

    goto :goto_0

    :pswitch_2
    const v0, 0x1046b

    goto :goto_0

    :pswitch_3
    const v0, 0x30d40

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getInclination([F)F
    .locals 4

    const/4 v2, 0x5

    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .locals 3

    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SensorManager"

    const-string/jumbo v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/hardware/LegacySensorManager;

    invoke-direct {v0, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    :cond_0
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getOrientation([F[F)[F
    .locals 9

    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    array-length v0, p0

    if-ne v0, v8, :cond_0

    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    :goto_0
    return-object p1

    :cond_0
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_0
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 8

    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    aget v0, p1, v7

    aput v0, p0, v4

    :goto_0
    aget v0, p1, v4

    aput v0, p0, v5

    aget v0, p1, v5

    aput v0, p0, v6

    aget v0, p1, v6

    aput v0, p0, v7

    return-void

    :cond_0
    aget v1, p1, v4

    aget v2, p1, v4

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    aget v2, p1, v5

    aget v3, p1, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v6

    aget v3, p1, v6

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p0, v4

    aget v1, p0, v4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    aget v0, p0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :cond_1
    aput v0, p0, v4

    goto :goto_0
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 26

    const/16 v23, 0x0

    aget v2, p2, v23

    const/16 v23, 0x1

    aget v3, p2, v23

    const/16 v23, 0x2

    aget v4, p2, v23

    mul-float v23, v2, v2

    mul-float v24, v3, v3

    add-float v23, v23, v24

    mul-float v24, v4, v4

    add-float v21, v23, v24

    const v16, 0x411cf5c3    # 9.81f

    const v15, 0x3f765d4b

    const v23, 0x3f765d4b

    cmpg-float v23, v21, v23

    if-gez v23, :cond_0

    const/16 v23, 0x0

    return v23

    :cond_0
    const/16 v23, 0x0

    aget v5, p3, v23

    const/16 v23, 0x1

    aget v6, p3, v23

    const/16 v23, 0x2

    aget v7, p3, v23

    mul-float v23, v6, v4

    mul-float v24, v7, v3

    sub-float v8, v23, v24

    mul-float v23, v7, v2

    mul-float v24, v5, v4

    sub-float v9, v23, v24

    mul-float v23, v5, v3

    mul-float v24, v6, v2

    sub-float v10, v23, v24

    mul-float v23, v8, v8

    mul-float v24, v9, v9

    add-float v23, v23, v24

    mul-float v24, v10, v10

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v20, v0

    const v23, 0x3dcccccd    # 0.1f

    cmpg-float v23, v20, v23

    if-gez v23, :cond_1

    const/16 v23, 0x0

    return v23

    :cond_1
    const/high16 v23, 0x3f800000    # 1.0f

    div-float v19, v23, v20

    mul-float v8, v8, v19

    mul-float v9, v9, v19

    mul-float v10, v10, v19

    mul-float v23, v2, v2

    mul-float v24, v3, v3

    add-float v23, v23, v24

    mul-float v24, v4, v4

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    div-float v17, v24, v23

    mul-float v2, v2, v17

    mul-float v3, v3, v17

    mul-float v4, v4, v17

    mul-float v23, v3, v10

    mul-float v24, v4, v9

    sub-float v11, v23, v24

    mul-float v23, v4, v8

    mul-float v24, v2, v10

    sub-float v12, v23, v24

    mul-float v23, v2, v9

    mul-float v24, v3, v8

    sub-float v13, v23, v24

    if-eqz p0, :cond_2

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v23, 0x0

    aput v8, p0, v23

    const/16 v23, 0x1

    aput v9, p0, v23

    const/16 v23, 0x2

    aput v10, p0, v23

    const/16 v23, 0x3

    aput v11, p0, v23

    const/16 v23, 0x4

    aput v12, p0, v23

    const/16 v23, 0x5

    aput v13, p0, v23

    const/16 v23, 0x6

    aput v2, p0, v23

    const/16 v23, 0x7

    aput v3, p0, v23

    const/16 v23, 0x8

    aput v4, p0, v23

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    mul-float v23, v5, v5

    mul-float v24, v6, v6

    add-float v23, v23, v24

    mul-float v24, v7, v7

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    div-float v18, v24, v23

    mul-float v23, v5, v11

    mul-float v24, v6, v12

    add-float v23, v23, v24

    mul-float v24, v7, v13

    add-float v23, v23, v24

    mul-float v14, v23, v18

    mul-float v23, v5, v2

    mul-float v24, v6, v3

    add-float v23, v23, v24

    mul-float v24, v7, v4

    add-float v23, v23, v24

    mul-float v22, v23, v18

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    aput v23, p1, v24

    const/16 v23, 0x0

    const/16 v24, 0x1

    aput v23, p1, v24

    const/16 v23, 0x0

    const/16 v24, 0x2

    aput v23, p1, v24

    const/16 v23, 0x0

    const/16 v24, 0x3

    aput v23, p1, v24

    const/16 v23, 0x4

    aput v14, p1, v23

    const/16 v23, 0x5

    aput v22, p1, v23

    const/16 v23, 0x0

    const/16 v24, 0x6

    aput v23, p1, v24

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x7

    aput v23, p1, v24

    const/16 v23, 0x8

    aput v14, p1, v23

    :cond_3
    :goto_1
    const/16 v23, 0x1

    return v23

    :cond_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v23, 0x0

    aput v8, p0, v23

    const/16 v23, 0x1

    aput v9, p0, v23

    const/16 v23, 0x2

    aput v10, p0, v23

    const/16 v23, 0x0

    const/16 v24, 0x3

    aput v23, p0, v24

    const/16 v23, 0x4

    aput v11, p0, v23

    const/16 v23, 0x5

    aput v12, p0, v23

    const/16 v23, 0x6

    aput v13, p0, v23

    const/16 v23, 0x0

    const/16 v24, 0x7

    aput v23, p0, v24

    const/16 v23, 0x8

    aput v2, p0, v23

    const/16 v23, 0x9

    aput v3, p0, v23

    const/16 v23, 0xa

    aput v4, p0, v23

    const/16 v23, 0x0

    const/16 v24, 0xb

    aput v23, p0, v24

    const/16 v23, 0x0

    const/16 v24, 0xc

    aput v23, p0, v24

    const/16 v23, 0x0

    const/16 v24, 0xd

    aput v23, p0, v24

    const/16 v23, 0x0

    const/16 v24, 0xe

    aput v23, p0, v24

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0xf

    aput v23, p0, v24

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    aput v23, p1, v24

    const/16 v23, 0x0

    const/16 v24, 0x1

    aput v23, p1, v24

    const/16 v23, 0x0

    const/16 v24, 0x2

    aput v23, p1, v24

    const/16 v23, 0x0

    const/16 v24, 0x4

    aput v23, p1, v24

    const/16 v23, 0x5

    aput v14, p1, v23

    const/16 v23, 0x6

    aput v22, p1, v23

    const/16 v23, 0x0

    const/16 v24, 0x8

    aput v23, p1, v24

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x9

    aput v23, p1, v24

    const/16 v23, 0xa

    aput v14, p1, v23

    const/16 v23, 0x0

    const/16 v24, 0xe

    aput v23, p1, v24

    const/16 v23, 0x0

    const/16 v24, 0xd

    aput v23, p1, v24

    const/16 v23, 0x0

    const/16 v24, 0xc

    aput v23, p1, v24

    const/16 v23, 0x0

    const/16 v24, 0xb

    aput v23, p1, v24

    const/16 v23, 0x0

    const/16 v24, 0x7

    aput v23, p1, v24

    const/16 v23, 0x0

    const/16 v24, 0x3

    aput v23, p1, v24

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0xf

    aput v23, p1, v24

    goto/16 :goto_1
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 18

    const/4 v15, 0x0

    aget v3, p1, v15

    const/4 v15, 0x1

    aget v7, p1, v15

    const/4 v15, 0x2

    aget v10, p1, v15

    move-object/from16 v0, p1

    array-length v15, v0

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    const/4 v15, 0x3

    aget v2, p1, v15

    :goto_0
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v12, v15, v3

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v13, v15, v7

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v10

    mul-float v14, v15, v10

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v5, v15, v7

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v10

    mul-float v11, v15, v2

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v6, v15, v10

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v8, v15, v2

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v9, v15, v10

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v4, v15, v2

    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v13

    sub-float/2addr v15, v14

    const/16 v16, 0x0

    aput v15, p0, v16

    sub-float v15, v5, v11

    const/16 v16, 0x1

    aput v15, p0, v16

    add-float v15, v6, v8

    const/16 v16, 0x2

    aput v15, p0, v16

    add-float v15, v5, v11

    const/16 v16, 0x3

    aput v15, p0, v16

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v12

    sub-float/2addr v15, v14

    const/16 v16, 0x4

    aput v15, p0, v16

    sub-float v15, v9, v4

    const/16 v16, 0x5

    aput v15, p0, v16

    sub-float v15, v6, v8

    const/16 v16, 0x6

    aput v15, p0, v16

    add-float v15, v9, v4

    const/16 v16, 0x7

    aput v15, p0, v16

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    const/16 v16, 0x8

    aput v15, p0, v16

    :cond_0
    :goto_1
    return-void

    :cond_1
    mul-float v15, v3, v3

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v15, v16, v15

    mul-float v16, v7, v7

    sub-float v15, v15, v16

    mul-float v16, v10, v10

    sub-float v2, v15, v16

    const/4 v15, 0x0

    cmpl-float v15, v2, v15

    if-lez v15, :cond_2

    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v2, v0

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v13

    sub-float/2addr v15, v14

    const/16 v16, 0x0

    aput v15, p0, v16

    sub-float v15, v5, v11

    const/16 v16, 0x1

    aput v15, p0, v16

    add-float v15, v6, v8

    const/16 v16, 0x2

    aput v15, p0, v16

    const/4 v15, 0x0

    const/16 v16, 0x3

    aput v15, p0, v16

    add-float v15, v5, v11

    const/16 v16, 0x4

    aput v15, p0, v16

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v12

    sub-float/2addr v15, v14

    const/16 v16, 0x5

    aput v15, p0, v16

    sub-float v15, v9, v4

    const/16 v16, 0x6

    aput v15, p0, v16

    const/4 v15, 0x0

    const/16 v16, 0x7

    aput v15, p0, v16

    sub-float v15, v6, v8

    const/16 v16, 0x8

    aput v15, p0, v16

    add-float v15, v9, v4

    const/16 v16, 0x9

    aput v15, p0, v16

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    const/16 v16, 0xa

    aput v15, p0, v16

    const/4 v15, 0x0

    const/16 v16, 0xb

    aput v15, p0, v16

    const/4 v15, 0x0

    const/16 v16, 0xe

    aput v15, p0, v16

    const/4 v15, 0x0

    const/16 v16, 0xd

    aput v15, p0, v16

    const/4 v15, 0x0

    const/16 v16, 0xc

    aput v15, p0, v16

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0xf

    aput v15, p0, v16

    goto/16 :goto_1
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 4

    if-ne p0, p3, :cond_2

    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, v2, v0

    aput v3, p3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    monitor-exit v2

    return v3

    :cond_1
    monitor-exit v2

    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 17

    move-object/from16 v0, p3

    array-length v6, v0

    move-object/from16 v0, p0

    array-length v15, v0

    if-eq v15, v6, :cond_0

    const/4 v15, 0x0

    return v15

    :cond_0
    and-int/lit8 v15, p1, 0x7c

    if-nez v15, :cond_1

    and-int/lit8 v15, p2, 0x7c

    if-eqz v15, :cond_2

    :cond_1
    const/4 v15, 0x0

    return v15

    :cond_2
    and-int/lit8 v15, p1, 0x3

    if-eqz v15, :cond_3

    and-int/lit8 v15, p2, 0x3

    if-nez v15, :cond_4

    :cond_3
    const/4 v15, 0x0

    return v15

    :cond_4
    and-int/lit8 v15, p1, 0x3

    and-int/lit8 v16, p2, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    const/4 v15, 0x0

    return v15

    :cond_5
    xor-int v1, p1, p2

    and-int/lit8 v15, p1, 0x3

    add-int/lit8 v12, v15, -0x1

    and-int/lit8 v15, p2, 0x3

    add-int/lit8 v13, v15, -0x1

    and-int/lit8 v15, v1, 0x3

    add-int/lit8 v14, v15, -0x1

    add-int/lit8 v15, v14, 0x1

    rem-int/lit8 v2, v15, 0x3

    add-int/lit8 v15, v14, 0x2

    rem-int/lit8 v3, v15, 0x3

    xor-int v15, v12, v2

    xor-int v16, v13, v3

    or-int v15, v15, v16

    if-eqz v15, :cond_6

    xor-int/lit16 v1, v1, 0x80

    :cond_6
    const/16 v15, 0x80

    move/from16 v0, p1

    if-lt v0, v15, :cond_a

    const/4 v9, 0x1

    :goto_0
    const/16 v15, 0x80

    move/from16 v0, p2

    if-lt v0, v15, :cond_b

    const/4 v10, 0x1

    :goto_1
    const/16 v15, 0x80

    if-lt v1, v15, :cond_c

    const/4 v11, 0x1

    :goto_2
    const/16 v15, 0x10

    if-ne v6, v15, :cond_d

    const/4 v8, 0x4

    :goto_3
    const/4 v5, 0x0

    :goto_4
    const/4 v15, 0x3

    if-ge v5, v15, :cond_12

    mul-int v7, v5, v8

    const/4 v4, 0x0

    :goto_5
    const/4 v15, 0x3

    if-ge v4, v15, :cond_11

    if-ne v12, v4, :cond_7

    add-int v16, v7, v4

    if-eqz v9, :cond_e

    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    neg-float v15, v15

    :goto_6
    aput v15, p3, v16

    :cond_7
    if-ne v13, v4, :cond_8

    add-int v16, v7, v4

    if-eqz v10, :cond_f

    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    neg-float v15, v15

    :goto_7
    aput v15, p3, v16

    :cond_8
    if-ne v14, v4, :cond_9

    add-int v16, v7, v4

    if-eqz v11, :cond_10

    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    neg-float v15, v15

    :goto_8
    aput v15, p3, v16

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    goto :goto_0

    :cond_b
    const/4 v10, 0x0

    goto :goto_1

    :cond_c
    const/4 v11, 0x0

    goto :goto_2

    :cond_d
    const/4 v8, 0x3

    goto :goto_3

    :cond_e
    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    goto :goto_6

    :cond_f
    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    goto :goto_7

    :cond_10
    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    goto :goto_8

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_12
    const/16 v15, 0x10

    if-ne v6, v15, :cond_13

    const/4 v15, 0x0

    const/16 v16, 0xe

    aput v15, p3, v16

    const/4 v15, 0x0

    const/16 v16, 0xd

    aput v15, p3, v16

    const/4 v15, 0x0

    const/16 v16, 0xc

    aput v15, p3, v16

    const/4 v15, 0x0

    const/16 v16, 0xb

    aput v15, p3, v16

    const/4 v15, 0x0

    const/16 v16, 0x7

    aput v15, p3, v16

    const/4 v15, 0x0

    const/16 v16, 0x3

    aput v15, p3, v16

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0xf

    aput v15, p3, v16

    :cond_13
    const/4 v15, 0x1

    return v15
.end method


# virtual methods
.method public cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method public flush(Landroid/hardware/SensorEventListener;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 5

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq p1, v4, :cond_0

    const/16 v4, 0x11

    if-ne p1, v4, :cond_3

    :cond_0
    :goto_0
    const/4 v3, 0x1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v4

    if-ne v4, v3, :cond_2

    return-object v1

    :cond_3
    const/16 v4, 0x16

    if-eq p1, v4, :cond_0

    const/16 v4, 0x17

    if-eq p1, v4, :cond_0

    const/16 v4, 0x18

    if-eq p1, v4, :cond_0

    const/16 v4, 0x19

    if-eq p1, v4, :cond_0

    const/16 v4, 0x1a

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    return-object v4
.end method

.method public getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v3

    if-ne v3, p2, :cond_0

    return-object v1

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getDynamicSensorList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullDynamicSensorList()Ljava/util/List;

    move-result-object v0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method protected abstract getFullDynamicSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    move-object v3, v0

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v5

    return-object v3

    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getSensors()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public initDataInjection(Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->initDataInjectionImpl(Z)Z

    move-result v0

    return v0
.end method

.method protected abstract initDataInjectionImpl(Z)Z
.end method

.method public injectSensorData(Landroid/hardware/Sensor;[FIJ)Z
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sensor cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->isDataInjectionSupported()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sensor does not support data injection"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sensor data cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v1, 0x17

    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    array-length v1, p2

    if-eq v1, v0, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong number of values for sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, -0x1

    if-lt p3, v1, :cond_4

    const/4 v1, 0x3

    if-le p3, v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid sensor accuracy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gtz v1, :cond_6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Negative or zero sensor timestamp"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z

    move-result v1

    return v1
.end method

.method protected abstract injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
.end method

.method public isDynamicSensorDiscoverySupported()Z
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected abstract registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .locals 7

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 7

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 7

    const/4 v5, 0x0

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method protected abstract registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    return v0
.end method

.method protected abstract requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method protected abstract unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method protected abstract unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
