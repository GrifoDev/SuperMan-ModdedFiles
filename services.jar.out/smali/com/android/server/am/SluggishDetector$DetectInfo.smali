.class final Lcom/android/server/am/SluggishDetector$DetectInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DetectInfo"
.end annotation


# static fields
.field private static final DETECT_TYPE_AVERAGE_OVER:I = 0x1

.field private static final DETECT_TYPE_PERIODIC_REPORT:I = 0x2

.field private static final DIV:Ljava/lang/String; = "|"

.field private static final DIV_EXP:Ljava/lang/String; = "\\|"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfterSlgInfoData:Ljava/lang/String;

.field private mAverageAfterSlgInfoData:[Ljava/lang/String;

.field private mAverageBeforeSlgInfoData:[Ljava/lang/String;

.field private mAverageLaunchTime:[J

.field private mAveragePss:[J

.field private mAverageSwapPss:[J

.field private mBeforeSlgInfoData:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDetectType:I

.field private mLaunchTime:J

.field private mPowerSavingMode:I

.field private mPss:J

.field private mRunCount:[J

.field private mShortComponentName:[Ljava/lang/String;

.field private mShortComponentVersionName:[Ljava/lang/String;

.field private mSwapPss:J


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$DetectInfo;->sendToHqm()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$DetectInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    const-string/jumbo v2, "null"

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v2, "null"

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p4, v2, v3

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    iput-wide p6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p8, v2, v3

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p12, v2, v3

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p16, v2, v3

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p21, v2, v3

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p22, v2, v3

    iput-object v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DetectInfo() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/am/SluggishDetector$DetectInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p22}, Lcom/android/server/am/SluggishDetector$DetectInfo;-><init>(Landroid/content/Context;ILjava/lang/String;JJJJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I[Ljava/lang/String;[J[J[J[J[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    iput v4, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    iput v4, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    iput-object p3, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    iput-object p5, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    iput-object p6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    iput-object p7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    iput v4, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DetectInfo() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/SluggishDetector$DetectInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;I[Ljava/lang/String;[J[J[J[J[Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/SluggishDetector$DetectInfo;-><init>(Landroid/content/Context;I[Ljava/lang/String;[J[J[J[J[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private process()V
    .locals 14

    const-wide/16 v12, 0x40

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "process()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    if-nez v7, :cond_1

    sget-object v6, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "process() - mContext is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_process()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v13, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    :try_start_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v4, v7, v6

    const-string/jumbo v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v2, v9, v10

    const/16 v9, 0x80

    invoke-virtual {v3, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "process() - Exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v11, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    goto :goto_1
.end method

.method private sendToHqm()V
    .locals 14

    const-wide/16 v12, 0x40

    sget-boolean v1, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendToHqm()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_sendToHqm()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$DetectInfo;->process()V

    invoke-virtual {p0}, Lcom/android/server/am/SluggishDetector$DetectInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendToHqm() - basicCustom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v4, "ph"

    iget v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string/jumbo v4, "sm"

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "HqmManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    if-eqz v0, :cond_6

    const-string/jumbo v2, "Sluggish"

    const-string/jumbo v3, "AGIN"

    const-string/jumbo v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string/jumbo v7, ""

    const-string/jumbo v9, ""

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v1, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendToHqm() - failed to send AGIN HWParamToHQM()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    return-void

    :cond_6
    sget-object v1, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendToHqm() - semHqmManager is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendToHqm() - mContext is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\"SDVR\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "1.1.0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"DTYP\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"SNAM\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    if-eqz v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6

    const-string/jumbo v9, "|"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\\|"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v6, "\", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"SVER\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    if-eqz v6, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_2
    if-ge v6, v8, :cond_2

    aget-object v4, v7, v6

    const-string/jumbo v9, "|"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    const-string/jumbo v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\\|"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string/jumbo v6, "\", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"RCNT\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    if-eqz v6, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    array-length v8, v7

    move v6, v5

    :goto_4
    if-ge v6, v8, :cond_4

    aget-wide v2, v7, v6

    const-string/jumbo v9, "|"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    const-string/jumbo v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\\|"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string/jumbo v6, "\", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"LANT\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"ALNT\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    if-eqz v6, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    array-length v8, v7

    move v6, v5

    :goto_6
    if-ge v6, v8, :cond_6

    aget-wide v2, v7, v6

    const-string/jumbo v9, "|"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    const-string/jumbo v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\\|"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string/jumbo v6, "\", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"PSSV\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"APSS\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    if-eqz v6, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    array-length v8, v7

    move v6, v5

    :goto_8
    if-ge v6, v8, :cond_8

    aget-wide v2, v7, v6

    const-string/jumbo v9, "|"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_7
    const-string/jumbo v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\\|"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    const-string/jumbo v6, "\", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"SWPS\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"ASWP\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    if-eqz v6, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    array-length v8, v7

    move v6, v5

    :goto_a
    if-ge v6, v8, :cond_a

    aget-wide v2, v7, v6

    const-string/jumbo v9, "|"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_9
    const-string/jumbo v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\\|"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    const-string/jumbo v6, "\", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"PSMD\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"BSLD\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"ASLD\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"ABSL\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    if-eqz v6, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_c
    if-ge v6, v8, :cond_c

    aget-object v4, v7, v6

    const-string/jumbo v9, "|"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_b
    const-string/jumbo v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\\|"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    const-string/jumbo v6, "\", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\"AASL\":\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    if-eqz v6, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    array-length v7, v6

    :goto_e
    if-ge v5, v7, :cond_e

    aget-object v4, v6, v5

    const-string/jumbo v8, "|"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_d
    const-string/jumbo v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\\|"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    const-string/jumbo v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_f
    const-string/jumbo v5, "null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f
.end method
