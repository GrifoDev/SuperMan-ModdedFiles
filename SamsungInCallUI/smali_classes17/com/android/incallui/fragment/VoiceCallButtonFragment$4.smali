.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;
.super Ljava/lang/Object;
.source "VoiceCallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 378
    .local v1, "id":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 379
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v2, "VoiceCallButtonFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick(View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    sparse-switch v1, :sswitch_data_0

    .line 489
    const-string v2, "VoiceCallButtonFragment"

    const-string v3, "onClick: unexpected"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 382
    :sswitch_0
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_camera(Lcom/android/incallui/Call;)V

    .line 383
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->checkThenModify(I)V
    invoke-static {v2, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$400(Lcom/android/incallui/fragment/VoiceCallButtonFragment;I)V

    goto :goto_0

    .line 386
    :sswitch_1
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_addCall(Lcom/android/incallui/Call;)V

    .line 387
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_0

    .line 390
    :sswitch_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "BTNX"

    const-string v5, "Contact"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchContacts()V

    goto :goto_0

    .line 397
    :sswitch_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->recordClicked()V

    goto :goto_0

    .line 400
    :sswitch_4
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_oneWay(Lcom/android/incallui/Call;)V

    .line 401
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->checkThenModify(I)V
    invoke-static {v2, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$400(Lcom/android/incallui/fragment/VoiceCallButtonFragment;I)V

    goto :goto_0

    .line 404
    :sswitch_5
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_extraVolume(Lcom/android/incallui/Call;)V

    .line 405
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->extraVolumeClicked()V

    goto :goto_0

    .line 408
    :sswitch_6
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_upgradeVT(Lcom/android/incallui/Call;)V

    .line 409
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->switchToVideoCallClicked(Lcom/android/incallui/Call;)V
    invoke-static {v2, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$500(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 412
    :sswitch_7
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_bluetooth(Lcom/android/incallui/Call;)V

    .line 413
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->bluetoothClicked()V

    goto :goto_0

    .line 416
    :sswitch_8
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    .line 417
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->updateHoldButton()V
    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$600(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    goto :goto_0

    .line 420
    :sswitch_9
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_speaker(Lcom/android/incallui/Call;)V

    .line 421
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto :goto_0

    .line 424
    :sswitch_a
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_dialpad(Lcom/android/incallui/Call;)V

    .line 425
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    iget-object v5, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto/16 :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    .line 428
    :sswitch_b
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_mute(Lcom/android/incallui/Call;)V

    .line 429
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto/16 :goto_0

    :cond_1
    move v3, v4

    goto :goto_2

    .line 432
    :sswitch_c
    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_endCall(Lcom/android/incallui/Call;)V

    .line 433
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    if-nez v2, :cond_3

    .line 434
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_3

    .line 435
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasOutgoingCall()Z

    move-result v2

    if-nez v2, :cond_3

    .line 437
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 438
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto/16 :goto_0

    .line 440
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->animateForEndCall()V
    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$700(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    goto/16 :goto_0

    .line 444
    :sswitch_d
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "BTNX"

    const-string v5, "Email"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonFragment;->emailClicked()V
    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$800(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    goto/16 :goto_0

    .line 451
    :sswitch_e
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchGallery()V

    goto/16 :goto_0

    .line 454
    :sswitch_f
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "BTNX"

    const-string v5, "Message"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchMessage()V

    goto/16 :goto_0

    .line 461
    :sswitch_10
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "BTNX"

    const-string v5, "Internet"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchInternet()V

    goto/16 :goto_0

    .line 468
    :sswitch_11
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "BTNX"

    const-string v5, "Contact"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchContacts()V

    goto/16 :goto_0

    .line 475
    :sswitch_12
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "BTNX"

    const-string v5, "Planner"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchPlanner()V

    goto/16 :goto_0

    .line 482
    :sswitch_13
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "BTNX"

    const-string v5, "Memo"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchMemo()V

    goto/16 :goto_0

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100096 -> :sswitch_b
        0x7f100097 -> :sswitch_a
        0x7f100098 -> :sswitch_8
        0x7f10025b -> :sswitch_2
        0x7f1002fa -> :sswitch_4
        0x7f100347 -> :sswitch_3
        0x7f10035e -> :sswitch_6
        0x7f10037c -> :sswitch_c
        0x7f10037d -> :sswitch_9
        0x7f100389 -> :sswitch_1
        0x7f1003f2 -> :sswitch_0
        0x7f1003f5 -> :sswitch_5
        0x7f1003f8 -> :sswitch_7
        0x7f100408 -> :sswitch_d
        0x7f100409 -> :sswitch_e
        0x7f10040a -> :sswitch_f
        0x7f10040b -> :sswitch_10
        0x7f10040d -> :sswitch_11
        0x7f10040e -> :sswitch_12
        0x7f10040f -> :sswitch_13
    .end sparse-switch
.end method
