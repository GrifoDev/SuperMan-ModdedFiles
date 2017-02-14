.class Lcom/samsung/android/settings/notification/BlockNotificationList$2;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap4(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get11(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "AppNotificationsListOn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "AppNotificationsListOff"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "AppNotificationsListApplicationNameOn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-lez v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    return-void

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SelectedApp"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v4, "AppNotificationsListApplicationNameOff"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_e

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_4
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    return-void

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "State"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_4

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_f
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "SelectedApp"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
