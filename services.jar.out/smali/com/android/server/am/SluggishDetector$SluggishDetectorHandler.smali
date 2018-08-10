.class final Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;
.super Landroid/os/Handler;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SluggishDetectorHandler"
.end annotation


# static fields
.field private static final MSG_REPORT_LAUNCH:I = 0x3

.field private static final MSG_SEND_TO_HQM:I = 0x0

.field private static final MSG_SET_LAUNCH:I = 0x2

.field private static final MSG_SET_REPORT_FLAG_FOR_PERIODIC:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

.field private static sHandlerThread:Lcom/android/server/ServiceThread;


# instance fields
.field private mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    return-void
.end method

.method static synthetic -wrap1(ILjava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendDataToHandlerWithDelay(ILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic -wrap2(ILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap3(IJ)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    sput-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SluggishDetectorHandler()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static check()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "check()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static init()V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/ServiceThread;

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicReport;->-wrap4()V

    :cond_1
    return-void
.end method

.method private reportLaunch(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 3

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reportLaunch()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {p1, v0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-wrap0(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method private static sendDataToHandler(ILjava/lang/Object;)V
    .locals 6

    const-wide/16 v4, 0x40

    sget-boolean v2, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendDataToHandler()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendDataToHandler() - obj is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_sendDataToHandler()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_3
    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendDataToHandler() - failed to sendMessage()"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    return-void
.end method

.method private static sendDataToHandlerWithDelay(ILjava/lang/Object;J)V
    .locals 8

    const-wide/16 v6, 0x40

    sget-boolean v2, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataToHandlerWithDelay() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendDataToHandlerWithDelay() - obj is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_sendDataToHandlerWithDelay()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_3
    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendDataToHandlerWithDelay() - failed to sendMessage()"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    return-void
.end method

.method private static sendMessageToHandlerDelayed(IJ)V
    .locals 7

    const-wide/16 v4, 0x40

    sget-boolean v1, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessageToHandlerDelayed() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sendMessageToHandlerDelayed()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_2
    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendMessageToHandlerDelayed() - failed to sendMessage()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_4
    return-void
.end method

.method private sendToHqm(Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    .locals 2

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendToHqm()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$DetectInfo;->-wrap0(Lcom/android/server/am/SluggishDetector$DetectInfo;)V

    return-void
.end method

.method private setLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V
    .locals 2

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setLaunch()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-wrap0(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method private setReportFlagForPeriodic()V
    .locals 2

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setReportFlagForPeriodic()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicReport;->-wrap5()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-wide/16 v4, 0x40

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage() - what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_handleMessage()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage() - unknown Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    return-void

    :pswitch_0
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/SluggishDetector$DetectInfo;

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/SluggishDetector$DetectInfo;

    invoke-direct {p0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendToHqm(Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleMessage() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_2
    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleMessage() - msg.obj is null or not DetectInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setReportFlagForPeriodic()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-direct {p0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleMessage() - msg.obj is null or not SetLaunchInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    if-eqz v1, :cond_6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    invoke-direct {p0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->reportLaunch(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleMessage() - msg.obj is null or not ReportLaunchInfo"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
