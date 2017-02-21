.class public Landroid/hardware/SensorAdditionalInfo;
.super Ljava/lang/Object;
.source "SensorAdditionalInfo.java"


# static fields
.field public static final TYPE_FRAME_BEGIN:I = 0x0

.field public static final TYPE_FRAME_END:I = 0x1

.field public static final TYPE_INTERNAL_TEMPERATURE:I = 0x10001

.field public static final TYPE_SAMPLING:I = 0x10004

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
