.class Lcom/android/settings/notification/NotificationAccessSettings$1;
.super Ljava/lang/Object;
.source "NotificationAccessSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAccessSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "NotificationAccessOn"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v6

    instance-of v6, v6, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ApplicationAppName"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string/jumbo v6, "NotificationAccessOff"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v0, v6, :cond_9

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v6

    instance-of v6, v6, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_8

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_8

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_7
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ApplicationAppName"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
