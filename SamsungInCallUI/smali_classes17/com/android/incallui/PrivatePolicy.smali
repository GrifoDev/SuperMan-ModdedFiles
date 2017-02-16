.class public Lcom/android/incallui/PrivatePolicy;
.super Ljava/lang/Object;
.source "PrivatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/PrivatePolicy$Status;,
        Lcom/android/incallui/PrivatePolicy$SoundType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SECVT-PrivatePolicy"

.field private static sPrivatePolicy:Lcom/android/incallui/PrivatePolicy;


# instance fields
.field private mIsCameraStartFailed:Z

.field private mIsReady:Z

.field private mNeedToSkipRemoveOnDisconnect:Z

.field private mStatus:I

.field private mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    .line 21
    iput-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mIsCameraStartFailed:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipRemoveOnDisconnect:Z

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/PrivatePolicy;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/PrivatePolicy;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public static getInstance()Lcom/android/incallui/PrivatePolicy;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/incallui/PrivatePolicy;->sPrivatePolicy:Lcom/android/incallui/PrivatePolicy;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/incallui/PrivatePolicy;

    invoke-direct {v0}, Lcom/android/incallui/PrivatePolicy;-><init>()V

    sput-object v0, Lcom/android/incallui/PrivatePolicy;->sPrivatePolicy:Lcom/android/incallui/PrivatePolicy;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/incallui/PrivatePolicy;->sPrivatePolicy:Lcom/android/incallui/PrivatePolicy;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    const-string v0, "SECVT-PrivatePolicy"

    const-string v1, "clear"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    iput v3, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    .line 54
    iput-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    .line 55
    iput-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mIsCameraStartFailed:Z

    .line 56
    iput-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipRemoveOnDisconnect:Z

    .line 57
    return-void
.end method

.method public clearForActivityOnDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->clear()V

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "SECVT-PrivatePolicy"

    const-string v1, "clearForActivityOnDestroy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    iput v3, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    .line 65
    iput-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mIsCameraStartFailed:Z

    .line 66
    iput-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipRemoveOnDisconnect:Z

    goto :goto_0
.end method

.method public clearForModifyCall()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/PrivatePolicy;->setStatus(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->clear()V

    .line 167
    return-void
.end method

.method public displayToast(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    const v0, 0x7f0900c3

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    const v0, 0x7f0900c2

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    return v0
.end method

.method public isProhibit()Z
    .locals 3

    .prologue
    .line 71
    const-string v0, "SECVT-PrivatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProhibit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDisconnect()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipRemoveOnDisconnect:Z

    .line 171
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/PrivatePolicy;->setStatus(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->clear()V

    .line 173
    return-void
.end method

.method public pauseCamera()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "SECVT-PrivatePolicy"

    const-string v1, "pauseCamera"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallNotifier;->notifyVideoCallUiEvent(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public playCameraSound(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    .line 206
    const-string v3, "cam_start"

    .line 207
    .local v3, "selectedSource":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 220
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://com.samsung.android.incallui/raw/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 223
    iget-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 224
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 226
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 227
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 229
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 230
    iget-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 231
    iget-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 232
    iget-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 233
    const-string v4, "SECVT-PrivatePolicy"

    const-string v5, "playCameraSound"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 235
    iget-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/incallui/PrivatePolicy$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/PrivatePolicy$1;-><init>(Lcom/android/incallui/PrivatePolicy;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 245
    iget-object v4, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/incallui/PrivatePolicy$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/PrivatePolicy$2;-><init>(Lcom/android/incallui/PrivatePolicy;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_1
    return-void

    .line 209
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "filePath":Ljava/lang/String;
    :pswitch_0
    const-string v3, "cam_start"

    .line 210
    goto :goto_0

    .line 212
    :pswitch_1
    const-string v3, "cam_stop"

    .line 213
    goto :goto_0

    .line 215
    :pswitch_2
    const-string v3, "cam_click"

    .line 216
    goto :goto_0

    .line 253
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "ex":Ljava/io/IOException;
    const-string v4, "SECVT-PrivatePolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playCameraSound: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public playCaptureSound()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V

    .line 203
    return-void
.end method

.method public playStartSound()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V

    .line 199
    return-void
.end method

.method public removeStatus(I)V
    .locals 9
    .param p1, "status"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 124
    iget-boolean v4, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    if-nez v4, :cond_1

    .line 125
    const-string v4, "SECVT-PrivatePolicy"

    const-string v5, "removeStatus : not ready"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    if-ne p1, v7, :cond_2

    iget-boolean v4, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipRemoveOnDisconnect:Z

    if-eqz v4, :cond_2

    .line 130
    const-string v4, "SECVT-PrivatePolicy"

    const-string v5, "removeStatus : call is disconnected."

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 135
    .local v1, "callList":Lcom/android/incallui/CallList;
    const/4 v4, 0x0

    invoke-static {v1, v4, v7}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 136
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v4, "SECVT-PrivatePolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeStatus : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget v3, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    .line 138
    .local v3, "oldStatus":I
    iget v4, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    xor-int/lit8 v5, p1, -0x1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    .line 139
    if-eqz v3, :cond_4

    iget v4, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    if-nez v4, :cond_4

    .line 140
    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    .line 142
    .local v2, "callState":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    invoke-virtual {p0, v7}, Lcom/android/incallui/PrivatePolicy;->displayToast(Z)V

    .line 146
    .end local v2    # "callState":I
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->resumeCamera()V

    .line 148
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/incallui/UiAdapter;->showNearEndImage(Z)V

    goto :goto_0

    .line 149
    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 151
    const-string v4, "SECVT-PrivatePolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeStatus sending image "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/incallui/UiAdapter;->showNearEndImage(Z)V

    goto/16 :goto_0
.end method

.method public restoreStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 161
    iget v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    .line 162
    return-void
.end method

.method public resumeCamera()V
    .locals 2

    .prologue
    .line 183
    const-string v0, "SECVT-PrivatePolicy"

    const-string v1, "resumeCamera"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallNotifier;->notifyVideoCallUiEvent(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public setCameraStartFailed(Z)V
    .locals 3
    .param p1, "isCameraStartFailed"    # Z

    .prologue
    .line 76
    const-string v0, "SECVT-PrivatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraStartFailed isCameraStartFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-boolean p1, p0, Lcom/android/incallui/PrivatePolicy;->mIsCameraStartFailed:Z

    .line 78
    return-void
.end method

.method public setIsReady(Z)V
    .locals 3
    .param p1, "isReady"    # Z

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 82
    const-string v0, "SECVT-PrivatePolicy"

    const-string v1, "PrivatePolicy is ready."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V

    .line 84
    iput-boolean p1, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    .line 86
    :cond_0
    return-void
.end method

.method public setStatus(I)V
    .locals 9
    .param p1, "status"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 89
    iget-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    if-nez v3, :cond_1

    .line 90
    const-string v3, "SECVT-PrivatePolicy"

    const-string v4, "setStatus : not ready"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 94
    .local v1, "callList":Lcom/android/incallui/CallList;
    const/4 v3, 0x0

    invoke-static {v1, v3, v6}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 96
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v3, "SECVT-PrivatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v3

    if-nez v3, :cond_2

    if-eq p1, v8, :cond_2

    .line 99
    const-string v3, "SECVT-PrivatePolicy"

    const-string v4, "setStatus : send still image now."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 103
    :cond_2
    iget v2, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    .line 104
    .local v2, "oldStatus":I
    iget v3, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    or-int/2addr v3, p1

    iput v3, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    .line 105
    if-nez v2, :cond_0

    iget v3, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    if-eqz v3, :cond_0

    .line 106
    iget-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mIsCameraStartFailed:Z

    if-nez v3, :cond_3

    .line 107
    invoke-virtual {p0, v7}, Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V

    .line 108
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    invoke-virtual {p0, v7}, Lcom/android/incallui/PrivatePolicy;->displayToast(Z)V

    .line 112
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/incallui/PrivatePolicy;->setCameraStartFailed(Z)V

    .line 113
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v3

    if-nez v3, :cond_4

    if-ne p1, v8, :cond_4

    .line 115
    const-string v3, "SECVT-PrivatePolicy"

    const-string v4, "setStatus : Do not set still image status."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->pauseCamera()V

    .line 118
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/UiAdapter;->showNearEndImage(Z)V

    goto :goto_0
.end method
