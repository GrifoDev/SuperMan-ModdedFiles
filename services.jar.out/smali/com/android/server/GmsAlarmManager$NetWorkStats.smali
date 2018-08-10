.class Lcom/android/server/GmsAlarmManager$NetWorkStats;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetWorkStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;
    }
.end annotation


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:J

.field final mLock:Ljava/lang/Object;

.field private mTime:J


# direct methods
.method static synthetic -get0(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    return-wide v0
.end method

.method private constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    iput-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GmsAlarmManager$NetWorkStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>()V

    return-void
.end method


# virtual methods
.method public addStartTime(J)V
    .locals 9

    new-instance v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;-><init>(Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;)V

    iput-wide p1, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xa4cb800

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->removeLastData(J)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dump(J)Ljava/lang/String;
    .locals 19

    const-wide/16 v10, 0x0

    const-wide/32 v12, 0x5265c00

    sub-long v6, p1, v12

    const/4 v5, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v13

    const-wide/16 v14, 0x0

    cmp-long v12, v6, v14

    if-gtz v12, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    int-to-long v14, v12

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    add-long/2addr v10, v14

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v14, p1, v14

    add-long/2addr v10, v14

    :cond_2
    :goto_1
    monitor-exit v13

    const-wide/32 v12, 0x36ee80

    div-long v2, v10, v12

    const-wide/32 v12, 0x36ee80

    mul-long/2addr v12, v2

    sub-long v12, v10, v12

    const-wide/32 v14, 0xea60

    div-long v8, v12, v14

    const-wide/32 v12, 0xea60

    div-long v12, v10, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "h "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "m"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "X)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3
    const/4 v4, 0x0

    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    sub-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    const-wide/16 v14, 0x0

    cmp-long v12, v10, v14

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    cmp-long v12, v14, v6

    if-gez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    sub-long/2addr v14, v6

    add-long/2addr v10, v14

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v0, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    add-long/2addr v10, v14

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    add-long/2addr v10, v14

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    cmp-long v12, v14, v6

    if-gez v12, :cond_8

    const-wide/32 v10, 0x5265c00

    :goto_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v14, p1, v14

    add-long/2addr v10, v14

    goto :goto_4
.end method

.method public removeLastData(J)V
    .locals 9

    const-wide/16 v6, 0x0

    cmp-long v2, p1, v6

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v4, v2, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v4, v2, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_2

    move v1, v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setEndTime(J)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->setEndTime(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
