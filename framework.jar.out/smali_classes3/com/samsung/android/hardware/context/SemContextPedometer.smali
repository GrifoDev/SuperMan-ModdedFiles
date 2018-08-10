.class public Lcom/samsung/android/hardware/context/SemContextPedometer;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextPedometer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextPedometer$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextPedometer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXERCISE_MODE_END:I = 0x2

.field public static final EXERCISE_MODE_NONE:I = -0x1

.field public static final EXERCISE_MODE_RUN:I = 0x1

.field public static final EXERCISE_MODE_WALK:I = 0x0

.field public static final GENDER_MAN:I = 0x1

.field public static final GENDER_WOMAN:I = 0x2

.field public static final HISTORY_MODE:I = 0x2

.field public static final LOGGING_MODE:I = 0x1

.field public static final NORMAL_MODE:I = 0x0

.field public static final PARAMETERS_UNKNOWN:I = 0x0

.field public static final STEP_STATUS_MARK:I = 0x1

.field public static final STEP_STATUS_RUN:I = 0x4

.field public static final STEP_STATUS_RUN_DOWN:I = 0x9

.field public static final STEP_STATUS_RUN_UP:I = 0x8

.field public static final STEP_STATUS_RUSH:I = 0x5

.field public static final STEP_STATUS_STOP:I = 0x0

.field public static final STEP_STATUS_STROLL:I = 0x2

.field public static final STEP_STATUS_UNKNOWN:I = -0x1

.field public static final STEP_STATUS_WALK:I = 0x3

.field public static final STEP_STATUS_WALK_DOWN:I = 0x7

.field public static final STEP_STATUS_WALK_UP:I = 0x6


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometer$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextPedometer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextPedometer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    return-void
.end method


# virtual methods
.method public getCalorie()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeCalorie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCalorieDiff()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CalorieDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCalorieDiffArray()[D
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "CalorieDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCumulativeCalorie()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeCalorie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeDistance()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeDistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeRunDownStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeRunDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeRunStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeRunFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeRunUpStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeRunUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeTotalStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeTotalStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeWalkDownStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeWalkDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeWalkStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeWalkFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeWalkUpStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeWalkUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeDistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDistanceDiff()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "DistanceDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDistanceDiffArray()[D
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "DistanceDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getLoggingCount()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "LoggingCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    return v0
.end method

.method public getRunDownStepCount()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeRunDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunDownStepCountDiff()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "RunDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunDownStepCountDiffArray()[J
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "RunDownStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRunStepCount()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeRunFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunStepCountDiff()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "RunStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunStepCountDiffArray()[J
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "RunStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRunUpStepCount()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeRunUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunUpStepCountDiff()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "RunUpStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunUpStepCountDiffArray()[J
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "RunUpStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSpeed()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Speed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeedArray()[D
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "SpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getStepStatus()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "StepStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStampArray()[J
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTotalStepCount()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeTotalStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalStepCountDiff()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "TotalStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalStepCountDiffArray()[J
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "TotalStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getUpDownStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "UpDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpDownStepCountDiff()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "UpDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkDownStepCount()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeWalkDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkDownStepCountDiff()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "WalkDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkDownStepCountDiffArray()[J
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "WalkDownStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getWalkStepCount()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeWalkFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkStepCountDiff()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "WalkStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkStepCountDiffArray()[J
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "WalkStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getWalkUpStepCount()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "CumulativeWalkUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkUpStepCountDiff()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "WalkUpStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkUpStepCountDiffArray()[J
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v2, "WalkUpStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getWalkingFrequency()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "WalkingFrequency"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometer;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
