.class public Landroid/hardware/SensorAdditionalInfo;
.super Ljava/lang/Object;
.source "SensorAdditionalInfo.java"


# static fields
.field public static final TYPE_DOCK_STATE:I = 0x30002

.field public static final TYPE_FRAME_BEGIN:I = 0x0

.field public static final TYPE_FRAME_END:I = 0x1

.field public static final TYPE_HIGH_PERFORMANCE_MODE:I = 0x30003

.field public static final TYPE_INTERNAL_TEMPERATURE:I = 0x10001

.field public static final TYPE_LOCAL_GEOMAGNETIC_FIELD:I = 0x30000

.field public static final TYPE_LOCAL_GRAVITY:I = 0x30001

.field public static final TYPE_MAGNETIC_FIELD_CALIBRATION:I = 0x30004

.field public static final TYPE_SAMPLING:I = 0x10004

.field private static final TYPE_SENSORHUB:I = 0x10032

.field private static final TYPE_SENSORHUB_DATA:I = 0x42554853

.field public static final TYPE_SENSOR_PLACEMENT:I = 0x10003

.field public static final TYPE_UNTRACKED_DELAY:I = 0x10000

.field public static final TYPE_VEC3_CALIBRATION:I = 0x10002


# instance fields
.field public final floatValues:[F

.field public final intValues:[I

.field public final sensor:Landroid/hardware/Sensor;

.field public final serial:I

.field public final type:I


# direct methods
.method constructor <init>(Landroid/hardware/Sensor;II[I[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    iput p2, p0, Landroid/hardware/SensorAdditionalInfo;->type:I

    iput p3, p0, Landroid/hardware/SensorAdditionalInfo;->serial:I

    iput-object p4, p0, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    iput-object p5, p0, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    return-void
.end method

.method public static createLocalGeomagneticField(FFF)Landroid/hardware/SensorAdditionalInfo;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Geomagnetic field info out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    float-to-double v4, p1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_0

    float-to-double v4, p2

    const-wide v6, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v0, v4, v6

    if-ltz v0, :cond_0

    float-to-double v4, p2

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_0

    new-instance v0, Landroid/hardware/SensorAdditionalInfo;

    const/4 v2, 0x3

    new-array v5, v2, [F

    aput p0, v5, v3

    const/4 v2, 0x1

    aput p1, v5, v2

    const/4 v2, 0x2

    aput p2, v5, v2

    const/high16 v2, 0x30000

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    return-object v0
.end method

.method public static createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong scontext data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10032

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong scontext sensor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Landroid/hardware/SensorAdditionalInfo;

    const v2, 0x42554853

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    return-object v0
.end method
