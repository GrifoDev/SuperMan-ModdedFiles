.class public Lcom/android/incallui/CallButtonPresenter;
.super Lcom/android/incallui/Presenter;

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallCameraManager$Listener;
.implements Lcom/android/incallui/InCallPresenter$CanAddCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallButtonUi;",
        ">;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallCameraManager$Listener;",
        "Lcom/android/incallui/InCallPresenter$CanAddCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;"
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_MUTE_ITEM:Ljava/lang/String; = "com.samsung.accessory.intent.action.ACTION_CHECK_MUTE_ITEM"

.field private static final EVENT_DISPLAY_DIALPAD:I = 0x3e9

.field private static final EVENT_DISPLAY_DIALPAD_DELAY:I = 0x1f4

.field private static final KEY_AUTOMATICALLY_MUTED:Ljava/lang/String; = "incall_key_automatically_muted"

.field private static final KEY_PREVIOUS_MUTE_STATE:Ljava/lang/String; = "incall_key_previous_mute_state"

.field private static final TAG:Ljava/lang/String; = "CallButtonPresenter"


# instance fields
.field private mAutomaticallyMuted:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mHandler:Landroid/os/Handler;

.field private mOldState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mPressedButtonTime:J

.field private mPreviousMuteState:Z

.field private mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    new-instance v0, Lcom/android/incallui/CallButtonPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallButtonPresenter$1;-><init>(Lcom/android/incallui/CallButtonPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private autoRecord(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 10

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonUi;

    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v2, "KillProcess -> "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PREV PHONE STATUS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v8, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_type"

    const v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "auto_call_record_out"

    const v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->toggleRecord()V

    const-string v2, "KillProcess -> "

    const-string v3, "RECORD ACTION IS SENDED."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v2, "KillProcess -> "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PREV PHONE STATUS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v8, v4, :cond_1

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v8, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_type"

    const v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "auto_call_record_in"

    const v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->toggleRecord()V

    const-string v2, "KillProcess -> "

    const-string v3, "RECORD ACTION IS SENDED."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private hasVideoCallCapabilities(Lcom/android/incallui/Call;)Z
    .locals 3

    const/16 v2, 0x200

    const/16 v1, 0x17

    invoke-static {v1}, Lcom/android/contacts/common/compat/SdkVersionOverride;->a(I)I

    move-result v0

    if-lt v0, v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    goto :goto_0
.end method

.method private isDowngradeToAudioSupported(Lcom/android/incallui/Call;)Z
    .locals 1

    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 4

    const/high16 v0, 0x10000000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CallButtonPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateButtonsState(Lcom/android/incallui/Call;)V
    .locals 12

    const-string v0, "updateButtonsState"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v6

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dialer/a/a;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v8

    if-nez v6, :cond_3

    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->hasVideoCallCapabilities(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move v5, v4

    :goto_3
    if-eqz v6, :cond_4

    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->isDowngradeToAudioSupported(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_4
    const/16 v9, 0x40

    invoke-virtual {p1, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v0, v10, v11}, Lcom/android/incallui/CallButtonUi;->showButton(IZ)V

    const/4 v10, 0x4

    invoke-interface {v0, v10, v7}, Lcom/android/incallui/CallButtonUi;->showButton(IZ)V

    const/4 v7, 0x3

    invoke-interface {v0, v7, v1}, Lcom/android/incallui/CallButtonUi;->showButton(IZ)V

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonUi;->setHold(Z)V

    const/4 v1, 0x1

    invoke-interface {v0, v1, v9}, Lcom/android/incallui/CallButtonUi;->showButton(IZ)V

    const/16 v1, 0x8

    invoke-interface {v0, v1, v3}, Lcom/android/incallui/CallButtonUi;->showButton(IZ)V

    const/4 v1, 0x5

    invoke-interface {v0, v1, v5}, Lcom/android/incallui/CallButtonUi;->showButton(IZ)V

    const/4 v1, 0x7

    invoke-interface {v0, v1, v4}, Lcom/android/incallui/CallButtonUi;->showButton(IZ)V

    const/4 v1, 0x6

    invoke-interface {v0, v1, v6}, Lcom/android/incallui/CallButtonUi;->showButton(IZ)V

    const/16 v1, 0xa

    invoke-interface {v0, v1, v6}, Lcom/android/incallui/CallButtonUi;->showButton(IZ)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallButtonUi;->showButton(IZ)V

    const/16 v1, 0x9

    invoke-interface {v0, v1, v8}, Lcom/android/incallui/CallButtonUi;->showButton(IZ)V

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->updateButtonStates()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    move v5, v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private updateNotUpdatingCalls(Lcom/android/incallui/Call;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/incallui/CallList;->addNotUpdatingCall(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private updateRcsElelements(Lcom/android/incallui/Call;)V
    .locals 10

    const/4 v3, 0x1

    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRcsElelements mCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRcsElelements getUi() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v2}, Lcom/android/incallui/CallButtonUi;->getPromotedButtonStub()Landroid/view/ViewStub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v3}, Lcom/android/incallui/CallButtonUi;->getPromotedButton()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v4}, Lcom/android/incallui/CallButtonUi;->getAddCallButton()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v5}, Lcom/android/incallui/CallButtonUi;->getExtraVolumeButton()Landroid/widget/ToggleButton;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v6}, Lcom/android/incallui/CallButtonUi;->getShareButtonStub()Landroid/view/ViewStub;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v7}, Lcom/android/incallui/CallButtonUi;->getShareButton()Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/incallui/secrcs/RcsShareUI;->prepareRcsUiElements(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/view/ViewStub;Landroid/widget/Button;ZLcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->setupRcsCallButtons()V

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->mIsSelfCapable:Z

    if-nez v0, :cond_0

    const-string v0, "RCS Deregistered, Disable Crane Button"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 9

    const/16 v8, 0x9

    const/4 v2, 0x1

    const/16 v7, 0xa

    const/4 v3, 0x0

    const-string v0, "CallButtonPresenter"

    const-string v1, "Updating call UI for call: "

    invoke-static {v0, v1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_11

    iget-boolean v1, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget v5, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget v5, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    :cond_2
    move v4, v1

    move v1, v3

    :goto_2
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_d

    if-eqz p2, :cond_d

    :goto_3
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v8, :cond_3

    move v2, v3

    :cond_3
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v7, :cond_f

    if-nez v4, :cond_4

    if-nez v1, :cond_f

    :cond_4
    move v1, v3

    :goto_4
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "CallButtonPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUi : isAutoAnswered - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v3

    :cond_5
    const-string v2, "emergency_find_lost_phone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v8, :cond_6

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v7, :cond_8

    :cond_6
    invoke-static {v2}, Lcom/android/incallui/util/NameNumberUtils;->isFindServiceNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFindService()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move v1, v3

    :cond_8
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v3

    :cond_9
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v7, :cond_a

    move v1, v3

    :cond_a
    const-string v2, "CallButtonPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- isEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonUi;->setEnabled(Z)V

    if-nez v1, :cond_e

    invoke-interface {v0, v3, v3}, Lcom/android/incallui/CallButtonUi;->displayDialpad(ZZ)V

    goto/16 :goto_0

    :cond_b
    iget-object v5, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v5, :cond_10

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10

    :cond_c
    move v4, v1

    move v1, v3

    goto/16 :goto_2

    :cond_d
    move v2, v3

    goto/16 :goto_3

    :cond_e
    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonUi;->enableMute(Z)V

    goto/16 :goto_0

    :cond_f
    move v1, v2

    goto/16 :goto_4

    :cond_10
    move v4, v1

    move v1, v2

    goto/16 :goto_2

    :cond_11
    move v1, v2

    move v4, v3

    goto/16 :goto_2

    :cond_12
    move-object v4, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public addCallClicked()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->addCall()V

    return-void
.end method

.method public callPlusClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "CallButtonPresenter"

    const-string v1, "callPlusClicked: "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CallButtonPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callPlusClicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeToVideoClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/VideoUtils;->getUnPausedVideoState(I)I

    move-result v1

    or-int/lit8 v1, v1, 0x3

    new-instance v2, Landroid/telecom/VideoProfile;

    invoke-direct {v2, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public changeToVoiceClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0
.end method

.method public endCallClicked()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "CallButtonPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore end call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "ims_callplus"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ims_crane"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->setOutgoingCallPlusFlag(Z)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->hideDialpadForDisconnect()V

    :cond_4
    const-string v1, "CallButtonPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateNotUpdatingCalls(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->setOutgoingCallPlusFlag(Z)V

    goto :goto_1
.end method

.method public getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getCall()Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getSupportedAudio()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public holdClicked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Putting the call on hold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing the call from hold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isApplicationEnabled(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "CallButtonPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isApplicationEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAudio(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeClicked()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    return-void
.end method

.method public muteClicked(Z)V
    .locals 3

    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turning on mute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    const-string v0, "UI"

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->MUTE_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v0}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "muteClicked() sendMuteButtonStatus()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.intent.action.ACTION_CHECK_MUTE_ITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "BUTTON_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->UNMUTE_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v0}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public onActiveCameraSelectionChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonUi;->setCameraSwitched(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAudioMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->setAudio(I)V

    :cond_0
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFullscreenModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->updateFullscreenMode(Z)V

    :cond_0
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "incall_key_automatically_muted"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    const-string v0, "incall_key_previous_mute_state"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "incall_key_automatically_muted"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "incall_key_previous_mute_state"

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSecondaryCallerInfoVisibilityChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 10

    const/16 v9, 0xa

    const/16 v8, 0x9

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_a

    :cond_0
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v1, :cond_1

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    :cond_1
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->updateRcsElelements(Lcom/android/incallui/Call;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_OUTGOING_KEYPAD_BUTTON:Z

    if-eqz v1, :cond_8

    :goto_0
    const-string v1, "agif_calling_service"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowAgifFragment()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0, v6}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    :cond_3
    :goto_1
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CallButtonPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange : isAutoAnswered - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0, v6, v7}, Lcom/android/incallui/CallButtonUi;->displayDialpad(ZZ)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v6, v6}, Lcom/android/incallui/CallButtonUi;->displayDialpad(ZZ)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VCCI"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    iput-object p2, p0, Lcom/android/incallui/CallButtonPresenter;->mOldState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/CallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, p2, v2}, Lcom/android/incallui/CallButtonPresenter;->autoRecord(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    iput-object p2, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    :goto_3
    return-void

    :cond_8
    invoke-interface {v0, v6, v6}, Lcom/android/incallui/CallButtonUi;->displayDialpad(ZZ)V

    goto/16 :goto_0

    :cond_9
    invoke-interface {v0, v7}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    goto :goto_1

    :cond_a
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v1, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_b
    invoke-static {p3, v2, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "CallButtonPresenter"

    const-string v1, "onStateChange - not update because of conference ended"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    const-string v0, "CallButtonPresenter"

    const-string v1, "onStateChange - IncomingRejectedCall or IncomingMissedCall, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->updateRcsElelements(Lcom/android/incallui/Call;)V

    :cond_f
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_11

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/util/InCallUtilsWrapper;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_10

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v8, :cond_10

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v9, :cond_13

    :cond_10
    :goto_5
    const-string v1, "agif_calling_service"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowAgifFragment()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0, v6}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    :cond_11
    :goto_6
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-interface {v0, v6, v6}, Lcom/android/incallui/CallButtonUi;->displayDialpad(ZZ)V

    goto/16 :goto_1

    :cond_12
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1, v2}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v1

    goto :goto_4

    :cond_13
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    :cond_14
    invoke-interface {v0, v7}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    goto :goto_6

    :cond_15
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mOldState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mOldState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, p2, :cond_16

    const-string v1, "CallButtonPresenter"

    const-string v2, "do not update ui visibility when receive incoming state again"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_16
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_18

    if-eqz v0, :cond_17

    invoke-interface {v0, v6, v7}, Lcom/android/incallui/CallButtonUi;->displayDialpad(ZZ)V

    invoke-interface {v0, v6}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    :cond_17
    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto/16 :goto_1

    :cond_18
    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto/16 :goto_1

    :cond_19
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1b

    :cond_1a
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VCCL"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1b
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v9, :cond_1c

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v8, :cond_7

    :cond_1c
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VCCE"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onSupportedAudioMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->setSupportedAudio(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onUiReady(Lcom/android/incallui/CallButtonUi;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CallButtonPresenter"

    const-string v1, "onUiReady()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallCameraManager;->addCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 3

    const-string v0, "CallButtonPresenter"

    const-string v1, "onUiResume"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingOrActive()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUiResume getOutgoingOrActive(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingOrActive()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingOrActive()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateRcsElelements(Lcom/android/incallui/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUiResume getActiveOrBackgroundCall(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateRcsElelements(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public declared-synchronized onUiUnready(Lcom/android/incallui/CallButtonUi;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CallButtonPresenter"

    const-string v1, "onUiUnready()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallCameraManager;->removeCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonUi;)V

    return-void
.end method

.method public pauseVideoClicked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    new-instance v1, Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->setVideoPaused(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    new-instance v1, Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_1
.end method

.method public final processVCCDtmf(C)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing VCC dtmf key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updating display and sending dtmf tone for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/TelecomAdapter;->playDtmfTone(Ljava/lang/String;C)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring dtmf request for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public promotedClicked(Z)V
    .locals 5

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "promotedClicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_2
    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemClock.uptimeMillis(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPressedButtonTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->getBatteryLevel()I

    move-result v0

    if-le v0, v4, :cond_3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->startLiveVideo(Landroid/content/Context;Lcom/android/incallui/Call;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->getBatteryLevel()I

    move-result v0

    if-gt v0, v4, :cond_0

    const-string v0, "CallButtonPresenter"

    const-string v1, " Battery low"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->showBatteryError(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public refreshMuteState()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-eqz v0, :cond_0

    const-string v0, "disable_add_call_mute_hold_during_emergency_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    const-string v0, "CallButtonPresenter"

    const-string v1, "EmergencyCall unmute"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 3

    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending new Audio Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    return-void
.end method

.method public shareClicked(Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareClicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->getBatteryLevel()I

    move-result v0

    if-le v0, v3, :cond_3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->startRcsSharingDialog(Landroid/content/Context;Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_3
    const-string v0, "CallButtonPresenter"

    const-string v1, " Battery low for ISH"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->showISHBatteryError(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public showDialpadClicked(Z)V
    .locals 3

    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show dialpad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/incallui/CallButtonUi;->displayDialpad(ZZ)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const v1, 0x7f100320

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "CallButtonPresenter"

    const-string v2, "bring to front dialpadContainer"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    return-void
.end method

.method public speakerClicked()V
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFolerClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f09025a

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonUi;->setAudio(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public stopVCCDtmf()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    const-string v0, "stopping remote tone"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->stopDtmfTone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public swapClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "CallButtonPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Swapping the call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchCameraClicked(Z)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->isUsingFrontFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public toggleBluetooth()V
    .locals 4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v0, "CallButtonPresenter"

    const-string v1, "toggleBluetooth()..."

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isAliveVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    sget v2, Lcom/android/incallui/wrapper/BluetoothDevicePickerWrapper;->FILTER_TYPE_AUDIO_AG:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CallButtonPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleBluetooth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toggleSpeakerphone()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const-string v0, "CallButtonPresenter"

    const-string v1, "toggling speakerphone not allowed when bluetooth supported."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonUi;->setSupportedAudio(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto :goto_0
.end method
