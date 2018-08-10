.class public Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;
.super Ljava/lang/Object;
.source "NetSpeedStatus.java"


# instance fields
.field private mCurSpeed:I

.field public mDroppedBytes:Ljava/lang/String;

.field public mDroppedPackage:Ljava/lang/String;

.field public mEndtime:Ljava/lang/String;

.field private mLastTrafs:J

.field private mLimitSpeed:I

.field public mPackageName:Ljava/lang/String;

.field private mPriority:I

.field public mStartTime:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    iput v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCurSpeed:I

    iput v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitSpeed:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    iput v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    iput p2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCurSpeed:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    iput-object p2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canRemove()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public dumpNetSpeedStatus()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%-40s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%-22s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%-22s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%-10s"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitSpeed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%-10s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    iget v2, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCurSpeed()I
    .locals 1

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCurSpeed:I

    return v0
.end method

.method public getLimitSpeed()I
    .locals 1

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitSpeed:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrafs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    return v0
.end method

.method public setCurSpeed(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCurSpeed:I

    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    :cond_0
    return-void
.end method

.method public setLimitSpeed(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitSpeed:I

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPriority:I

    :cond_0
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setTrafs(J)I
    .locals 5

    iget-wide v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    sub-long v0, p1, v2

    iput-wide p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    long-to-int v2, v0

    return v2
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " curSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mCurSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " limitSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLimitSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " lastTrafs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->mLastTrafs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
