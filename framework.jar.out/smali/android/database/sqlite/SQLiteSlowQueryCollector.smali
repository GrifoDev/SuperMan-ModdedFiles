.class public final Landroid/database/sqlite/SQLiteSlowQueryCollector;
.super Ljava/lang/Thread;
.source "SQLiteSlowQueryCollector.java"


# static fields
.field public static final COLLECT_THRESHOLD:I = 0xbb8

.field private static MAX_MESSAGE_COUNT:I = 0x0

.field private static MAX_MESSAGE_SIZE:I = 0x0

.field private static MAX_NAME_SIZE:I = 0x0

.field private static final MAX_QUERY_COUNT:I = 0xa

.field private static final SAMPLING_THRESHOLD:I = 0xa4cb80

.field private static final TAG:Ljava/lang/String; = "SQLiteSlowQueryCollector"

.field private static sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLastCollectTime:J

.field private static sQueryHashList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sStartPoint:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBName:Ljava/lang/String;

.field private mLatency:J

.field private mNow:J

.field private mPid:I

.field private mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x3fe

    sput v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_SIZE:I

    const/4 v0, 0x4

    sput v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_COUNT:I

    const/16 v0, 0xff

    sput v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_NAME_SIZE:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sLastCollectTime:J

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sStartPoint:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteConnectionPool;Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$Operation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iput-object p3, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    iget-object v0, p4, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    iget-wide v0, p4, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mLatency:J

    iget-wide v0, p4, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mNow:J

    iget v0, p4, Landroid/database/sqlite/SQLiteConnection$Operation;->mPid:I

    iput v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPid:I

    return-void
.end method

.method public static sendSlowQueryLog(Landroid/database/sqlite/SQLiteConnectionPool;Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$Operation;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "HqmManagerService"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SemHqmManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v19

    const/16 v20, 0x0

    :goto_0
    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_2

    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    move/from16 v0, v19

    if-ne v0, v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v16, v30

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    move-object/from16 v0, p0

    iget v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPid:I

    move/from16 v0, v26

    if-eq v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager;

    invoke-virtual {v14}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v29

    if-eqz v29, :cond_4

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, v27

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPid:I

    if-ne v3, v4, :cond_3

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    const/16 v17, 0x0

    const-wide/16 v12, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    const-string/jumbo v4, "PRAGMA page_count;"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v17

    :try_start_4
    const-string/jumbo v3, "PRAGMA page_count;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v24

    const-wide/16 v4, 0x1000

    mul-long v12, v24, v4

    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    :cond_5
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\"MPN\":\""

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_NAME_SIZE:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"CPN\":\""

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_NAME_SIZE:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"DBN\":\""

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_NAME_SIZE:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"DBS\":"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"LAT\":"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mLatency:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v33

    sget v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_SIZE:I

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    const-string/jumbo v4, "\"SQL\":\"\""

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    move/from16 v0, v33

    if-le v3, v0, :cond_9

    const-string/jumbo v3, "\"SQL\":\""

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Filesystem"

    const-string/jumbo v5, "SQUE"

    const-string/jumbo v6, "ph"

    const-string/jumbo v7, "0.0"

    const-string/jumbo v8, "sec"

    const-string/jumbo v9, ""

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ""

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_7

    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_7
    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mNow:J

    sput-wide v4, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sLastCollectTime:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    return-void

    :catch_0
    move-exception v18

    :try_start_6
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ENABLE:Z

    if-eqz v3, :cond_8

    const-string/jumbo v3, "SQLiteSlowQueryCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get the db size for a squery. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mLatency:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V

    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_1
    move-exception v18

    :try_start_8
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ENABLE:Z

    if-eqz v3, :cond_d

    const-string/jumbo v3, "SQLiteSlowQueryCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to send a squery. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mLatency:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v3

    :cond_9
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\"PQM\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mNow:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    sget v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_SIZE:I

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    const-string/jumbo v4, "-0\",\"SQL\":\"\""

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v15, v3, v4

    sget v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_COUNT:I

    mul-int/2addr v3, v15

    move/from16 v0, v33

    if-ge v3, v0, :cond_b

    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ENABLE:Z

    if-eqz v3, :cond_a

    const-string/jumbo v3, "SQLiteSlowQueryCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Too long to send a squery, just leave a log. ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mLatency:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_b
    const/16 v21, 0x0

    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_6

    :try_start_a
    sget v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_SIZE:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_6

    add-int v3, v21, v15

    move/from16 v0, v33

    if-ge v3, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    add-int v4, v21, v15

    move/from16 v0, v21

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\"SQL\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v4, "Filesystem"

    const-string/jumbo v5, "SQUE"

    const-string/jumbo v6, "ph"

    const-string/jumbo v7, "0.0"

    const-string/jumbo v8, "sec"

    const-string/jumbo v9, ""

    const-string/jumbo v11, ""

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    add-int v21, v21, v15

    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    move/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v32

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1
.end method
