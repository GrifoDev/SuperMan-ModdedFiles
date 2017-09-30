.class public final Lcom/android/incallui/util/SecSimulateCall;
.super Ljava/lang/Object;


# static fields
.field private static final EVENT_STATE_DIALING:I = 0x65

.field private static final EVENT_STATE_DIALING_DELAY:I = 0xbb8

.field public static SIMULATE_INCOMING_CALL:Ljava/lang/String;

.field public static SIMULATE_ONEWAY_RX_VIDEO_CALL:Ljava/lang/String;

.field public static SIMULATE_ONEWAY_TX_VIDEO_CALL:Ljava/lang/String;

.field public static SIMULATE_OUTGOING_CALL:Ljava/lang/String;

.field public static SIMULATE_QCIF_VIDEO_CALL:Ljava/lang/String;

.field public static SIMULATE_TWOWAY_VIDEO_CALL:Ljava/lang/String;

.field public static SIMULATE_VOICE_CALL:Ljava/lang/String;

.field private static mCall:Lcom/android/incallui/Call;

.field private static mCallState:I

.field private static mConnectTimeMillis:J

.field private static mDisconnected:Z

.field public static final mSimulateList:[Ljava/lang/String;

.field private static sSecSimulateCall:Lcom/android/incallui/util/SecSimulateCall;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "Outgoing call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_OUTGOING_CALL:Ljava/lang/String;

    const-string v0, "Incoming call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_INCOMING_CALL:Ljava/lang/String;

    const-string v0, "Voice call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_VOICE_CALL:Ljava/lang/String;

    const-string v0, "Qcif Video call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_QCIF_VIDEO_CALL:Ljava/lang/String;

    const-string v0, "Oneway TX Video call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_ONEWAY_TX_VIDEO_CALL:Ljava/lang/String;

    const-string v0, "Oneway RX Video call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_ONEWAY_RX_VIDEO_CALL:Ljava/lang/String;

    const-string v0, "Twoway Video call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_TWOWAY_VIDEO_CALL:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_OUTGOING_CALL:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_INCOMING_CALL:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_VOICE_CALL:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_QCIF_VIDEO_CALL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_ONEWAY_TX_VIDEO_CALL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_ONEWAY_RX_VIDEO_CALL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_TWOWAY_VIDEO_CALL:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->mSimulateList:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    sput v4, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/incallui/util/SecSimulateCall;->mConnectTimeMillis:J

    sput-boolean v3, Lcom/android/incallui/util/SecSimulateCall;->mDisconnected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/util/SecSimulateCall$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/util/SecSimulateCall$1;-><init>(Lcom/android/incallui/util/SecSimulateCall;)V

    iput-object v0, p0, Lcom/android/incallui/util/SecSimulateCall;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/SecSimulateCall;->mDisconnected:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/incallui/util/SecSimulateCall;->mConnectTimeMillis:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/util/SecSimulateCall;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/util/SecSimulateCall;->updateSimulateCallState(I)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/util/SecSimulateCall;
    .locals 2

    const-class v1, Lcom/android/incallui/util/SecSimulateCall;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->sSecSimulateCall:Lcom/android/incallui/util/SecSimulateCall;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/util/SecSimulateCall;

    invoke-direct {v0}, Lcom/android/incallui/util/SecSimulateCall;-><init>()V

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->sSecSimulateCall:Lcom/android/incallui/util/SecSimulateCall;

    :cond_0
    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->sSecSimulateCall:Lcom/android/incallui/util/SecSimulateCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateSimulateCallState(I)V
    .locals 2

    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput p1, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    sget v1, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method


# virtual methods
.method public acceptCall()V
    .locals 1

    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/incallui/util/SecSimulateCall;->updateSimulateCallState(I)V

    goto :goto_0
.end method

.method public disconnectCall(Z)V
    .locals 2

    sput-boolean p1, Lcom/android/incallui/util/SecSimulateCall;->mDisconnected:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/incallui/util/SecSimulateCall;->mConnectTimeMillis:J

    return-void
.end method

.method public getConnectTimeMillis()J
    .locals 2

    sget-wide v0, Lcom/android/incallui/util/SecSimulateCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getSimulateCall(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;
    .locals 7

    const/16 v6, 0x65

    const/4 v5, 0x6

    const/4 v4, 0x3

    if-eqz p1, :cond_2

    sget-boolean v0, Lcom/android/incallui/util/SecSimulateCall;->mDisconnected:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    :cond_0
    :goto_0
    sget v0, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setState(I)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VideoResolution"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "VideoResolution"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    :cond_1
    sget v0, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/incallui/util/SecSimulateCall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/util/SecSimulateCall;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    sput-object p1, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    return-object v0

    :cond_3
    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    sput v5, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    if-ne v0, v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/incallui/util/SecSimulateCall;->mConnectTimeMillis:J

    goto :goto_1
.end method

.method public isDisconnected()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/util/SecSimulateCall;->mDisconnected:Z

    return v0
.end method

.method public isSupportedCapability(I)Z
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public updateSimulateCall(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_OUTGOING_CALL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    sput v1, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    sget v2, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->setState(I)V

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_INCOMING_CALL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    sput v1, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    sget v2, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->setState(I)V

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_VOICE_CALL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VideoResolution"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_QCIF_VIDEO_CALL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Type"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VideoResolution"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_ONEWAY_TX_VIDEO_CALL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Type"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VideoResolution"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto/16 :goto_1

    :cond_7
    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_ONEWAY_RX_VIDEO_CALL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Type"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VideoResolution"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto/16 :goto_1

    :cond_8
    sget-object v1, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_TWOWAY_VIDEO_CALL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Type"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VideoResolution"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto/16 :goto_1
.end method
