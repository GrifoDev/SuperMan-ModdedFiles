.class Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;
.super Ljava/lang/Object;
.source "RecentsKeySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UseRecentsButtonOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "db_split_screen_view_shortcut"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton "

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "UseRecentsButtonOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "db_split_screen_view_shortcut"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton "

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "SplitScreenView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecRadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SplitScreenView"

    const-string/jumbo v3, "Selected"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SplitScreenView"

    const-string/jumbo v3, "Selected"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "SnapWindow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecRadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SnapWindow"

    const-string/jumbo v3, "Selected"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SnapWindow"

    const-string/jumbo v3, "Selected"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
