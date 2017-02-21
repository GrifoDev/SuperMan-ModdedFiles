.class public Lcom/samsung/android/hardware/context/SemContextExercise;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextExercise.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextExercise$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextExercise;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_TYPE_BAROMETER:I = 0x2

.field public static final DATA_TYPE_GPS:I = 0x1

.field public static final DATA_TYPE_PEDOMETER:I = 0x3

.field public static final MODE_LOCATION:I = 0x0

.field public static final MODE_STATUS:I = 0x1

.field public static final STATUS_AVAILABLE_SIGNAL_GOOD:I = 0x2

.field public static final STATUS_AVAILABLE_SIGNAL_STRONG:I = 0x3

.field public static final STATUS_AVAILABLE_SIGNAL_WEAK:I = 0x1

.field public static final STATUS_STOP:I = -0x1

.field public static final STATUS_UNAVAILABLE:I


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextExercise$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextExercise$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextExercise;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextExercise;->readFromParcel(Landroid/os/Parcel;)V

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

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    return-void
.end method


# virtual methods
.method public getAltitude()[F
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "AltitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLatitude()[D
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "LatitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLoggingSize()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "DataCount"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getLongitude()[D
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "LongitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPedoDistance()[D
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "PedoDistanceDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPedoSpeed()[D
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "PedoSpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPressure()[F
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "PressureArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSpeed()[F
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "SpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStatus()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "GpsStatus"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getStepCount()[J
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "StepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeStamp()[J
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    const-string/jumbo v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextExercise;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
