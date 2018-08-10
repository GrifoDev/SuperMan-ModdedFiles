.class Lcom/android/internal/os/BatteryStatsImpl$3;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$clusterSpeeds:[[J

.field final synthetic val$numWakelocksF:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I[[J)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$numWakelocksF:I

    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$clusterSpeeds:[[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidCpuTime(IJJ)V
    .locals 14

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v9, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v9}, Lcom/android/internal/os/BatteryStatsImpl;->-get3(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/KernelUidCpuTimeReader;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    const-string/jumbo v9, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Got readings for an isolated uid with no mapping to owning uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v9, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    add-long v10, v10, p2

    iput-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    add-long v10, v10, p4

    iput-wide v10, v9, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    const/4 v5, 0x0

    iget v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$numWakelocksF:I

    if-lez v9, :cond_1

    const-wide/16 v10, 0x32

    mul-long v10, v10, p2

    const-wide/16 v12, 0x64

    div-long p2, v10, v12

    const-wide/16 v10, 0x32

    mul-long v10, v10, p4

    const-wide/16 v12, 0x64

    div-long p4, v10, v12

    :cond_1
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v9}, Lcom/android/internal/os/BatteryStatsImpl;->-get4(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v4

    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v9, :cond_2

    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v9, v9

    if-eq v9, v4, :cond_3

    :cond_2
    new-array v9, v4, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$clusterSpeeds:[[J

    array-length v9, v9

    if-ge v2, v9, :cond_8

    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v9}, Lcom/android/internal/os/BatteryStatsImpl;->-get4(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v7

    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v9, v9, v2

    if-eqz v9, :cond_4

    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v9, v9, v2

    array-length v9, v9

    if-eq v7, v9, :cond_5

    :cond_4
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-array v10, v7, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v10, v9, v2

    :cond_5
    iget-object v9, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v9, v2

    const/4 v6, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$clusterSpeeds:[[J

    aget-object v9, v9, v2

    array-length v9, v9

    if-ge v6, v9, :cond_7

    aget-object v9, v3, v6

    if-nez v9, :cond_6

    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v10, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v9, v3, v6

    :cond_6
    aget-object v9, v3, v6

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$clusterSpeeds:[[J

    aget-object v10, v10, v2

    aget-wide v10, v10, v6

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method
