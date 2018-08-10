.class public Lcom/samsung/android/hardware/context/SemContextLocationCore;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextLocationCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextLocationCore$1;
    }
.end annotation


# static fields
.field public static final ACTION_CURRENT_LOCATION_ACTIVITY_RECOGNITION_START:I = 0xb

.field public static final ACTION_CURRENT_LOCATION_ACTIVITY_RECOGNITION_STOP:I = 0xc

.field public static final ACTION_CURRENT_LOCATION_DISTANCE_CALLBACK:I = 0x4

.field public static final ACTION_CURRENT_LOCATION_INJECT_PASSIVE_LOCATION:I = 0x8

.field public static final ACTION_CURRENT_LOCATION_REQUEST_DISTANCE:I = 0xd

.field public static final ACTION_CURRENT_LOCATION_RESET_DISTANCE:I = 0xe

.field public static final ACTION_DUMPSTATE:I = 0x6

.field public static final ACTION_FLP_BATCHING_CALLBACK:I = 0x7

.field public static final ACTION_FLP_BATCHING_CLEANUP:I = 0x16

.field public static final ACTION_FLP_BATCHING_FLUSH:I = 0x14

.field public static final ACTION_FLP_BATCHING_INJECT_LOCATION:I = 0x15

.field public static final ACTION_FLP_BATCHING_REQUEST_LOCATION:I = 0x13

.field public static final ACTION_FLP_BATCHING_START:I = 0x10

.field public static final ACTION_FLP_BATCHING_STOP:I = 0x12

.field public static final ACTION_FLP_BATCHING_UPDATE:I = 0x11

.field public static final ACTION_GEOFENCE_ACTIVITY_RECOGNITION_START:I = 0x9

.field public static final ACTION_GEOFENCE_ACTIVITY_RECOGNITION_STOP:I = 0xa

.field public static final ACTION_GEOFENCE_ACTIVITY_RECOGNITION_TRACKING_CALLBACK:I = 0x3

.field public static final ACTION_GEOFENCE_ADD:I = 0x1

.field public static final ACTION_GEOFENCE_ERROR_CALLBACK:I = 0x5

.field public static final ACTION_GEOFENCE_ERROR_CODE_GENERIC:I = -0x64

.field public static final ACTION_GEOFENCE_ERROR_CODE_SUCCESS:I = 0x0

.field public static final ACTION_GEOFENCE_GPS_PAUSE:I = 0x3

.field public static final ACTION_GEOFENCE_GPS_RESUME:I = 0x4

.field public static final ACTION_GEOFENCE_NLP_PAUSE:I = 0x5

.field public static final ACTION_GEOFENCE_NLP_RESUME:I = 0x6

.field public static final ACTION_GEOFENCE_REMOVE:I = 0x2

.field public static final ACTION_GEOFENCE_STATUS_ENTER:I = 0x0

.field public static final ACTION_GEOFENCE_STATUS_EXIT:I = 0x1

.field public static final ACTION_GEOFENCE_STATUS_REMOVE:I = 0xf

.field public static final ACTION_GEOFENCE_TRANSITION_CALLBACK:I = 0x1

.field public static final ACTION_GEOFENCE_UPDATE:I = 0x7

.field public static final ACTION_GEOFENCE_UPDATE_CALLBACK:I = 0x2

.field public static final ACTION_GEOFENCE_VERSION:I = 0x1

.field public static final ACTION_GEOFENCE_VERSION_CALLBACK:I = 0x0

.field public static final ACTION_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextLocationCore;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_CURRENT_LOCATION:I = 0x1

.field public static final MODE_DUMPSTATE:I = 0x2

.field public static final MODE_FLP_BATCHING:I = 0x3

.field public static final MODE_GEOFENCE:I = 0x0

.field public static final MODE_UNKNOWN:I = -0x1


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationCore$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCore$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextLocationCore;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCore;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAccuracyArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "AccuracyArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAction()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAltitudeArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "AltitudeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getBearingArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "BearingArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDataArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "DataArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDataSequence()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "DataSequence"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "DataCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDistance()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Distance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getErrorCallbackType()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "FunctionType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "ErrorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFenceId()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "GeoFenceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitudeArray()[D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "LatitudeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Longitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeArray()[D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "LongitudeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSpeedArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "SpeedArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "GeoFenceStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatusArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "EventStatusArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSuccessGpsCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "SuccessGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeStampArray()[J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "TimeStampArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public getTotalGpsCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "TotalGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalSequence()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "TotalSequence"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTypeArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "EventTypeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCore;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
