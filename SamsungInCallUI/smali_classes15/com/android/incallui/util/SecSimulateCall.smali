.class public final Lcom/android/incallui/util/SecSimulateCall;
.super Ljava/lang/Object;
.source "SecSimulateCall.java"


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

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 36
    const-string v0, "Outgoing call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_OUTGOING_CALL:Ljava/lang/String;

    .line 37
    const-string v0, "Incoming call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_INCOMING_CALL:Ljava/lang/String;

    .line 38
    const-string v0, "Voice call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_VOICE_CALL:Ljava/lang/String;

    .line 39
    const-string v0, "Qcif Video call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_QCIF_VIDEO_CALL:Ljava/lang/String;

    .line 40
    const-string v0, "Oneway TX Video call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_ONEWAY_TX_VIDEO_CALL:Ljava/lang/String;

    .line 41
    const-string v0, "Oneway RX Video call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_ONEWAY_RX_VIDEO_CALL:Ljava/lang/String;

    .line 42
    const-string v0, "Twoway Video call"

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_TWOWAY_VIDEO_CALL:Ljava/lang/String;

    .line 44
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

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    .line 57
    sput v4, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/incallui/util/SecSimulateCall;->mConnectTimeMillis:J

    .line 59
    sput-boolean v3, Lcom/android/incallui/util/SecSimulateCall;->mDisconnected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/incallui/util/SecSimulateCall$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/util/SecSimulateCall$1;-><init>(Lcom/android/incallui/util/SecSimulateCall;)V

    iput-object v0, p0, Lcom/android/incallui/util/SecSimulateCall;->mHandler:Landroid/os/Handler;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/SecSimulateCall;->mDisconnected:Z

    .line 81
    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    .line 83
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/incallui/util/SecSimulateCall;->mConnectTimeMillis:J

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/util/SecSimulateCall;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/util/SecSimulateCall;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/incallui/util/SecSimulateCall;->updateSimulateCallState(I)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/util/SecSimulateCall;
    .locals 2

    .prologue
    .line 73
    const-class v1, Lcom/android/incallui/util/SecSimulateCall;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->sSecSimulateCall:Lcom/android/incallui/util/SecSimulateCall;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/incallui/util/SecSimulateCall;

    invoke-direct {v0}, Lcom/android/incallui/util/SecSimulateCall;-><init>()V

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->sSecSimulateCall:Lcom/android/incallui/util/SecSimulateCall;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->sSecSimulateCall:Lcom/android/incallui/util/SecSimulateCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateSimulateCallState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 163
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_0

    .line 175
    :goto_0
    return-void

    .line 165
    :cond_0
    sput p1, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    .line 166
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    sget v3, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setState(I)V

    .line 168
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    .line 169
    .local v0, "secCall":Lcom/android/incallui/SecCall;
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    .line 171
    .local v1, "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    .line 174
    .end local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method


# virtual methods
.method public acceptCall()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/incallui/util/SecSimulateCall;->updateSimulateCallState(I)V

    goto :goto_0
.end method

.method public disconnectCall(Z)V
    .locals 2
    .param p1, "disconnect"    # Z

    .prologue
    .line 196
    sput-boolean p1, Lcom/android/incallui/util/SecSimulateCall;->mDisconnected:Z

    .line 197
    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    .line 198
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    .line 199
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/incallui/util/SecSimulateCall;->mConnectTimeMillis:J

    .line 200
    return-void
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 207
    sget-wide v0, Lcom/android/incallui/util/SecSimulateCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getSimulateCall(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v6, 0x65

    const/4 v5, 0x6

    const/4 v4, 0x3

    .line 87
    if-eqz p1, :cond_2

    .line 88
    sget-boolean v2, Lcom/android/incallui/util/SecSimulateCall;->mDisconnected:Z

    if-eqz v2, :cond_3

    .line 89
    const/4 v2, 0x2

    sput v2, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    .line 93
    :cond_0
    :goto_0
    sget v2, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->setState(I)V

    .line 95
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    .line 96
    .local v0, "secCall":Lcom/android/incallui/SecCall;
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    .line 98
    .local v1, "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VideoResolution"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 99
    const-string v2, "VideoResolution"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    .line 104
    .end local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    sget v2, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    if-ne v2, v5, :cond_4

    .line 105
    iget-object v2, p0, Lcom/android/incallui/util/SecSimulateCall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/android/incallui/util/SecSimulateCall;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    .end local v0    # "secCall":Lcom/android/incallui/SecCall;
    :cond_2
    :goto_1
    sput-object p1, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    .line 114
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    return-object v2

    .line 90
    :cond_3
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_0

    .line 91
    sput v5, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    goto :goto_0

    .line 108
    .restart local v0    # "secCall":Lcom/android/incallui/SecCall;
    :cond_4
    sget v2, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    if-ne v2, v4, :cond_2

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/incallui/util/SecSimulateCall;->mConnectTimeMillis:J

    goto :goto_1
.end method

.method public isDisconnected()Z
    .locals 1

    .prologue
    .line 203
    sget-boolean v0, Lcom/android/incallui/util/SecSimulateCall;->mDisconnected:Z

    return v0
.end method

.method public isSupportedCapability(I)Z
    .locals 3
    .param p1, "capability"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "support":Z
    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 181
    sget v1, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 186
    :cond_0
    return v0
.end method

.method public updateSimulateCall(Ljava/lang/String;)V
    .locals 7
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 118
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    .line 120
    .local v0, "secCall":Lcom/android/incallui/SecCall;
    if-eqz v0, :cond_0

    .line 122
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_OUTGOING_CALL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    const/4 v2, 0x6

    sput v2, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    .line 124
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    sget v3, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setState(I)V

    .line 125
    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    .line 126
    .local v1, "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    .line 159
    .end local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 127
    :cond_3
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_INCOMING_CALL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    const/4 v2, 0x4

    sput v2, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    .line 129
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->mCall:Lcom/android/incallui/Call;

    sget v3, Lcom/android/incallui/util/SecSimulateCall;->mCallState:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setState(I)V

    .line 130
    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    .line 131
    .restart local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto :goto_1

    .line 132
    .end local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_VOICE_CALL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    .line 134
    .restart local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "VideoResolution"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto :goto_1

    .line 137
    .end local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_QCIF_VIDEO_CALL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 138
    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    .line 139
    .restart local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Type"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v2, "VideoResolution"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto :goto_1

    .line 142
    .end local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_ONEWAY_TX_VIDEO_CALL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 143
    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    .line 144
    .restart local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Type"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v2, "VideoResolution"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 147
    .end local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_ONEWAY_RX_VIDEO_CALL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 148
    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    .line 149
    .restart local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Type"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "VideoResolution"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 152
    .end local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    sget-object v2, Lcom/android/incallui/util/SecSimulateCall;->SIMULATE_TWOWAY_VIDEO_CALL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecCallExtra()Ljava/util/HashMap;

    move-result-object v1

    .line 154
    .restart local v1    # "secCallExtra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Type"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v2, "VideoResolution"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->updateFromSecCallExtra(Ljava/util/HashMap;)V

    goto/16 :goto_1
.end method
