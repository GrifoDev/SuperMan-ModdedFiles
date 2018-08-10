.class Lcom/android/server/am/AppStateBroadcasterA;
.super Ljava/lang/Object;
.source "AppStateBroadcasterA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppStateBroadcasterA$1;,
        Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;,
        Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;
    }
.end annotation


# static fields
.field private static final ACTION_APPLICATION_STATE:Ljava/lang/String; = "com.att.iqi.action.APPLICATION_STATE"

.field private static final APP_STATE_EXITED:Ljava/lang/String; = "EXITED"

.field private static final APP_STATE_FOCUS_GAIN:Ljava/lang/String; = "FOCUS_GAIN"

.field private static final APP_STATE_FOCUS_LOSS:Ljava/lang/String; = "FOCUS_LOSS"

.field private static final APP_STATE_PID_EXITED:Ljava/lang/String; = "PID_EXITED"

.field private static final APP_STATE_PID_STARTED:Ljava/lang/String; = "PID_STARTED"

.field private static final APP_STATE_START:Ljava/lang/String; = "START"

.field static final APP_TERM_REASONS:[Ljava/lang/String;

.field private static final APP_TERM_REASON_ANR:Ljava/lang/String; = "ANR"

.field private static final APP_TERM_REASON_CRASH:Ljava/lang/String; = "CRASH"

.field private static final APP_TERM_REASON_SYSTEM_HALT:Ljava/lang/String; = "NORMAL_SYSTEM_HALT"

.field private static final APP_TERM_REASON_USER_HALT:Ljava/lang/String; = "USER_HALTED"

.field private static final DEBUG_LOG:Z = false

.field private static final EXTRA_APP_PACKAGE_NAME:Ljava/lang/String; = "ApplicationPackageName"

.field private static final EXTRA_APP_STATE:Ljava/lang/String; = "ApplicationState"

.field private static final EXTRA_APP_TERM_REASON:Ljava/lang/String; = "ApplicationTermReason"

.field private static final EXTRA_PROCESS_ID:Ljava/lang/String; = "PID"

.field private static final LOG_TAG:Ljava/lang/String; = "IQAgent"

.field private static final PERMISSION_RECEIVE_APPLICATION_STATE:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_APP_STATE"

.field private static final RECEIVE_APP_STATE_BROADCASTER_STATE:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_APP_STATE_BROADCASTER_STATE"

.field public static final STOP_REASON_ANR:I = 0x2

.field public static final STOP_REASON_CRASH:I = 0x3

.field public static final STOP_REASON_NORMAL_SYSTEM_HALT:I = 0x0

.field public static final STOP_REASON_USER_HALT:I = 0x1

.field private static final mAgentReadyReceiver:Landroid/content/BroadcastReceiver;

.field private static sAM:Lcom/android/server/am/ActivityManagerService;

.field private static volatile sBroadcastEnabled:Z

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static final sKnownRunningPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastFocusAppName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sAM:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    return p0
.end method

.method static synthetic -set1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->isKnownRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->disableIntentBroadcast()V

    return-void
.end method

.method static synthetic -wrap4()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->enableIntentBroadcast()V

    return-void
.end method

.method static synthetic -wrap5(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcasterA;->packageRunning(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap6(Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppStateBroadcasterA;->packageStopped(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcasterA;->populateRunningProcesses(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NORMAL_SYSTEM_HALT"

    aput-object v1, v0, v2

    const-string/jumbo v1, "USER_HALTED"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "ANR"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "CRASH"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->APP_TERM_REASONS:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/am/AppStateBroadcasterA$1;

    invoke-direct {v0}, Lcom/android/server/am/AppStateBroadcasterA$1;-><init>()V

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->mAgentReadyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broadcastAppExit(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.att.iqi.action.APPLICATION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ApplicationPackageName"

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ApplicationState"

    const-string/jumbo v2, "EXITED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ApplicationTermReason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "PID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v3, "com.att.iqi.permission.RECEIVE_APP_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static broadcastAppStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "EXITED"

    if-eq p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.att.iqi.action.APPLICATION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ApplicationPackageName"

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ApplicationState"

    const-string/jumbo v2, "START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "PID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v3, "com.att.iqi.permission.RECEIVE_APP_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "EXITED"

    if-eq p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.att.iqi.action.APPLICATION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ApplicationPackageName"

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ApplicationState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v3, "com.att.iqi.permission.RECEIVE_APP_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static broadcastPidExit(Ljava/lang/String;I)V
    .locals 4

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.att.iqi.action.APPLICATION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ApplicationPackageName"

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ApplicationState"

    const-string/jumbo v2, "PID_EXITED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "PID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v3, "com.att.iqi.permission.RECEIVE_APP_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static broadcastPidStart(Ljava/lang/String;I)V
    .locals 4

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.att.iqi.action.APPLICATION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ApplicationPackageName"

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ApplicationState"

    const-string/jumbo v2, "PID_STARTED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "PID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v3, "com.att.iqi.permission.RECEIVE_APP_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static disableIntentBroadcast()V
    .locals 2

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static enableIntentBroadcast()V
    .locals 2

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static isKnownRunning(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static onSystemDown()V
    .locals 1

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public static onSystemReady(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5

    const/4 v4, 0x0

    sput-object p0, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/am/AppStateBroadcasterA;->sAM:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "asb"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;

    invoke-direct {v3, v4}, Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;-><init>(Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.att.iqi.action.BROADCASTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/AppStateBroadcasterA;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->mAgentReadyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private static packageRunning(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;

    invoke-direct {v0}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;-><init>()V

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "START"

    invoke-static {p0, v2, p1}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastAppStart(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->addProcess(I)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastPidStart(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static packageStopped(Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->removeProcess(II)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationFocusLoss(Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->getTermReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastAppExit(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1, p1}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastPidExit(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static populateRunningProcesses(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStart(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static sendApplicationFocusGain(Ljava/lang/String;)V
    .locals 4

    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->shouldReportApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "package_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private static sendApplicationFocusLoss(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->shouldReportApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->isKnownRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FOCUS_LOSS"

    invoke-static {p0, v0}, Lcom/android/server/am/AppStateBroadcasterA;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AppStateBroadcasterA;->sLastFocusAppName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static sendApplicationStart(Ljava/lang/String;I)V
    .locals 4

    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->shouldReportApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "package_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public static sendApplicationStop(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V

    return-void
.end method

.method public static sendApplicationStop(Ljava/lang/String;II)V
    .locals 4

    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->shouldReportApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ltz p2, :cond_0

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->APP_TERM_REASONS:[Ljava/lang/String;

    array-length v2, v2

    if-ge p2, v2, :cond_0

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "package_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "stop_reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public static setStopReason(Ljava/lang/String;I)V
    .locals 4

    sget-boolean v2, Lcom/android/server/am/AppStateBroadcasterA;->sBroadcastEnabled:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcasterA;->shouldReportApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->APP_TERM_REASONS:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    sget-object v2, Lcom/android/server/am/AppStateBroadcasterA;->sHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "package_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "stop_reason"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private static shouldReportApp(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static stripPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v1, p0

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private static toStringExit(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ApplicationPackageName"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ApplicationState"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", termReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ApplicationTermReason"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringState(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ApplicationPackageName"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ApplicationState"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
