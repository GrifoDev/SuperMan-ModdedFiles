.class Lcom/samsung/android/settings/display/StatusBar$2;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/StatusBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StatusBarRecentOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get4(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get4(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarRecentON"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarRecentON"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "StatusBarRecentOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get4(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get4(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarRecentOFF"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarRecentOFF"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "StatusBarBatteryOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get1(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get1(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarBatteryOn"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarBatteryOn"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "StatusBarBatteryOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get1(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get1(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarBatteryOff"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBarBatteryOff"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "ShowNetworkSpeedOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ShowNetworkSpeedOn"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ShowNetworkSpeedOn"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "ShowNetworkSpeedOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ShowNetworkSpeedOff"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ShowNetworkSpeedOff"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "StatusBar"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/StatusBar$2;->this$0:Lcom/samsung/android/settings/display/StatusBar;

    invoke-static {v1}, Lcom/samsung/android/settings/display/StatusBar;->-get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
