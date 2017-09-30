.class public Lcom/android/incallui/util/VTAutoTestProxy;
.super Ljava/lang/Object;


# static fields
.field public static final DISCONNECT:I = 0x3

.field private static final ENG:Z

.field public static final INCOMING:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "VTAutoTestProxy"

.field public static final STATE_CHANGED:I = 0x1

.field private static sInstance:Lcom/android/incallui/util/VTAutoTestProxy;


# instance fields
.field private final AUTO_TEST_ACTION:Ljava/lang/String;

.field private final AUTO_TEST_INIT_COMPLETED:Ljava/lang/String;

.field private final CALLFAIL_CAUSE:Ljava/lang/String;

.field CallStateReceiver:Landroid/content/BroadcastReceiver;

.field private final DISCONNECT_CAUSE_KEY:Ljava/lang/String;

.field private final DURATION_KEY:Ljava/lang/String;

.field private final NUMBER_KEY:Ljava/lang/String;

.field private final PHONE_STATE_IDLE:I

.field private final PHONE_STATE_KEY:Ljava/lang/String;

.field private final PHONE_STATE_OFF_HOOK:I

.field private final PHONE_STATE_RINGING:I

.field private final STARTED_TIME_KEY:Ljava/lang/String;

.field isActive:Z

.field private isRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/util/VTAutoTestProxy;->ENG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.siso.autotest.PHONE_STATE"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->AUTO_TEST_ACTION:Ljava/lang/String;

    const-string v0, "com.siso.autotest.INIT_COMPLETED"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->AUTO_TEST_INIT_COMPLETED:Ljava/lang/String;

    const-string v0, "state"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->PHONE_STATE_KEY:Ljava/lang/String;

    const-string v0, "cause"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->DISCONNECT_CAUSE_KEY:Ljava/lang/String;

    const-string v0, "duration"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->DURATION_KEY:Ljava/lang/String;

    const-string v0, "number"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->NUMBER_KEY:Ljava/lang/String;

    const-string v0, "initiatedtime"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->STARTED_TIME_KEY:Ljava/lang/String;

    const-string v0, "callfailcause"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->CALLFAIL_CAUSE:Ljava/lang/String;

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->PHONE_STATE_IDLE:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->PHONE_STATE_OFF_HOOK:I

    const/16 v0, 0x67

    iput v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->PHONE_STATE_RINGING:I

    iput-boolean v1, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z

    new-instance v0, Lcom/android/incallui/util/VTAutoTestProxy$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/util/VTAutoTestProxy$1;-><init>(Lcom/android/incallui/util/VTAutoTestProxy;)V

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->CallStateReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isActive:Z

    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->registerForAutoTest()V

    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->broadCastForInit()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/util/VTAutoTestProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/util/VTAutoTestProxy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/util/VTAutoTestProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->hangUpCall()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/util/VTAutoTestProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->answerCall()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/util/VTAutoTestProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->muteCall()V

    return-void
.end method

.method private answerCall()V
    .locals 3

    const-string v0, "answerCall"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private broadCastForAutoTest(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.siso.autotest.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadCastForAutoTest(Lcom/android/incallui/Call;)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.siso.autotest.PHONE_STATE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "state"

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "callfailcause"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "number"

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "duration"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "initiatedtime"

    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private broadCastForInit()V
    .locals 2

    const-string v0, "broadCastForInit"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.siso.autotest.INIT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static englog(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/incallui/util/VTAutoTestProxy;->ENG:Z

    if-eqz v0, :cond_0

    const-string v0, "VTAutoTestProxy"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/util/VTAutoTestProxy;
    .locals 1

    sget-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    if-nez v0, :cond_0

    const-string v0, "instance is null, so init()"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VTAutoTestProxy;->init()Lcom/android/incallui/util/VTAutoTestProxy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    goto :goto_0
.end method

.method private hangUpCall()V
    .locals 3

    const-string v0, "hangUpCall"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangUpCall Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init()Lcom/android/incallui/util/VTAutoTestProxy;
    .locals 3

    const-class v1, Lcom/android/incallui/util/VTAutoTestProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    if-nez v0, :cond_0

    const-string v0, "init()"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-direct {v0}, Lcom/android/incallui/util/VTAutoTestProxy;-><init>()V

    sput-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    :goto_0
    sget-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private muteCall()V
    .locals 2

    const-string v0, "muteCall"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    return-void
.end method

.method private onDisconnect()V
    .locals 2

    const-string v0, "onDisconnect"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isActive:Z

    invoke-direct {p0, v0}, Lcom/android/incallui/util/VTAutoTestProxy;->broadCastForAutoTest(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private onIncomingCall()V
    .locals 1

    const-string v0, "onIncomingCall"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/android/incallui/util/VTAutoTestProxy;->broadCastForAutoTest(I)V

    return-void
.end method

.method private onStateChanged()V
    .locals 2

    const-string v0, "onStateChanged"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCallState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isActive:Z

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/incallui/util/VTAutoTestProxy;->broadCastForAutoTest(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isActive:Z

    goto :goto_0
.end method

.method private registerForAutoTest()V
    .locals 3

    const-string v0, "registerForAutoTest"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.ControlAutoTest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.EndVTCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.AcceptInComingVTCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.mutecall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.DowngradeCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.UpgradeCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/util/VTAutoTestProxy;->CallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public handleMessage()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onStateChanged()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onIncomingCall()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onDisconnect()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public handleMessage(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onStateChanged()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onIncomingCall()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onDisconnect()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
