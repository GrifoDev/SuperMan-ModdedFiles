.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static ntpScore:[I

.field private static ntpServer:[Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private currentTime:J

.field private failedTime:J

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private mRetryStep:I

.field private mServer:Ljava/lang/String;

.field private mServer2:Ljava/lang/String;

.field private mServer3:Ljava/lang/String;

.field private mServer4:Ljava/lang/String;

.field private mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/util/NtpTrustedTime;->ntpScore:[I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/NtpTrustedTime;->mRetryStep:I

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->currentTime:J

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    const-string/jumbo v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/NtpTrustedTime;->mRetryStep:I

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->currentTime:J

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    const-string/jumbo v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "creating NtpTrustedTime using server1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " server2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " server3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " server4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    iput-object p3, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    iput-object p4, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    iput-wide p5, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    return-void
.end method

.method private ReportBigdata(Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const-string/jumbo v1, "NtpTrustedTime"

    const-string/jumbo v2, "ReportBigdata parameter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.intent.action.BIG_DATA_MOBILE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "category"

    const-string/jumbo v2, "NTPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "srvn"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "frsn"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "NtpTrustedTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ReportBigdata host = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    const-string/jumbo v1, "NtpTrustedTime"

    const-string/jumbo v2, "ReportBigdata sContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 30

    const-class v27, Landroid/util/NtpTrustedTime;

    monitor-enter v27

    :try_start_0
    sget-object v3, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const v3, 0x1040223

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v3, 0x10e0098

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v12, v3

    const-string/jumbo v3, "ntp_server"

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v3, "ntp_timeout"

    move-object/from16 v0, v23

    invoke-static {v0, v3, v12, v13}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v28

    if-eqz v24, :cond_2

    move-object/from16 v25, v24

    :goto_0
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    aput-object v25, v19, v3

    const-string/jumbo v3, "cn.pool.ntp.org"

    const/4 v4, 0x1

    aput-object v3, v19, v4

    const-string/jumbo v3, "asia.pool.ntp.org"

    const/4 v4, 0x2

    aput-object v3, v19, v4

    const-string/jumbo v3, "1.cn.pool.ntp.org"

    const/4 v4, 0x3

    aput-object v3, v19, v4

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v3, 0x0

    aput-object v25, v18, v3

    const-string/jumbo v3, "asia.pool.ntp.org"

    const/4 v4, 0x1

    aput-object v3, v18, v4

    const-string/jumbo v3, "2.android.pool.ntp.org"

    const/4 v4, 0x2

    aput-object v3, v18, v4

    const-string/jumbo v3, "sg.cn.pool.ntp.org"

    const/4 v4, 0x3

    aput-object v3, v18, v4

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v25, v21, v3

    const-string/jumbo v3, "europe.pool.ntp.org"

    const/4 v4, 0x1

    aput-object v3, v21, v4

    const-string/jumbo v3, "2.android.pool.ntp.org"

    const/4 v4, 0x2

    aput-object v3, v21, v4

    const-string/jumbo v3, "us.cn.pool.ntp.org"

    const/4 v4, 0x3

    aput-object v3, v21, v4

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    aput-object v25, v16, v3

    const-string/jumbo v3, "north-america.pool.ntp.org"

    const/4 v4, 0x1

    aput-object v3, v16, v4

    const-string/jumbo v3, "2.android.pool.ntp.org"

    const/4 v4, 0x2

    aput-object v3, v16, v4

    const-string/jumbo v3, "us.cn.pool.ntp.org"

    const/4 v4, 0x3

    aput-object v3, v16, v4

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v3, 0x0

    aput-object v25, v20, v3

    const-string/jumbo v3, "north-america.pool.ntp.org"

    const/4 v4, 0x1

    aput-object v3, v20, v4

    const-string/jumbo v3, "europe.pool.ntp.org"

    const/4 v4, 0x2

    aput-object v3, v20, v4

    const-string/jumbo v3, "asia.pool.ntp.org"

    const/4 v4, 0x3

    aput-object v3, v20, v4

    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const-string/jumbo v4, "server1"

    invoke-static {v4}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const-string/jumbo v4, "server2"

    invoke-static {v4}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const-string/jumbo v4, "server3"

    invoke-static {v4}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const-string/jumbo v4, "server4"

    invoke-static {v4}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    aput v4, v3, v5

    const-string/jumbo v3, "NtpTrustedTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "score = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/util/NtpTrustedTime;->ntpScore:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x1388

    invoke-static {}, Landroid/util/NtpTrustedTime;->isCHNOrHKTW()Z

    move-result v3

    if-eqz v3, :cond_3

    sput-object v19, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    :goto_1
    const/4 v3, 0x4

    new-array v0, v3, [Landroid/util/NtpData;

    move-object/from16 v17, v0

    new-instance v3, Landroid/util/NtpData;

    sget-object v4, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-direct {v3, v4, v5}, Landroid/util/NtpData;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    aput-object v3, v17, v4

    new-instance v3, Landroid/util/NtpData;

    sget-object v4, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-direct {v3, v4, v5}, Landroid/util/NtpData;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x1

    aput-object v3, v17, v4

    new-instance v3, Landroid/util/NtpData;

    sget-object v4, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    sget-object v5, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-direct {v3, v4, v5}, Landroid/util/NtpData;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x2

    aput-object v3, v17, v4

    new-instance v3, Landroid/util/NtpData;

    sget-object v4, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    sget-object v5, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-direct {v3, v4, v5}, Landroid/util/NtpData;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x3

    aput-object v3, v17, v4

    const-string/jumbo v3, "NtpTrustedTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Original order = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/util/NtpTrustedTime$1;

    invoke-direct {v3}, Landroid/util/NtpTrustedTime$1;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v4, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_7

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    if-ne v3, v4, :cond_7

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    sget-object v4, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    if-ne v3, v4, :cond_7

    sget-object v3, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    sget-object v4, Landroid/util/NtpTrustedTime;->ntpScore:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v3, v4, :cond_7

    const/4 v10, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    :cond_0
    new-instance v3, Landroid/util/NtpTrustedTime;

    rem-int/lit8 v4, v10, 0x4

    aget-object v4, v17, v4

    iget-object v4, v4, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    add-int/lit8 v5, v10, 0x1

    rem-int/lit8 v5, v5, 0x4

    aget-object v5, v17, v5

    iget-object v5, v5, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    add-int/lit8 v6, v10, 0x2

    rem-int/lit8 v6, v6, 0x4

    aget-object v6, v17, v6

    iget-object v6, v6, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    add-int/lit8 v7, v10, 0x3

    rem-int/lit8 v7, v7, 0x4

    aget-object v7, v17, v7

    iget-object v7, v7, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    const-wide/16 v8, 0x1388

    invoke-direct/range {v3 .. v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v3, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const-string/jumbo v3, "NtpTrustedTime"

    const-string/jumbo v4, "All score is same. Follow today number remainder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string/jumbo v3, "NtpTrustedTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Final order = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v3, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v27

    return-object v3

    :cond_2
    move-object/from16 v25, v11

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v3, "Asia"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    sput-object v18, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v27

    throw v3

    :cond_4
    :try_start_2
    const-string/jumbo v3, "Europe"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    sput-object v21, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v3, "America"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    sput-object v16, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    sput-object v20, Landroid/util/NtpTrustedTime;->ntpServer:[Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    new-instance v3, Landroid/util/NtpTrustedTime;

    const/4 v4, 0x0

    aget-object v4, v17, v4

    iget-object v4, v4, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v17, v5

    iget-object v5, v5, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v17, v6

    iget-object v6, v6, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v7, v17, v7

    iget-object v7, v7, Landroid/util/NtpData;->serverName:Ljava/lang/String;

    const-wide/16 v8, 0x1388

    invoke-direct/range {v3 .. v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v3, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static getNtpValue(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ntp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "NtpTrustedTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNtpValue true "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string/jumbo v1, "NtpTrustedTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNtpValue false "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isCHNOrHKTW()Z
    .locals 2

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CBK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static setNtpValue(Ljava/lang/String;I)Z
    .locals 3

    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    const/4 p1, 0x5

    :cond_0
    const/4 v0, -0x5

    if-ge p1, v0, :cond_1

    const/4 p1, -0x5

    :cond_1
    sget-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ntp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNtpValue true. Name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string/jumbo v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNtpValue false. Name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "NtpTrustedTime"

    const-string/jumbo v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 10

    const-string/jumbo v6, "NtpTrustedTime"

    const-string/jumbo v7, "NTP forceRefresh called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->currentTime:J

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->currentTime:J

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->currentTime:J

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    const-string/jumbo v6, "NtpTrustedTime"

    const-string/jumbo v7, "NTP forceRefresh needs cooling time to avoid watchdog"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return v6

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_2

    sget-object v6, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_4

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    :cond_3
    const-string/jumbo v6, "NtpTrustedTime"

    const-string/jumbo v7, "forceRefresh: no connectivity"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return v6

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_4
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "ril.pco.default"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_7

    :cond_6
    const-string/jumbo v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "forceRefresh: ril.pco.default ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return v6

    :cond_7
    const-string/jumbo v6, "NtpTrustedTime"

    const-string/jumbo v7, "forceRefresh() from cache miss"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "persist.ril.ntptrustedtime"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "off"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "forceRefresh: persist.ril.ntptrustedtime ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return v6

    :cond_8
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget v6, p0, Landroid/util/NtpTrustedTime;->mRetryStep:I

    packed-switch v6, :pswitch_data_0

    const/4 v6, 0x0

    iput v6, p0, Landroid/util/NtpTrustedTime;->mRetryStep:I

    :goto_1
    const-string/jumbo v6, "NtpTrustedTime"

    const-string/jumbo v7, "forceRefresh Fail."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->currentTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-gez v6, :cond_9

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    :cond_9
    const/4 v6, 0x0

    return v6

    :pswitch_0
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IZ)I

    move-result v5

    const-string/jumbo v6, "server1"

    invoke-static {v6}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    add-int/lit8 v3, v3, 0x1

    const-string/jumbo v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime Success from server:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpCertainty : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server1"

    invoke-static {v6, v3}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const/4 v6, 0x1

    return v6

    :cond_a
    add-int/lit8 v3, v3, -0x1

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server1"

    invoke-static {v6, v3}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const-string/jumbo v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime failed. server:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iput v6, p0, Landroid/util/NtpTrustedTime;->mRetryStep:I

    goto/16 :goto_1

    :pswitch_1
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IZ)I

    move-result v5

    const-string/jumbo v6, "server2"

    invoke-static {v6}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    add-int/lit8 v3, v3, 0x1

    const-string/jumbo v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime Success from server2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpCertainty : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server2"

    invoke-static {v6, v3}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const/4 v6, 0x1

    return v6

    :cond_b
    add-int/lit8 v3, v3, -0x1

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server2"

    invoke-static {v6, v3}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const-string/jumbo v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime failed. server:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v6, 0x2

    iput v6, p0, Landroid/util/NtpTrustedTime;->mRetryStep:I

    goto/16 :goto_1

    :pswitch_2
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IZ)I

    move-result v5

    const-string/jumbo v6, "server3"

    invoke-static {v6}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    add-int/lit8 v3, v3, 0x1

    const-string/jumbo v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime Success from server3:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpCertainty : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server3"

    invoke-static {v6, v3}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const/4 v6, 0x1

    return v6

    :cond_d
    add-int/lit8 v3, v3, -0x1

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server3"

    invoke-static {v6, v3}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const-string/jumbo v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime failed. server:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v6, 0x3

    iput v6, p0, Landroid/util/NtpTrustedTime;->mRetryStep:I

    goto/16 :goto_1

    :pswitch_3
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IZ)I

    move-result v5

    const-string/jumbo v6, "server4"

    invoke-static {v6}, Landroid/util/NtpTrustedTime;->getNtpValue(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->failedTime:J

    add-int/lit8 v3, v3, 0x1

    const-string/jumbo v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime Success from server4:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mCachedNtpCertainty : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server4"

    invoke-static {v6, v3}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const/4 v6, 0x1

    return v6

    :cond_f
    add-int/lit8 v3, v3, -0x1

    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Landroid/util/NtpTrustedTime;->ReportBigdata(Ljava/lang/String;I)Z

    const-string/jumbo v6, "server4"

    invoke-static {v6, v3}, Landroid/util/NtpTrustedTime;->setNtpValue(Ljava/lang/String;I)Z

    const-string/jumbo v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestTime failed. server:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/NtpTrustedTime;->mServer4:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v6, 0x0

    iput v6, p0, Landroid/util/NtpTrustedTime;->mRetryStep:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCacheAge()J
    .locals 4

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCacheCertainty()J
    .locals 2

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCachedNtpTime()J
    .locals 2

    const-string/jumbo v0, "NtpTrustedTime"

    const-string/jumbo v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method

.method public setNtpInfoInternal(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 11

    const v9, 0x10e0098

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-eq v6, v7, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_0
    const-string/jumbo v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setNtpInfoInternal server "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " timeout "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-nez p2, :cond_2

    const v6, 0x1040223

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ntp_server"

    invoke-static {v4, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    :goto_0
    iput-object v5, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v2, v6

    const-string/jumbo v6, "ntp_timeout"

    invoke-static {v4, v6, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    :goto_1
    const/4 v6, 0x1

    return v6

    :cond_1
    move-object v5, v0

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-nez v6, :cond_3

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v2, v6

    const-string/jumbo v6, "ntp_timeout"

    invoke-static {v4, v6, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iput-wide p3, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    goto :goto_1
.end method
