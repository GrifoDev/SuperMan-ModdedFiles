.class Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;
.super Ljava/lang/Object;
.source "SecLockscreenNotificationApplist.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NotificationsOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get14(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get14(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "NotificationsOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get14(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get14(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "HideContentOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get14(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get8(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get8(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "HideContentOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get14(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get8(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get8(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "NotificationIconsOnlyOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get14(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get9(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get9(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "NotificationIconsOnlyOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get14(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get9(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get9(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "NotificationsOnFromAllApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get14(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get2(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get2(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v1, "NotificationsOffFromAllApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get14(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get2(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get2(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
