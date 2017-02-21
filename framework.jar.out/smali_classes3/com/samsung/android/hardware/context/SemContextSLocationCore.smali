.class public Lcom/samsung/android/hardware/context/SemContextSLocationCore;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextSLocationCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextSLocationCore$1;
    }
.end annotation


# static fields
.field public static final ACTION_CURRENT_LOCATION_AR_START:I = 0xb

.field public static final ACTION_CURRENT_LOCATION_AR_STOP:I = 0xc

.field public static final ACTION_CURRENT_LOCATION_DISTANCE_CALLBACK:I = 0x4

.field public static final ACTION_CURRENT_LOCATION_INJECT_PASSIVE_LOCATION:I = 0x8

.field public static final ACTION_CURRENT_LOCATION_REQUEST_DISTANCE:I = 0xd

.field public static final ACTION_CURRENT_LOCATION_RESET_DISTANCE:I = 0xe

.field public static final ACTION_DUMPSTATE:I = 0x6

.field public static final ACTION_GEOFENCE_CORE_ADD:I = 0x1

.field public static final ACTION_GEOFENCE_CORE_AR_START:I = 0x9

.field public static final ACTION_GEOFENCE_CORE_AR_STOP:I = 0xa

.field public static final ACTION_GEOFENCE_CORE_AR_TRACKING_CALLBACK:I = 0x3

.field public static final ACTION_GEOFENCE_CORE_ERROR_CALLBACK:I = 0x5

.field public static final ACTION_GEOFENCE_CORE_ERROR_CODE_GENERIC:I = -0x64

.field public static final ACTION_GEOFENCE_CORE_ERROR_CODE_SUCCESS:I = 0x0

.field public static final ACTION_GEOFENCE_CORE_GPS_PAUSE:I = 0x3

.field public static final ACTION_GEOFENCE_CORE_GPS_RESUME:I = 0x4

.field public static final ACTION_GEOFENCE_CORE_NLP_PAUSE:I = 0x5

.field public static final ACTION_GEOFENCE_CORE_NLP_RESUME:I = 0x6

.field public static final ACTION_GEOFENCE_CORE_REMOVE:I = 0x2

.field public static final ACTION_GEOFENCE_CORE_STATUS_ENTER:I = 0x0

.field public static final ACTION_GEOFENCE_CORE_STATUS_EXIT:I = 0x1

.field public static final ACTION_GEOFENCE_CORE_STATUS_REMOVE:I = 0xf

.field public static final ACTION_GEOFENCE_CORE_TRANSITION_CALLBACK:I = 0x1

.field public static final ACTION_GEOFENCE_CORE_UPDATE:I = 0x7

.field public static final ACTION_GEOFENCE_CORE_UPDATE_CALLBACK:I = 0x2

.field public static final ACTION_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextSLocationCore;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_CURRENT_LOCATION:I = 0x1

.field public static final MODE_DUMPSTATE:I = 0x2

.field public static final MODE_GEOFENCE_CORE:I = 0x0

.field public static final MODE_UNKNOWN:I = -0x1


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSLocationCore$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSLocationCore$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAction()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "DataArray"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "DataCount"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDistance()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Distance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "ErrorCode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFenceID()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "GeoFenceId"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFuncType()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "FunctionType"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Latitude"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Longitude"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "GeoFenceStatus"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatusArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "EventStatusArray"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSuccessGpsCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "SuccessGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Timestamp"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeStampArray()[J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "TimeStampArray"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public getTotalGpsCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "TotalGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTypeArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "EventTypeArray"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCore;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
