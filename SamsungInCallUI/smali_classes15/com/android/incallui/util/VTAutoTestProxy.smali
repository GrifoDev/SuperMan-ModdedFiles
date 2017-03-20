.class public Lcom/android/incallui/util/VTAutoTestProxy;
.super Ljava/lang/Object;
.source "VTAutoTestProxy.java"


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

    .prologue
    .line 34
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/util/VTAutoTestProxy;->ENG:Z

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "com.siso.autotest.PHONE_STATE"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->AUTO_TEST_ACTION:Ljava/lang/String;

    .line 39
    const-string v0, "com.siso.autotest.INIT_COMPLETED"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->AUTO_TEST_INIT_COMPLETED:Ljava/lang/String;

    .line 40
    const-string v0, "state"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->PHONE_STATE_KEY:Ljava/lang/String;

    .line 41
    const-string v0, "cause"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->DISCONNECT_CAUSE_KEY:Ljava/lang/String;

    .line 42
    const-string v0, "duration"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->DURATION_KEY:Ljava/lang/String;

    .line 43
    const-string v0, "number"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->NUMBER_KEY:Ljava/lang/String;

    .line 44
    const-string v0, "initiatedtime"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->STARTED_TIME_KEY:Ljava/lang/String;

    .line 45
    const-string v0, "callfailcause"

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->CALLFAIL_CAUSE:Ljava/lang/String;

    .line 46
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->PHONE_STATE_IDLE:I

    .line 47
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->PHONE_STATE_OFF_HOOK:I

    .line 48
    const/16 v0, 0x67

    iput v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->PHONE_STATE_RINGING:I

    .line 50
    iput-boolean v1, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z

    .line 77
    new-instance v0, Lcom/android/incallui/util/VTAutoTestProxy$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/util/VTAutoTestProxy$1;-><init>(Lcom/android/incallui/util/VTAutoTestProxy;)V

    iput-object v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->CallStateReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    iput-boolean v1, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isActive:Z

    .line 73
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->registerForAutoTest()V

    .line 74
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->broadCastForInit()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/util/VTAutoTestProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/util/VTAutoTestProxy;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/util/VTAutoTestProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/util/VTAutoTestProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/util/VTAutoTestProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/util/VTAutoTestProxy;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->hangUpCall()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/util/VTAutoTestProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/util/VTAutoTestProxy;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->answerCall()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/util/VTAutoTestProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/util/VTAutoTestProxy;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->muteCall()V

    return-void
.end method

.method private answerCall()V
    .locals 4

    .prologue
    .line 217
    const-string v2, "answerCall"

    invoke-static {v2}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 219
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v1

    .line 220
    .local v1, "videoState":I
    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 223
    :cond_0
    return-void
.end method

.method private broadCastForAutoTest(I)V
    .locals 2
    .param p1, "phoneStatus"    # I

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.siso.autotest.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method private broadCastForAutoTest(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    .line 196
    .local v0, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 198
    .local v2, "duration":J
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "com.siso.autotest.PHONE_STATE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v5, "state"

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v5, "callfailcause"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v5, "number"

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v5, "duration"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 205
    const-string v5, "initiatedtime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 206
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private broadCastForInit()V
    .locals 2

    .prologue
    .line 186
    const-string v1, "broadCastForInit"

    invoke-static {v1}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.siso.autotest.INIT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public static englog(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 243
    sget-boolean v0, Lcom/android/incallui/util/VTAutoTestProxy;->ENG:Z

    if-eqz v0, :cond_0

    const-string v0, "VTAutoTestProxy"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/util/VTAutoTestProxy;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "instance is null, so init()"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/android/incallui/util/VTAutoTestProxy;->init()Lcom/android/incallui/util/VTAutoTestProxy;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    goto :goto_0
.end method

.method private hangUpCall()V
    .locals 4

    .prologue
    .line 226
    const-string v2, "hangUpCall"

    invoke-static {v2}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 229
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 230
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangUpCall Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init()Lcom/android/incallui/util/VTAutoTestProxy;
    .locals 3

    .prologue
    .line 53
    const-class v1, Lcom/android/incallui/util/VTAutoTestProxy;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "init()"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/android/incallui/util/VTAutoTestProxy;

    invoke-direct {v0}, Lcom/android/incallui/util/VTAutoTestProxy;-><init>()V

    sput-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    .line 60
    :goto_0
    sget-object v0, Lcom/android/incallui/util/VTAutoTestProxy;->sInstance:Lcom/android/incallui/util/VTAutoTestProxy;

    monitor-exit v1

    return-object v0

    .line 58
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

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private muteCall()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "muteCall"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    .line 240
    return-void
.end method

.method private onDisconnect()V
    .locals 2

    .prologue
    .line 166
    const-string v1, "onDisconnect"

    invoke-static {v1}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 168
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isActive:Z

    .line 169
    invoke-direct {p0, v0}, Lcom/android/incallui/util/VTAutoTestProxy;->broadCastForAutoTest(Lcom/android/incallui/Call;)V

    .line 170
    return-void
.end method

.method private onIncomingCall()V
    .locals 1

    .prologue
    .line 147
    const-string v0, "onIncomingCall"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    .line 148
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/android/incallui/util/VTAutoTestProxy;->broadCastForAutoTest(I)V

    .line 149
    return-void
.end method

.method private onStateChanged()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "onStateChanged"

    invoke-static {v0}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    .line 155
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

    .line 156
    iget-boolean v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isActive:Z

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isActive:Z

    .line 158
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/incallui/util/VTAutoTestProxy;->broadCastForAutoTest(I)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isActive:Z

    goto :goto_0
.end method

.method private registerForAutoTest()V
    .locals 3

    .prologue
    .line 173
    const-string v1, "registerForAutoTest"

    invoke-static {v1}, Lcom/android/incallui/util/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, "callStateFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.ControlAutoTest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "com.android.EndVTCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.android.AcceptInComingVTCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "com.android.mutecall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "com.android.DowngradeCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "com.android.UpgradeCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/util/VTAutoTestProxy;->CallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    return-void
.end method


# virtual methods
.method public handleMessage()V
    .locals 2

    .prologue
    .line 125
    iget-boolean v1, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 129
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 138
    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onStateChanged()V

    goto :goto_0

    .line 134
    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onIncomingCall()V

    goto :goto_0

    .line 141
    :pswitch_3
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onDisconnect()V

    goto :goto_0

    .line 132
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
    .param p1, "msg"    # I

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/incallui/util/VTAutoTestProxy;->isRunning:Z

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onStateChanged()V

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onIncomingCall()V

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/util/VTAutoTestProxy;->onDisconnect()V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
