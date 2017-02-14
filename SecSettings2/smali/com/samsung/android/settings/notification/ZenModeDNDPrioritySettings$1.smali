.class Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;
.super Ljava/lang/Object;
.source "ZenModeDNDPrioritySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DoNotDisturbAllowExceptionsSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "No exception"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2, v7, v6}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ILandroid/net/Uri;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/preference/PreferenceScreen;

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v2, "Alarms only"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2, v8, v6}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ILandroid/net/Uri;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "Custom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const/4 v3, 0x1

    invoke-static {v2, v3, v6}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ILandroid/net/Uri;)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
