.class Lcom/android/settings/location/LocationSettings$5;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LocationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateReceived : stateId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-wrap0(Lcom/android/settings/location/LocationSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "LocationOn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get4(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v3}, Lcom/android/settings/location/LocationSettings;->-get7(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onSwitchChanged(Landroid/widget/Switch;Z)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "LocationOff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get4(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v3}, Lcom/android/settings/location/LocationSettings;->-get7(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onSwitchChanged(Landroid/widget/Switch;Z)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "LocatingMethod"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LocatingMethod"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get3(Lcom/android/settings/location/LocationSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v3}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/settings/location/LocationSettings;->setLocationMode(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get3(Lcom/android/settings/location/LocationSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ImproveAccuracy"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get2(Lcom/android/settings/location/LocationSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v3}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/settings/location/LocationSettings;->setLocationMode(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ImproveAccuracy"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get2(Lcom/android/settings/location/LocationSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
