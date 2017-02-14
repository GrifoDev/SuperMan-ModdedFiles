.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$1;,
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEBUG_PARCEL:Z = false

.field private static final PROCESS_STATE_TO_STATE:[I

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mActive:Z

.field private mAvgCachedKillPss:J

.field private mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field private mCurState:I

.field private mDead:Z

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mLastPssState:I

.field private mLastPssTime:J

.field private mMaxCachedKillPss:J

.field private mMinCachedKillPss:J

.field private mMultiPackage:Z

.field public final mName:Ljava/lang/String;

.field private mNumActiveServices:I

.field private mNumCachedKill:I

.field private mNumExcessiveCpu:I

.field private mNumExcessiveWake:I

.field private mNumStartedServices:I

.field private final mPackage:Ljava/lang/String;

.field private final mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private mStartTime:J

.field private final mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mTmpTotalTime:J

.field private final mUid:I

.field private final mVersion:I

.field public tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public tmpNumInUse:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/procstats/ProcessState;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object p5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object p5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    return-void
.end method

.method private addCachedKill(IJJJ)V
    .locals 4

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    :cond_1
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    cmp-long v0, p6, v0

    if-lez v0, :cond_2

    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    :cond_2
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr v2, p1

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    goto :goto_0
.end method

.method private dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 13

    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v6, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    move-wide/from16 v0, p7

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    iget-wide v8, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v8, v8

    move-wide/from16 v0, p9

    long-to-double v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v4, v8, v10

    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v7, v4, v8

    if-gez v7, :cond_0

    iget-wide v8, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    move-wide/from16 v0, p9

    move/from16 v2, p11

    invoke-virtual {v6, p1, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method private ensureNotDead()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ProcessState dead: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " common.name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v5, v2, :cond_0

    const-string/jumbo v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Pulling dead proc: name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " common.name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v7, v7, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, v2, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget v8, v2, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    iget-object v9, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    :cond_0
    iget-boolean v5, v2, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, v5, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v6, v5, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-nez v4, :cond_1

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No existing package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " for multi-proc "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iget v5, v2, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-nez v1, :cond_2

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No existing package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " for multi-proc "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " version "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v6, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v2, :cond_3

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Didn\'t create per-package process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iput-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    :cond_4
    return-object v2
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_0

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget-wide v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v4, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    :cond_0
    return-void
.end method

.method public addPss(JJZLandroid/util/ArrayMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    if-nez p5, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v3, v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v3, :cond_1

    return-void

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 30

    new-instance v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v11}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    new-instance v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v7}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    new-instance v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v8}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v22

    rem-int/lit8 v15, v22, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v18

    const-wide/16 v24, 0x0

    cmp-long v23, v18, v24

    if-lez v23, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v4

    const/4 v12, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    if-gt v15, v0, :cond_1

    move-wide/from16 v0, v18

    invoke-virtual {v11, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    const/16 v23, 0x8

    move/from16 v0, v23

    if-gt v15, v0, :cond_2

    move-wide/from16 v0, v18

    invoke-virtual {v7, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    :cond_2
    move-wide/from16 v0, v18

    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    :cond_3
    if-nez v12, :cond_4

    return-void

    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_5

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_5

    const/4 v9, 0x1

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_5
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_6

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_6

    const/4 v10, 0x1

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_6
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_7

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_7

    const/4 v6, 0x1

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_7
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_8

    if-eqz v9, :cond_c

    :cond_8
    :goto_2
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_9

    if-eqz v6, :cond_d

    :cond_9
    :goto_3
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_a

    if-eqz v10, :cond_e

    :cond_a
    :goto_4
    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    move-wide/from16 v24, v0

    sub-long v24, p2, v24

    add-long v20, v20, v24

    :cond_b
    rem-int/lit8 v15, v22, 0xe

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    move-object/from16 v23, v0

    aget-wide v24, v23, v15

    add-long v24, v24, v20

    aput-wide v24, v23, v15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v18

    const-wide/16 v24, 0x0

    cmp-long v23, v18, v24

    if-lez v23, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v4

    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v23, v0

    aget-wide v24, v23, v15

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v23, v0

    aget v23, v23, v15

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    long-to-double v0, v4

    move-wide/from16 v26, v0

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v23, v0

    aget v23, v23, v15

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v26, v26, v18

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v16, v24, v26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v23, v0

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v24, v0

    aput-wide v24, v23, v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v23, v0

    aget v24, v23, v15

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v18

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    aput v24, v23, v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    move-object/from16 v23, v0

    aget-wide v24, v23, v15

    long-to-double v0, v4

    move-wide/from16 v26, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    aput-wide v24, v23, v15

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    :cond_c
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_8

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto/16 :goto_2

    :cond_d
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_9

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto/16 :goto_3

    :cond_e
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_a

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto/16 :goto_4

    :cond_f
    const/16 v23, 0x2

    move/from16 v0, v23

    if-gt v15, v0, :cond_10

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v18, v0

    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    goto/16 :goto_6

    :cond_10
    const/16 v23, 0x8

    move/from16 v0, v23

    if-gt v15, v0, :cond_11

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v18, v0

    iget-wide v4, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    goto/16 :goto_6

    :cond_11
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v18, v0

    iget-wide v4, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    goto/16 :goto_6

    :cond_12
    return-void
.end method

.method public clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .locals 9

    new-instance v0, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    move-object v1, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iput-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    return-object v0
.end method

.method public commitStateTime(J)V
    .locals 5

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v0, p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    return-void
.end method

.method public computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .locals 28

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_8

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_7

    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    add-int v22, v22, v23

    mul-int/lit8 v22, v22, 0xe

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v10

    add-int v8, v22, v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v24

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v14

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_2

    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    :cond_0
    :goto_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v22, v0

    add-long v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v22, v0

    cmp-long v22, v16, v22

    if-gez v22, :cond_3

    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    long-to-double v0, v4

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v22, v0

    cmp-long v22, v12, v22

    if-lez v22, :cond_4

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v22, v0

    cmp-long v22, v18, v22

    if-gez v22, :cond_5

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    long-to-double v0, v6

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v22, v0

    cmp-long v22, v14, v22

    if-lez v22, :cond_0

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public computeProcessTimeLocked([I[I[IJ)J
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_2

    const/4 v1, 0x0

    :goto_1
    array-length v6, p2

    if-ge v1, v6, :cond_1

    const/4 v2, 0x0

    :goto_2
    array-length v6, p3

    if-ge v2, v6, :cond_0

    aget v6, p1, v3

    aget v7, p2, v1

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xe

    aget v7, p3, v2

    add-int v0, v6, v7

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v4
.end method

.method public decActiveServices(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_1

    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Proc active services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    :cond_1
    return-void
.end method

.method public decStartedServices(IJLjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    rem-int/lit8 v0, v0, 0xe

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gez v0, :cond_1

    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Proc started services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    goto :goto_0
.end method

.method public dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .locals 7

    const/16 v6, 0x3a

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v4, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {p1, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x4

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x5

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x6

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v6, v3, :cond_0

    const/4 v0, 0x1

    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    :cond_0
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iget-wide v8, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v8, p2, v8

    invoke-static {p1, v6, v8, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    :cond_2
    return-void
.end method

.method public dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .locals 28

    if-eqz p2, :cond_0

    move-object/from16 v0, p3

    array-length v9, v0

    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p5

    array-length v5, v0

    :goto_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    array-length v7, v0

    :goto_2
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_11

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v5, :cond_10

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v7, :cond_f

    if-eqz p2, :cond_3

    aget v24, p3, v16

    :goto_6
    if-eqz p4, :cond_4

    aget v22, p5, v12

    :goto_7
    if-eqz p6, :cond_5

    aget v23, p7, v14

    :goto_8
    if-eqz p2, :cond_6

    const/4 v8, 0x1

    :goto_9
    if-eqz p4, :cond_7

    const/4 v4, 0x1

    :goto_a
    if-eqz p6, :cond_8

    const/4 v6, 0x1

    :goto_b
    const-wide/16 v18, 0x0

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v8, :cond_e

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v4, :cond_d

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v6, :cond_c

    if-eqz p2, :cond_9

    const/16 v21, 0x0

    :goto_f
    if-eqz p4, :cond_a

    const/16 v17, 0x0

    :goto_10
    if-eqz p6, :cond_b

    const/16 v20, 0x0

    :goto_11
    add-int v25, v24, v21

    add-int v25, v25, v22

    add-int v25, v25, v17

    mul-int/lit8 v25, v25, 0xe

    add-int v25, v25, v23

    add-int v10, v25, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v26

    add-long v18, v18, v26

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/16 v24, 0x0

    goto :goto_6

    :cond_4
    const/16 v22, 0x0

    goto :goto_7

    :cond_5
    const/16 v23, 0x0

    goto :goto_8

    :cond_6
    move-object/from16 v0, p3

    array-length v8, v0

    goto :goto_9

    :cond_7
    move-object/from16 v0, p5

    array-length v4, v0

    goto :goto_a

    :cond_8
    move-object/from16 v0, p7

    array-length v6, v0

    goto :goto_b

    :cond_9
    aget v21, p3, v15

    goto :goto_f

    :cond_a
    aget v17, p5, v11

    goto :goto_10

    :cond_b
    aget v20, p7, v13

    goto :goto_11

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :cond_e
    const-string/jumbo v25, "\t"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_11
    return-void
.end method

.method public dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "myID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mCommonProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMultiPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Common Proc: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_5
    return-void
.end method

.method public dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 2

    const-string/jumbo v0, "pkgproc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p6, p7}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "pkgpss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-lez v0, :cond_3

    :cond_1
    :goto_0
    const-string/jumbo v0, "pkgkills,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_2

    goto :goto_0
.end method

.method public dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "proc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "pss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-lez v0, :cond_4

    :cond_2
    :goto_0
    const-string/jumbo v0, "kills,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_3

    goto :goto_0
.end method

.method public dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 18

    const-wide/16 v14, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v11, v0

    if-ge v6, v11, :cond_8

    const/4 v8, -0x1

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p4

    array-length v11, v0

    if-ge v3, v11, :cond_7

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p5

    array-length v11, v0

    if-ge v5, v11, :cond_6

    aget v7, p3, v6

    aget v4, p4, v3

    add-int v11, v7, v4

    mul-int/lit8 v11, v11, 0xe

    aget v16, p5, v5

    add-int v2, v11, v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v12

    const-string/jumbo v10, ""

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v11, v2, :cond_0

    const-string/jumbo v10, " (running)"

    :cond_0
    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-eqz v11, :cond_3

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    array-length v11, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v11, v0, :cond_1

    if-eq v9, v7, :cond_4

    move v11, v7

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v9, v7

    :cond_1
    move-object/from16 v0, p4

    array-length v11, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v11, v0, :cond_2

    if-eq v8, v4, :cond_5

    move v11, v4

    :goto_4
    const/16 v16, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v11, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v8, v4

    :cond_2
    sget-object v11, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget v16, p5, v5

    aget-object v11, v11, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long/2addr v14, v12

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, -0x1

    goto :goto_3

    :cond_5
    const/4 v11, -0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_8
    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    array-length v11, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v11, v0, :cond_9

    const/4 v11, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    :cond_9
    move-object/from16 v0, p4

    array-length v11, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v11, v0, :cond_a

    const/4 v11, -0x1

    const/16 v16, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v11, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    :cond_a
    const-string/jumbo v11, "TOTAL  : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_b
    return-void
.end method

.method public dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 18

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v8, v13, :cond_8

    const/4 v11, -0x1

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v3, v13, :cond_7

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p5

    array-length v13, v0

    if-ge v7, v13, :cond_6

    aget v9, p3, v8

    aget v6, p4, v3

    add-int v13, v9, v6

    mul-int/lit8 v13, v13, 0xe

    aget v14, p5, v7

    add-int v2, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_3

    if-nez v10, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "PSS/USS ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v13, " entries):"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    if-eq v12, v9, :cond_4

    move v13, v9

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v12, v9

    :cond_1
    move-object/from16 v0, p4

    array-length v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    if-eq v11, v6, :cond_5

    move v13, v6

    :goto_4
    const/16 v14, 0x2f

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v11, v6

    :cond_2
    sget-object v13, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget v14, p5, v7

    aget-object v13, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v13, " samples "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v13, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_4
    const/4 v13, -0x1

    goto/16 :goto_3

    :cond_5
    const/4 v13, -0x1

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    if-eqz v13, :cond_9

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "Killed for excessive wake locks: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v13, " times"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-eqz v13, :cond_a

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "Killed for excessive CPU use: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v13, " times"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-eqz v13, :cond_b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "Killed from cached state: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v13, " times from pss "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v13, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v13, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_b
    return-void
.end method

.method public dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V
    .locals 14

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "* "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " / "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v0, " / v"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "         TOTAL: "

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "    Persistent: "

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "           Top: "

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "        Imp Fg: "

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "        Imp Bg: "

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "        Backup: "

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "     Heavy Wgt: "

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "       Service: "

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "    Service Rs: "

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "      Receiver: "

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "      Bg TOTAL: "

    const/16 v0, 0x9

    const/16 v1, 0xa

    const/16 v2, 0xb

    const/16 v3, 0xc

    const/16 v5, 0xd

    filled-new-array {v0, v1, v2, v3, v5}, [I

    move-result-object v7

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "        (Home): "

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/16 v0, 0x9

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "    (Last Act): "

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/16 v0, 0xa

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string/jumbo v4, "      (Cached): "

    const/16 v0, 0xb

    const/16 v1, 0xc

    const/16 v2, 0xd

    filled-new-array {v0, v1, v2}, [I

    move-result-object v7

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    return-void
.end method

.method public getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public getDuration(IJ)J
    .locals 4

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v3, p1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v2, p1, :cond_0

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getDurationsBucketCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPssAverage(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssMaximum(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssMinimum(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssSampleCount(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssAverage(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssMaximum(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssMinimum(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    return v0
.end method

.method public hasAnyData()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public incActiveServices(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    return-void
.end method

.method public incStartedServices(IJLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    mul-int/lit8 v0, p1, 0xe

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    :cond_1
    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return v0
.end method

.method public isInUse()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isMultiPackage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return v0
.end method

.method public makeActive()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return-void
.end method

.method public makeDead()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    return-void
.end method

.method public makeInactive()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return-void
.end method

.method public makeStandalone()V
    .locals 0

    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 6

    iget-boolean v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Didn\'t find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-nez v0, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Didn\'t find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " vers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Didn\'t create per-package process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " vers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    return-object v1

    :cond_3
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz p2, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/procstats/PssTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    :goto_1
    const/4 v1, 0x1

    return v1

    :cond_4
    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    goto :goto_1
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    :goto_0
    if-ltz v8, :cond_1

    invoke-direct {p0, p1, v8}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reportExcessiveWake(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetSafely(J)V
    .locals 5

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->resetTable()V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    return-void
.end method

.method public setMultiPackage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    if-gez p1, :cond_1

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-lez v1, :cond_0

    mul-int/lit8 v1, p2, 0xe

    add-int/lit8 p1, v1, 0x7

    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_2

    return-void

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget v1, v1, p1

    mul-int/lit8 v2, p2, 0xe

    add-int p1, v1, v2

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_3

    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setState(IJ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, p0, :cond_1

    const-string/jumbo v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/PssTable;->writeToParcel(Landroid/os/Parcel;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveWake:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_1
    return-void
.end method
