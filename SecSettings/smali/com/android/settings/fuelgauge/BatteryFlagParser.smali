.class public Lcom/android/settings/fuelgauge/BatteryFlagParser;
.super Ljava/lang/Object;
.source "BatteryFlagParser.java"

# interfaces
.implements Lcom/android/settingslib/BatteryInfo$BatteryDataParser;
.implements Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;


# instance fields
.field private final mAccentColor:I

.field private final mData:Landroid/util/SparseBooleanArray;

.field private final mFlag:I

.field private mLastSet:Z

.field private mLastTime:J

.field private mLength:J

.field private final mState2:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mAccentColor:I

    iput p3, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mFlag:I

    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mState2:Z

    return-void
.end method

.method private getColor(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mAccentColor:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getColorArray()Landroid/util/SparseIntArray;
    .locals 4

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;->getColor(Z)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLength:J

    return-wide v0
.end method

.method public hasData()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSet(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mState2:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    :goto_0
    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mFlag:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onDataGap()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastTime:J

    long-to-int v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iput-boolean v4, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    :cond_0
    return-void
.end method

.method public onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;->isSet(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    long-to-int v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    :cond_0
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastTime:J

    return-void
.end method

.method public onParsingDone()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastTime:J

    long-to-int v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iput-boolean v4, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    :cond_0
    return-void
.end method

.method public onParsingStarted(JJ)V
    .locals 3

    sub-long v0, p3, p1

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLength:J

    return-void
.end method
