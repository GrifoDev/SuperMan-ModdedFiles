.class public Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
.super Ljava/lang/Object;
.source "AnswerMemoRecorderManager.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceCallback;,
        Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mCall:Lcom/android/incallui/Call;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mIsPaused:Z

.field private mIsRecording:Z

.field private mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

.field private mRecorderConnection:Landroid/content/ServiceConnection;

.field private mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "AnswerMemoRecorderManager"

    iput-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->LOG_TAG:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 45
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    .line 46
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    .line 47
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    .line 48
    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    .line 51
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    .line 63
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    .line 64
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    .line 65
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    .line 66
    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 3
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "AnswerMemoRecorderManager"

    iput-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->LOG_TAG:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 45
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    .line 46
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    .line 47
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    .line 48
    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    .line 51
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    .line 54
    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 55
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    .line 56
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    .line 57
    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    .line 58
    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .param p1, "x1"    # Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderService;)Lcom/android/phone/IAnswerMemoRecorderService;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .param p1, "x1"    # Lcom/android/phone/IAnswerMemoRecorderService;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/InCallActivity;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .param p1, "x1"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object p1
.end method


# virtual methods
.method public UpdateInCallActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 71
    const-string v0, "AnswerMemoRecorderManager"

    const-string v1, "UpdateInCallActivity..!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 73
    return-void
.end method

.method public getRecordTime()J
    .locals 4

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->getRecordTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 284
    :goto_0
    return-wide v2

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecordTime() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    return v0
.end method

.method public onAMRecorderStateChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    .line 421
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    if-nez v4, :cond_0

    .line 422
    const-string v4, "AnswerMemoRecorderManager"

    const-string v5, "mCall is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 425
    :cond_0
    if-eqz v0, :cond_7

    .line 426
    const-string v4, "AnswerMemoRecorderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAMRecorderStateChanged - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 428
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    .line 429
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8

    :cond_1
    move v1, v3

    .line 431
    .local v1, "canRecord":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v4, :cond_2

    .line 432
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopRecord()V

    .line 438
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 439
    iget-boolean v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v4, :cond_3

    .line 440
    iget-object v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v5

    .line 441
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v7, :cond_9

    move v4, v3

    :goto_1
    invoke-interface {v5, v4}, Lcom/android/incallui/CallCardUi;->manageAnswerMemoRecord(Z)V

    .line 444
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 445
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupService;->updateAnswerMemoRecordTime()V

    .line 448
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 449
    iget-boolean v4, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v4, :cond_a

    .line 450
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/incallui/accessory/CoverScreen;->manageAMRecordInfo(ZZ)V

    .line 456
    :cond_5
    :goto_2
    const-string v2, "voice_call_recording_button"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 457
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 458
    iget-object v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/incallui/CallButtonUi;->updateRecordButton(Z)V

    .line 462
    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    .line 464
    .end local v1    # "canRecord":Z
    :cond_7
    return-void

    :cond_8
    move v1, v2

    .line 429
    goto/16 :goto_0

    .restart local v1    # "canRecord":Z
    :cond_9
    move v4, v2

    .line 441
    goto :goto_1

    .line 452
    :cond_a
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Lcom/android/incallui/accessory/CoverScreen;->manageAMRecordInfo(ZZ)V

    goto :goto_2
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    .line 403
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    .line 407
    const-string v3, "AnswerMemoRecorderManager"

    const-string v4, "onDisconnect: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v3, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 410
    .local v1, "needToStop":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    .line 409
    invoke-static {v3, p1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 411
    .local v0, "anotherCall":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    :goto_0
    or-int/2addr v1, v2

    .line 412
    if-eqz v1, :cond_0

    .line 413
    iget-boolean v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v2, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopRecord()V

    .line 416
    :cond_0
    return-void

    .line 411
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 394
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 398
    return-void
.end method

.method public pauseRecord()V
    .locals 4

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    .line 253
    iget-boolean v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    if-nez v1, :cond_0

    .line 254
    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "pauseRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->pauseRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseRecord() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resumeRecord()V
    .locals 4

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    .line 266
    iget-boolean v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsPaused:Z

    if-eqz v1, :cond_0

    .line 267
    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "resumeRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->resumeRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeRecord() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCallerNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1, p1}, Lcom/android/phone/IAnswerMemoRecorderService;->setCallerNumber(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallerNumber() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRecord(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 223
    :try_start_0
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecorderSrv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    .line 225
    iget-boolean v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-nez v1, :cond_0

    .line 226
    iput-object p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;

    .line 227
    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "startRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->startRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecord() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startService()V
    .locals 9

    .prologue
    .line 76
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v6, :cond_0

    .line 112
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v3, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.AnswerMemoRecorderService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    .line 81
    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 83
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_2

    .line 84
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 85
    .local v2, "entry":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 86
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_1

    .line 87
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 94
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "entry":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    new-instance v6, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;)V

    iput-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    .line 96
    :try_start_0
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6, v3}, Lcom/android/incallui/InCallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 97
    const-string v6, "AnswerMemoRecorderManager"

    const-string v7, "startService()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/incallui/InCallActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    const-string v6, "AnswerMemoRecorderManager"

    const-string v7, "bindService()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "AnswerMemoRecorderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not start service - IllegalArgumentException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 103
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_1
    const-string v6, "AnswerMemoRecorderManager"

    const-string v7, "can not bind service"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 106
    :cond_4
    const-string v6, "AnswerMemoRecorderManager"

    const-string v7, "can not start service"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public startService(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v6, :cond_0

    .line 181
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v3, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.AnswerMemoRecorderService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    .line 150
    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 152
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_2

    .line 153
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 154
    .local v2, "entry":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 155
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_1

    .line 156
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 163
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "entry":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    new-instance v6, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$RecorderServiceConnection;-><init>(Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager$1;)V

    iput-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    .line 165
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 166
    const-string v6, "AnswerMemoRecorderManager"

    const-string v7, "startService()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {p1, v3, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 169
    const-string v6, "AnswerMemoRecorderManager"

    const-string v7, "bindService()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "AnswerMemoRecorderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not start service - IllegalArgumentException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_1
    const-string v6, "AnswerMemoRecorderManager"

    const-string v7, "can not bind service"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    :cond_4
    const-string v6, "AnswerMemoRecorderManager"

    const-string v7, "can not start service"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopRecord()V
    .locals 4

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_0

    .line 239
    iget-boolean v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_0

    .line 240
    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "stopRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IAnswerMemoRecorderService;->stopRecord()V

    .line 242
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mCall:Lcom/android/incallui/Call;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecord() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopService()V
    .locals 9

    .prologue
    .line 115
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v3, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.AnswerMemoRecorderService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 117
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    .line 118
    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 120
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_1

    .line 121
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 122
    .local v2, "entry":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 123
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_0

    .line 124
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 131
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "entry":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v6, :cond_2

    .line 132
    const-string v6, "AnswerMemoRecorderManager"

    const-string v7, "stopService()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    invoke-interface {v6, v7}, Lcom/android/phone/IAnswerMemoRecorderService;->unregisterCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    .line 134
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v7}, Lcom/android/incallui/InCallActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 135
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6, v3}, Lcom/android/incallui/InCallActivity;->stopService(Landroid/content/Intent;)Z

    .line 136
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    .line 137
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_2
    :goto_1
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "AnswerMemoRecorderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopService() -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopService(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v3, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.AnswerMemoRecorderService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 186
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    .line 187
    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 189
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_1

    .line 190
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 191
    .local v2, "entry":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 192
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_0

    .line 193
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 200
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "entry":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v6, :cond_2

    .line 201
    const-string v6, "AnswerMemoRecorderManager"

    const-string v7, "stopService()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    iget-object v7, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    invoke-interface {v6, v7}, Lcom/android/phone/IAnswerMemoRecorderService;->unregisterCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    .line 203
    iget-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 204
    invoke-virtual {p1, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 205
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;

    .line 206
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_2
    :goto_1
    return-void

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "AnswerMemoRecorderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopService() -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public toggleRecord()V
    .locals 6

    .prologue
    .line 467
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 468
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 469
    :cond_0
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleRecord(): state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-boolean v1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->mIsRecording:Z

    if-eqz v1, :cond_2

    .line 471
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 472
    const-string v1, "AnswerMemoRecorderManager"

    const-string v2, "in active state ignore under 1000ms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopRecord()V

    goto :goto_0

    .line 478
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method
