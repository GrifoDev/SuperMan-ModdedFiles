.class Lcom/android/server/am/SluggishDetector;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishDetector$AgingDataQueue;,
        Lcom/android/server/am/SluggishDetector$DetectInfo;,
        Lcom/android/server/am/SluggishDetector$OccurredReport;,
        Lcom/android/server/am/SluggishDetector$PeriodicReport;,
        Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;,
        Lcom/android/server/am/SluggishDetector$SetLaunchInfo;,
        Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;
    }
.end annotation


# static fields
.field private static final BIGDATA_ENABLE:Z

.field private static DEBUG:Z = false

.field public static final ENABLE:Z

.field private static final SecProductFeature:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_NAME:Ljava/lang/String; = "1.1.0"


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector;->BIGDATA_ENABLE:Z

    sput-boolean v2, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    const-class v0, Lcom/android/server/am/SluggishDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    sput-boolean v2, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "static initialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->-wrap3()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicReport;->-wrap3()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->-wrap0()V

    :cond_1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$OccurredReport;->-wrap0()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicReport;->-wrap0()V

    if-eqz p0, :cond_0

    const-string/jumbo v0, "CLEAR SLUGGISH DETECTOR"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-wide/16 v2, 0x40

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dump()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_dump()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$OccurredReport;->-wrap1(Ljava/io/PrintWriter;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicReport;->-wrap1(Ljava/io/PrintWriter;)V

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v0, :cond_3

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    return-void
.end method

.method static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 10

    const-wide/16 v8, 0x40

    sget-boolean v4, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "executeCommand()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    sget-object v4, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "executeCommand() - pw or cmd is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean v4, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "executeCommand() - cmd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v4, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_executeCommand()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_4
    const-string/jumbo v4, "slgdetect_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "slgdetect_occurred"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    const-string/jumbo v4, "slgdetect_periodic"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    :try_start_0
    const-string/jumbo v4, "slgdetect_"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, "CLEAR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector;->clear(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v4, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v4, :cond_5

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    return-void

    :cond_6
    :try_start_1
    const-string/jumbo v5, "DEBUG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "true"

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "change DEBUG:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "executeCommand() - Exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown command : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "executeCommand() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "slgdetect_occurred"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$OccurredReport;->-wrap2(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v4, "slgdetect_periodic"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$PeriodicReport;->-wrap2(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector;->dump(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method static reportLaunch(Lcom/android/server/am/ActivityRecord;J)V
    .locals 13

    sget-boolean v1, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v1, :cond_4

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportLaunch()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v1, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_reportLaunch()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_3
    :try_start_0
    new-instance v0, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v6, v4, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v8, v4, Lcom/android/server/am/ProcessRecord;->lastSwapPss:J

    const/4 v10, 0x0

    move-wide v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;-><init>(Landroid/content/Context;ILjava/lang/String;JJJLcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->-wrap2(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v1, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v1, :cond_4

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_4
    return-void

    :catch_0
    move-exception v11

    sget-object v1, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportLaunch() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static setLaunch(Lcom/android/server/am/ActivityRecord;)V
    .locals 6

    const-wide/16 v4, 0x40

    sget-boolean v2, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v2, :cond_4

    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setLaunch()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v2, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_setLaunch()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_3
    :try_start_0
    new-instance v1, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;-><init>(Ljava/lang/String;Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->-wrap2(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v2, Lcom/android/server/am/SluggishDetector;->DEBUG:Z

    if-eqz v2, :cond_4

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setLaunch() - Exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
