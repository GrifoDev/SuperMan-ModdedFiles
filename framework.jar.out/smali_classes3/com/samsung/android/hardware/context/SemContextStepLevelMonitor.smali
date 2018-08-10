.class public Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextStepLevelMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public static final HISTORY_MODE:I = 0x1

.field public static final NORMAL_MODE:I = 0x0

.field public static final STEP_LEVEL_NORMAL:I = 0x3

.field public static final STEP_LEVEL_POWER:I = 0x4

.field public static final STEP_LEVEL_SEDENTARY:I = 0x2

.field public static final STEP_LEVEL_STATIONARY:I = 0x1


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mInfo:Landroid/os/Bundle;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mMode:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mMode:I

    return-void
.end method


# virtual methods
.method public getCalorieArray()[D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "CalorieArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "DataCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDistanceArray()[D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "DistanceArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getDurationArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "DurationArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStepCountArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "StepCountArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStepLevelArray()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v1, "StepTypeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getTimeStampArray()[J
    .locals 8

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mMode:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v5, "DataCount"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "DurationArray"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    new-array v3, v2, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v5, "TimeStamp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    add-int/lit8 v6, v1, -0x1

    aget v6, v0, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v3, v1

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v5, "TimeStampArray"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v0, "DataBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    const-string/jumbo v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
