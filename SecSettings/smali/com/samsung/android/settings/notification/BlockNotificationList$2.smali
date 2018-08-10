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

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get10(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get10(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap4(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "AppNotificationsListOn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

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

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_5

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

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "AppNotificationsListOff"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_7

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

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_8

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

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v4, "AppNotificationsListApplicationNameOn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-lez v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_b

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget-object v6, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget v4, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-static {v5, v6, v4, v7}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap5(Lcom/samsung/android/settings/notification/BlockNotificationList;Ljava/lang/String;IZ)V

    invoke-virtual {v3, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

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

    const-string/jumbo v5, "SelectedApp"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    return-void

    :cond_a
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

    const-string/jumbo v5, "SelectedApp"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_c
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

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v4, "AppNotificationsListApplicationNameOff"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_10

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_f

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget-object v6, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget v4, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-static {v5, v6, v4, v8}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap5(Lcom/samsung/android/settings/notification/BlockNotificationList;Ljava/lang/String;IZ)V

    invoke-virtual {v3, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

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

    const-string/jumbo v5, "SelectedApp"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_4
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    return-void

    :cond_e
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

    const-string/jumbo v5, "SelectedApp"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_4

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_10
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

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
