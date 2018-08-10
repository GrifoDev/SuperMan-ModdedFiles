.class Lcom/samsung/android/settings/nfc/NfcSettings$3;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NfcSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enter NFC settings EM state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "NfcTapAndPaySettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set1(Lcom/samsung/android/settings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set0(Lcom/samsung/android/settings/nfc/NfcSettings;Z)Z

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    const-string/jumbo v5, "nfc_payment_settings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v4, "NfcDefaultNfcSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set1(Lcom/samsung/android/settings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set0(Lcom/samsung/android/settings/nfc/NfcSettings;Z)Z

    return-void

    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.settings.SEC_NFC_ADVANCED_SETTING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "NfcOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v7, :cond_b

    const-string/jumbo v4, "NfcSettings"

    const-string/jumbo v5, "enter NFC settings On"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Nfc"

    const-string/jumbo v6, "TurnedOn"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Nfc"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v4, "NfcOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-eq v4, v7, :cond_e

    const-string/jumbo v4, "NfcSettings"

    const-string/jumbo v5, "enter NFC settings Off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disable()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Nfc"

    const-string/jumbo v6, "TurnedOff"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Nfc"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v4, "NfcAndroidBeamSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    const-string/jumbo v5, "android_beam_settings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v4, "NfcStandardMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v7, :cond_14

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_12
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcStandardMode"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    if-eq v2, v9, :cond_16

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcStandardMode"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_16
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v4, "NfcCardMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v7, :cond_1a

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_18
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcCardMode"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    if-ne v2, v9, :cond_18

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcCardMode"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1b
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1c
    const-string/jumbo v4, "NfcAndroidBeamSettingsOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v7, :cond_1d

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set1(Lcom/samsung/android/settings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set0(Lcom/samsung/android/settings/nfc/NfcSettings;Z)Z

    return-void

    :cond_1d
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v9, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set1(Lcom/samsung/android/settings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set0(Lcom/samsung/android/settings/nfc/NfcSettings;Z)Z

    return-void

    :cond_1e
    const-string/jumbo v4, "NfcAndroidBeamSettingsOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-eq v4, v7, :cond_1f

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v9, :cond_3

    :cond_1f
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "AndroidBeam"

    const-string/jumbo v6, "TurnedOff"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcAndroidBeamSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_20
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
