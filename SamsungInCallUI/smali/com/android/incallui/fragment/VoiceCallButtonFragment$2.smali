.class Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    const-string v4, "VoiceCallButtonFragment"

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

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const-string v0, "VoiceCallButtonFragment"

    const-string v1, "onClick: unexpected"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-static {v3}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_camera(Lcom/android/incallui/Call;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-static {v1, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$200(Lcom/android/incallui/fragment/VoiceCallButtonFragment;I)V

    goto :goto_0

    :sswitch_1
    invoke-static {v3}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_addCall(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "BTNX"

    const-string v3, "Contact"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchContacts()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->recordClicked()V

    goto :goto_0

    :sswitch_4
    invoke-static {v3}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_oneWay(Lcom/android/incallui/Call;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-static {v1, v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$200(Lcom/android/incallui/fragment/VoiceCallButtonFragment;I)V

    goto :goto_0

    :sswitch_5
    invoke-static {v3}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_extraVolume(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->extraVolumeClicked()V

    goto :goto_0

    :sswitch_6
    invoke-static {v3}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_upgradeVT(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-static {v0, v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$300(Lcom/android/incallui/fragment/VoiceCallButtonFragment;Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_7
    invoke-static {v3}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_bluetooth(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->bluetoothClicked()V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$400(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    goto :goto_0

    :sswitch_9
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopDockConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isAudio(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090297

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v3}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_speaker(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto/16 :goto_0

    :sswitch_a
    invoke-static {v3}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_dialpad(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    iget-object v3, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :sswitch_b
    invoke-static {v3}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_mute(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :sswitch_c
    invoke-static {v3}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_endCall(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasOutgoingCall()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$500(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "BTNX"

    const-string v3, "Email"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->access$600(Lcom/android/incallui/fragment/VoiceCallButtonFragment;)V

    goto/16 :goto_0

    :sswitch_e
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchGallery()V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "BTNX"

    const-string v3, "Message"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchMessage()V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "BTNX"

    const-string v3, "Internet"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchInternet()V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "BTNX"

    const-string v3, "Contact"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchContacts()V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "BTNX"

    const-string v3, "Planner"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchPlanner()V

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "BTNX"

    const-string v3, "Memo"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchMemo()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c1 -> :sswitch_b
        0x7f1000c2 -> :sswitch_a
        0x7f1000c3 -> :sswitch_8
        0x7f1002e5 -> :sswitch_2
        0x7f100392 -> :sswitch_4
        0x7f1003e6 -> :sswitch_3
        0x7f1003fe -> :sswitch_6
        0x7f10041e -> :sswitch_c
        0x7f10041f -> :sswitch_9
        0x7f100420 -> :sswitch_7
        0x7f100424 -> :sswitch_1
        0x7f100489 -> :sswitch_0
        0x7f10048c -> :sswitch_5
        0x7f10049e -> :sswitch_d
        0x7f10049f -> :sswitch_e
        0x7f1004a0 -> :sswitch_f
        0x7f1004a1 -> :sswitch_10
        0x7f1004a3 -> :sswitch_11
        0x7f1004a4 -> :sswitch_12
        0x7f1004a5 -> :sswitch_13
    .end sparse-switch
.end method
