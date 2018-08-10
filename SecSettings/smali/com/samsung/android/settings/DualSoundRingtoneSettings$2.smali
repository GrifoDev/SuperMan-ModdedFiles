.class Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;
.super Ljava/lang/Object;
.source "DualSoundRingtoneSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DualSoundRingtoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const-string/jumbo v3, "RingtoneMultiSim"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v3

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get3(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/SecPreference;->performClick()V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get4(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/SecPreference;->performClick()V

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "NotificationSounds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v3

    if-eq v3, v1, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
