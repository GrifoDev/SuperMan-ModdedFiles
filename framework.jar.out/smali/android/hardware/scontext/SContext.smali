.class public Landroid/hardware/scontext/SContext;
.super Ljava/lang/Object;
.source "SContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContext$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContext;",
            ">;"
        }
    .end annotation
.end field

.field static final REPORTING_MODE_BATCH:I = 0x5

.field static final REPORTING_MODE_CONTINUOUS:I = 0x1

.field static final REPORTING_MODE_ONE_SHOT:I = 0x2

.field static final REPORTING_MODE_ON_CHANGE:I = 0x3

.field static final REPORTING_MODE_ON_CHANGE_AND_INITIAL_INFO:I = 0x4

.field public static final TYPE_ABNORMAL_PRESSURE:I = 0x29
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ACTIVE_TIME_MONITOR:I = 0x22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ACTIVITY_BATCH:I = 0x1a

.field public static final TYPE_ACTIVITY_CALIBRATION:I = 0x35
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ACTIVITY_LOCATION_LOGGING:I = 0x18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ACTIVITY_NOTIFICATION:I = 0x1b

.field public static final TYPE_ACTIVITY_NOTIFICATION_EX:I = 0x1e

.field public static final TYPE_ACTIVITY_TRACKER:I = 0x19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_AIRMOTION:I = 0x7

.field public static final TYPE_ANY_MOTION_DETECTOR:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_APPROACH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_AUTO_BRIGHTNESS:I = 0x27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_AUTO_ROTATION:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_BOTTOM_FLAT_DETECTOR:I = 0x26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_BOUNCE_LONG_MOTION:I = 0x12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_BOUNCE_SHORT_MOTION:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CALL_MOTION:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CALL_POSE:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CAPTURE_MOTION:I = 0x1f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CARRYING_STATUS_MONITOR:I = 0x25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_CURRENT_STATUS_FOR_POSITIONING:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_DEVICE_PHYSICAL_CONTEXT_MONITOR:I = 0x33
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_DEVICE_POSITION:I = 0x16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_DUAL_DISPLAY_ANGLE:I = 0x2d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ENVIRONMENT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ENVIRONMENT_ADAPTIVE_DISPLAY:I = 0x2c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_EXERCISE:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_FLAT_MOTION:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_FLAT_MOTION_FOR_TABLE_MODE:I = 0x24
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_FLIP_COVER_ACTION:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_FLIP_MOTION:I = 0x31
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_GYRO_TEMPERATURE:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_HALL_SENSOR:I = 0x2b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_INACTIVE_TIMER:I = 0x23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_INTERRUPT_GYRO:I = 0x30
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MAIN_SCREEN_DETECTION:I = 0x31
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOTION:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOVEMENT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOVEMENT_ALERT:I = 0x15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOVEMENT_FOR_POSITIONING:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PEDOMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PHONE_STATUS_MONITOR:I = 0x2a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PUT_DOWN_MOTION:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SENSOR_STATUS_CHECK:I = 0x34
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SHAKE_MOTION:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SLEEP_MONITOR:I = 0x1d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SLOCATION_CORE:I = 0x2f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SPECIFIC_POSE_ALERT:I = 0x1c

.field public static final TYPE_STEP_COUNT_ALERT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_STEP_LEVEL_MONITOR:I = 0x21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TEMPERATURE_ALERT:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TEST_FLAT_MOTION:I = 0x16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WAKE_UP_VOICE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WIRELESS_CHARGING_DETECTION:I = 0x2e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WRIST_UP_MOTION:I = 0x13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sServiceList:[Ljava/lang/String;

.field private static final sServiceReportingModes:[I


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x35

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "Approach"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Pedometer"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "S Count Alert"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "Motion"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "Movement"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "Auto Rotation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Air Motion"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Environment"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Movemnt For Positioning"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Current Status For Positioning"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "Call Pose"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Shake Motion"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Flip Cover Action"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Gyro Temperature"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "Put Down Motion"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Wake Up Voice"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Bounce Short Motion"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "Bounce Long Motion"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "Wrist Up Motion"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "Flat Motion"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "Movement Alert"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "Device Position"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "Temperature Alert"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "Activity Location Logging"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "Activity Tracker"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "Activity Batch"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "Activity Notification"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "Specific Pose Alert"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "Sleep Monitor"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "Activity Notification Ex"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "Capture Motion"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "Call Motion"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "Step Level Monitor"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "Acitve Time Monitor"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "Inactive Timer"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "Flat Motion For Table Mode"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "Carrying Status Monitor"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "Bottom Flat Detector"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "Auto Brightness"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "Exercise"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "Abnormal Pressure"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "Phone Status Monitor"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "Hall Sensor"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "Environment Adaptive Display"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "Dual Display Angle"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "Wireless Charging Detection"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "Slocation Core"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "Interrupt Gyro"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "Flip Motion"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "Any Motion Detector"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string/jumbo v1, "Device Physical Context Monitor"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string/jumbo v1, "Sensor Status Check"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "Activity Calibration"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sput-object v0, Landroid/hardware/scontext/SContext;->sServiceList:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/scontext/SContext;->sServiceReportingModes:[I

    new-instance v0, Landroid/hardware/scontext/SContext$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x3
        0x3
        0x2
        0x3
        0x2
        0x4
        0x3
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x2
        0x4
        0x2
        0x3
        0x3
        0x5
        0x4
        0x3
        0x5
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x3
        0x4
        0x4
        0x3
        0x3
        0x4
        0x2
        0x3
        0x4
        0x3
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContext;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getReportingMode(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/hardware/scontext/SContext;->sServiceReportingModes:[I

    array-length v0, v0

    if-gt p0, v0, :cond_0

    sget-object v0, Landroid/hardware/scontext/SContext;->sServiceReportingModes:[I

    add-int/lit8 v1, p0, -0x1

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getServiceName(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/hardware/scontext/SContext;->sServiceList:[Ljava/lang/String;

    array-length v0, v0

    if-gt p0, v0, :cond_0

    sget-object v0, Landroid/hardware/scontext/SContext;->sServiceList:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    return v0
.end method

.method setType(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/scontext/SContext;->mType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
