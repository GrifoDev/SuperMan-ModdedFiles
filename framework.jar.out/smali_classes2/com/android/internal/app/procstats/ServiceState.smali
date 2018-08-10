.class public final Lcom/android/internal/app/procstats/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final SERVICE_BOUND:I = 0x2

.field public static final SERVICE_COUNT:I = 0x4

.field public static final SERVICE_EXEC:I = 0x3

.field public static final SERVICE_RUN:I = 0x0

.field public static final SERVICE_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mBoundCount:I

.field private mBoundStartTime:J

.field private mBoundState:I

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mExecCount:I

.field private mExecStartTime:J

.field private mExecState:I

.field private final mName:Ljava/lang/String;

.field private mOwner:Ljava/lang/Object;

.field private final mPackage:Ljava/lang/String;

.field private mProc:Lcom/android/internal/app/procstats/ProcessState;

.field private final mProcessName:Ljava/lang/String;

.field private mRestarting:Z

.field private mRunCount:I

.field private mRunStartTime:J

.field private mRunState:I

.field private mStarted:Z

.field private mStartedCount:I

.field private mStartedStartTime:J

.field private mStartedState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iput-object p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    return-void
.end method

.method private dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V
    .locals 15

    if-eqz p6, :cond_0

    if-eqz p15, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " op count "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J

    move-result-wide v12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " count "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " / time "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    long-to-double v2, v12

    move-wide/from16 v0, p13

    long-to-double v4, v0

    div-double/2addr v2, v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method private dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V
    .locals 12

    if-gtz p8, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, ","

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, ","

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v10, ","

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v10, ","

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v10, ","

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p8

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v10, v4}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v5

    iget-object v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v10, v5}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v8

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v7

    div-int/lit8 v6, v7, 0x4

    rem-int/lit8 v7, v7, 0x4

    move/from16 v0, p7

    if-eq v7, v0, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move/from16 v0, p9

    if-ne v0, v6, :cond_2

    const/4 v3, 0x1

    sub-long v10, p12, p10

    add-long/2addr v8, v10

    :cond_2
    invoke-static {p1, v6, v8, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    const/4 v10, -0x1

    move/from16 v0, p9

    if-eq v0, v10, :cond_4

    sub-long v10, p12, p10

    move/from16 v0, p9

    invoke-static {p1, v0, v10, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private updateRunning(IJ)V
    .locals 6

    const/4 v2, -0x1

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v1, v2, :cond_3

    :cond_0
    move v0, p1

    :goto_0
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x0

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    sub-long v4, p2, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    :cond_2
    return-void

    :cond_3
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-ne v1, v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    if-eq v0, v2, :cond_1

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    return-void
.end method

.method public applyNewOwner(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v2, v4, :cond_5

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    :cond_3
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v2, v4, :cond_4

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    :cond_4
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v2, v4, :cond_0

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v2, v4, :cond_0

    goto :goto_1
.end method

.method public clearCurrentOwner(Ljava/lang/Object;Z)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-ne v2, p1, :cond_7

    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v2, v6, :cond_8

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    const-string/jumbo v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cleared while started: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    :cond_2
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v2, v6, :cond_4

    if-nez p2, :cond_3

    const-string/jumbo v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cleared while bound: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    :cond_4
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v2, v6, :cond_6

    if-nez p2, :cond_5

    const-string/jumbo v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cleared while exec: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    :cond_7
    return-void

    :cond_8
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v2, v6, :cond_6

    goto/16 :goto_0
.end method

.method public commitStateTime(J)V
    .locals 5

    const/4 v4, -0x1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x0

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    :cond_3
    return-void
.end method

.method public dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V
    .locals 19

    const-string/jumbo v8, "Running"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    if-eqz p9, :cond_3

    move/from16 v18, p10

    :goto_0
    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-direct/range {v3 .. v18}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    const-string/jumbo v8, "Started"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    if-eqz p9, :cond_4

    move/from16 v18, p10

    :goto_1
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-direct/range {v3 .. v18}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    const-string/jumbo v8, "Bound"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    if-eqz p9, :cond_5

    move/from16 v18, p10

    :goto_2
    const/4 v10, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-direct/range {v3 .. v18}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    const-string/jumbo v8, "Executing"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    if-eqz p9, :cond_6

    move/from16 v18, p10

    :goto_3
    const/4 v10, 0x3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-direct/range {v3 .. v18}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    if-eqz p10, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "        mOwner="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "        mStarted="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v2, " mRestarting="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2
    return-void

    :cond_3
    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_6
    const/16 v18, 0x1

    goto :goto_3
.end method

.method public dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J
    .locals 23

    const-wide/16 v20, 0x0

    const/4 v15, -0x1

    const/4 v13, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v13, v4, :cond_6

    const/4 v14, -0x1

    const/4 v12, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v12, v4, :cond_5

    add-int v9, v12, v13

    move-object/from16 v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/app/procstats/ServiceState;->getDuration(IIJIJ)J

    move-result-wide v18

    const-string/jumbo v16, ""

    move/from16 v0, p4

    if-ne v0, v9, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v16, " (running)"

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eq v15, v13, :cond_3

    move v4, v13

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v15, v13

    if-eq v14, v12, :cond_4

    move v4, v12

    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v14, v12

    const-string/jumbo v4, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-long v20, v20, v18

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    goto :goto_2

    :cond_4
    const/4 v4, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v13, v13, 0x4

    goto :goto_0

    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-eqz v4, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "    TOTAL: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_7
    return-wide v20
.end method

.method public dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 14

    const-string/jumbo v2, "pkgsvc-run"

    iget v8, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iget-wide v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    const-string/jumbo v2, "pkgsvc-start"

    iget v8, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iget-wide v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    const-string/jumbo v2, "pkgsvc-bound"

    iget v8, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iget-wide v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    const-string/jumbo v2, "pkgsvc-exec"

    iget v8, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v9, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iget-wide v10, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJ)V

    return-void
.end method

.method public getDuration(IIJIJ)J
    .locals 6

    mul-int/lit8 v1, p5, 0x4

    add-int v0, p1, v1

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v4, v0

    invoke-virtual {v1, v4}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v2

    if-ne p2, p5, :cond_0

    sub-long v4, p6, p3

    add-long/2addr v2, v4

    :cond_0
    return-wide v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public isInUse()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRestarting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    const/4 v0, 0x1

    return v0
.end method

.method public resetSafely(J)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v3, :cond_2

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v3, :cond_3

    :goto_3
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public setBound(ZIJ)V
    .locals 7

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string/jumbo v1, "ProcessStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binding service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " without owner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    move v0, p2

    :goto_0
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    sub-long v4, p3, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    goto :goto_1
.end method

.method public setExecuting(ZIJ)V
    .locals 7

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string/jumbo v1, "ProcessStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Executing service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " without owner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    move v0, p2

    :goto_0
    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    sub-long v4, p3, v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    goto :goto_1
.end method

.method public setMemFactor(IJ)V
    .locals 4

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isRestarting()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v2, :cond_3

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    goto :goto_0
.end method

.method public setProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public setRestarting(ZIJ)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    return-void
.end method

.method public setStarted(ZIJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " without owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServiceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateStartedState(IJ)V
    .locals 8

    const/4 v4, -0x1

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v3, v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-nez v3, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    :goto_1
    if-eqz v0, :cond_5

    move v1, p1

    :goto_2
    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v3, v1, :cond_2

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    iget-wide v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    sub-long v6, p2, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    :cond_0
    :goto_3
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v2, v0, :cond_1

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    :cond_1
    :goto_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
