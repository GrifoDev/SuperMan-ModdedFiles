.class final Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReportLaunchInfo"
.end annotation


# static fields
.field private static final POWER_SAVING_MODE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

.field private mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

.field private mContext:Landroid/content/Context;

.field private mCurTime:J

.field private mLastPss:J

.field private mLastSwapPss:J

.field private mLaunchTime:J

.field private mPid:I

.field private mPowerSavingMode:I

.field private mPss:J

.field private mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

.field private mShortComponentName:Ljava/lang/String;

.field private mSwapPss:J


# direct methods
.method static synthetic -get0(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    return-wide v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->reportLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

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

    const-class v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "content://settings/global/low_power"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->POWER_SAVING_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJ)V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    const-string/jumbo v0, "NULL"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    iput-object p3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    iput-wide p6, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    iput-wide p6, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    iput-wide p8, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    iput-wide p8, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ReportLaunchInfo() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJLcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;-><init>(Landroid/content/Context;ILjava/lang/String;JJJ)V

    return-void
.end method

.method private refresh()V
    .locals 12

    const-wide/16 v10, 0x40

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refresh()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_refresh()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    const/4 v1, 0x2

    :try_start_0
    new-array v9, v1, [J

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    const/4 v1, 0x1

    aget-wide v2, v9, v1

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v6, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->POWER_SAVING_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {v1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get2(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentSimpleSluggishInfo()Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :cond_4
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refresh() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :catch_0
    move-exception v7

    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refresh() - getPss "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v7

    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refresh() - query "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private reportLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V
    .locals 8

    const-wide/16 v6, 0x40

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportLaunch()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_reportLaunch()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get1(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get1(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get0(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->refresh()V

    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->-wrap4(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicReport;->-wrap6(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportLaunch() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get1(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get1(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportLaunch() - info.mCurTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get0(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mCurTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportLaunch() - info.mShortComponentName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get1(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mShortComponentName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportLaunch() - info.mShortComponentName!=null:false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportLaunch() - info!=null:false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportLaunch() - mShortComponentName!=null:false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportLaunch() - mContext!=null:false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mShortComponentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLaunchTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLastPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mSwapPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLastSwapPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mPowerSavingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mBeforeSlgInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAfterSlgInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
