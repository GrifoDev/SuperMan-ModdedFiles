.class final Lcom/android/server/job/JobPackageTracker$PackageEntry;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobPackageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackageEntry"
.end annotation


# instance fields
.field activeCount:I

.field activeNesting:I

.field activeStartTime:J

.field activeTopCount:I

.field activeTopNesting:I

.field activeTopStartTime:J

.field hadActive:Z

.field hadActiveTop:Z

.field hadPending:Z

.field pastActiveTime:J

.field pastActiveTopTime:J

.field pastPendingTime:J

.field pendingCount:I

.field pendingNesting:I

.field pendingStartTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveTime(J)J
    .locals 5

    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getActiveTopTime(J)J
    .locals 5

    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getPendingTime(J)J
    .locals 5

    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method
