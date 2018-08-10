.class public Landroid/os/health/HealthStats;
.super Ljava/lang/Object;
.source "HealthStats.java"


# instance fields
.field private mDataType:Ljava/lang/String;

.field private mMeasurementKeys:[I

.field private mMeasurementValues:[J

.field private mMeasurementsKeys:[I

.field private mMeasurementsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStatsKeys:[I

.field private mStatsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerCounts:[I

.field private mTimerKeys:[I

.field private mTimerTimes:[J

.field private mTimersKeys:[I

.field private mTimersValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    new-array v2, v0, [J

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    new-array v2, v0, [J

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    new-array v2, v0, [Landroid/util/ArrayMap;

    iput-object v2, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/os/health/HealthStats;->createHealthStatsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    new-array v2, v0, [Landroid/util/ArrayMap;

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    sget-object v3, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3}, Landroid/os/health/HealthStats;->createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    new-array v2, v0, [Landroid/util/ArrayMap;

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/os/health/HealthStats;->createLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private static createHealthStatsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/health/HealthStats;

    invoke-direct {v4, p0}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static createLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static getIndex([II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurement(I)J
    .locals 4

    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad measurement key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    aget-wide v2, v1, v0

    return-wide v2
.end method

.method public getMeasurementKeyAt(I)I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMeasurementKeyCount()I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    array-length v0, v0

    return v0
.end method

.method public getMeasurements(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad measurements key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getMeasurementsKeyAt(I)I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMeasurementsKeyCount()I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    array-length v0, v0

    return v0
.end method

.method public getStats(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad stats key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getStatsKeyAt(I)I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public getStatsKeyCount()I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    array-length v0, v0

    return v0
.end method

.method public getTimer(I)Landroid/os/health/TimerStat;
    .locals 6

    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad timer key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Landroid/os/health/TimerStat;

    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    aget-wide v4, v3, v0

    invoke-direct {v1, v2, v4, v5}, Landroid/os/health/TimerStat;-><init>(IJ)V

    return-object v1
.end method

.method public getTimerCount(I)I
    .locals 4

    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad timer key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    aget v1, v1, v0

    return v1
.end method

.method public getTimerKeyAt(I)I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTimerKeyCount()I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    array-length v0, v0

    return v0
.end method

.method public getTimerTime(I)J
    .locals 4

    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad timer key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    aget-wide v2, v1, v0

    return-wide v2
.end method

.method public getTimers(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad timers key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getTimersKeyAt(I)I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTimersKeyCount()I
    .locals 1

    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    array-length v0, v0

    return v0
.end method

.method public hasMeasurement(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasMeasurements(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasStats(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTimer(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTimers(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
