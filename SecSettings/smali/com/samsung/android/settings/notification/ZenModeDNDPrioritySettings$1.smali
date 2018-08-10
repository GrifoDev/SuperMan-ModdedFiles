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
    .locals 14

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "DoNotDisturbAllowExceptionsSet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v8

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v10

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v10

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v10}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v8

    :cond_0
    const-string/jumbo v10, "No exception"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x3

    if-eq v8, v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap7(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ILandroid/net/Uri;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v11, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowExceptions"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowException"

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const v13, 0x7f12130f

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptions"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v7/preference/PreferenceScreen;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowExceptions"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowException"

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const v13, 0x7f12130f

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptions"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v10, "Alarms only"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x4

    if-eq v8, v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap7(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ILandroid/net/Uri;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v11, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowExceptions"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowException"

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const v13, 0x7f12222a

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptions"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowExceptions"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowException"

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const v13, 0x7f12222a

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptions"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v10, "Custom"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x2

    if-eq v8, v10, :cond_6

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap7(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ILandroid/net/Uri;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v11, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowExceptions"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowException"

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const v13, 0x7f1210b4

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptions"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowExceptions"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowException"

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const v13, 0x7f1210b4

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptions"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AllowExceptions"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptions"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v10, "Custom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v8

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v10

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v10

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v10}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v8

    :cond_9
    const/4 v10, 0x2

    if-eq v8, v10, :cond_a

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap7(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ILandroid/net/Uri;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v11, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v11}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v7/preference/PreferenceScreen;

    :cond_a
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    new-instance v11, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1$1;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1$1;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;)V

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v10, "RepeatCallersOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "RepeatCallersOn"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_c
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "RepeatCallersOn"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v10, "RepeatCallersOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "RepeatCallersOff"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get12(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "RepeatCallersOff"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v10, "CallsFrom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v10, 0x3

    if-ne v0, v10, :cond_12

    const/4 v0, -0x1

    :cond_12
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/SecDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v0, v10, :cond_15

    const/4 v10, -0x1

    if-eq v0, v10, :cond_13

    const/4 v3, 0x1

    :goto_2
    const/4 v10, -0x1

    if-ne v0, v10, :cond_14

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v10

    iget v2, v10, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    :goto_3
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v11, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const/16 v12, 0x8

    invoke-static {v11, v3, v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ZI)I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v12

    iget v12, v12, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget-object v13, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v13

    iget v13, v13, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v10, v11, v2, v12, v13}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;IIII)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v7/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptionsCallsFrom"

    const-string/jumbo v12, "AlreadySelected"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "CallsFrom"

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :catch_0
    move-exception v7

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptionsCallsFrom"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_14
    move v2, v0

    goto/16 :goto_3

    :cond_15
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptionsCallsFrom"

    const-string/jumbo v12, "AlreadySelected"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "CallsFrom"

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v10, "MessagesFrom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    :try_start_1
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    const/4 v10, 0x3

    if-ne v1, v10, :cond_17

    const/4 v1, -0x1

    :cond_17
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/SecDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v1, v10, :cond_1a

    const/4 v10, -0x1

    if-eq v1, v10, :cond_18

    const/4 v5, 0x1

    :goto_4
    const/4 v10, -0x1

    if-ne v1, v10, :cond_19

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v10

    iget v4, v10, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    :goto_5
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v11, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const/4 v12, 0x4

    invoke-static {v11, v5, v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ZI)I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v12

    iget v12, v12, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v13, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v13

    iget v13, v13, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v10, v11, v12, v4, v13}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;IIII)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v7/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptionsMessagesFrom"

    const-string/jumbo v12, "AlreadySelected"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "MessagesFrom"

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SettingsHome"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :catch_1
    move-exception v7

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptionsMessagesFrom"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SettingsHome"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_19
    move v4, v1

    goto/16 :goto_5

    :cond_1a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DoNotDisturbAllowExceptionsMessagesFrom"

    const-string/jumbo v12, "AlreadySelected"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "MessagesFrom"

    iget-object v12, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v12}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SettingsHome"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v10, "EventTaskAlertsOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EventTaskAlertsOn"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1c
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EventTaskAlertsOn"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1e
    const-string/jumbo v10, "EventTaskAlertsOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_1f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EventTaskAlertsOff"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_20

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EventTaskAlertsOff"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_20
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_21
    const-string/jumbo v10, "RemindersOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_22

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "RemindersOn"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_22
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "RemindersOn"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_23
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_24
    const-string/jumbo v10, "RemindersOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_25

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "RemindersOff"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_25
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get11(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_26

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "RemindersOff"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Custom"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_26
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_27
    const-string/jumbo v10, "PriorityAppNotifications"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    const-string/jumbo v11, "app_notifications"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_28

    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_28
    iget-object v10, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
