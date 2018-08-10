.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;
.super Landroid/os/Handler;
.source "FullScreenAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string/jumbo v8, "FullScreenAppsOn"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "FullScreenAppsOff"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_2
    const-string/jumbo v8, "FullScreenAppsOn"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "SelectedApp"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "SelectedApp"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_7
    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get4(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v8

    if-ge v2, v8, :cond_e

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get4(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-ne v8, v7, :cond_a

    if-eqz v7, :cond_9

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "State"

    const-string/jumbo v10, "AlreadyON"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "applicationName"

    invoke-virtual {v8, v9, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_4
    return-void

    :cond_9
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "State"

    const-string/jumbo v10, "AlreadyOFF"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "State"

    const-string/jumbo v10, "Available"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_4

    :cond_b
    if-eqz v7, :cond_c

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get4(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "State"

    const-string/jumbo v10, "AlreadyON"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "applicationName"

    invoke-virtual {v8, v9, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4

    :cond_c
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get4(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "State"

    const-string/jumbo v10, "AlreadyOFF"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_e
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "SelectedApp"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "applicationName"

    invoke-virtual {v8, v9, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
