.class Lcom/samsung/android/settings/SettingsApplication$1;
.super Ljava/lang/Object;
.source "SettingsApplication.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SettingsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SettingsApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SettingsApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "SettingsHome"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v4

    const-string/jumbo v7, "SettingsHome"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "Settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-virtual {v7}, Lcom/samsung/android/settings/SettingsApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/android/settings/Settings;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v7, 0x10008000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/SettingsApplication;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v5, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v5, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v7, v5, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v7, "SVSearch"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "Bixby_SmartView"

    const-string/jumbo v8, "onStateReceived:: SVSearch"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/SettingsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v7

    if-eq v7, v11, :cond_4

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v7

    if-ne v7, v9, :cond_5

    :cond_4
    const-string/jumbo v7, "Bixby_SmartView"

    const-string/jumbo v8, "Smart View already connected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "SmartView"

    const-string/jumbo v8, "Connected"

    const-string/jumbo v9, "yes"

    invoke-virtual {v5, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v7, v5, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "show_dialog_once"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "tag_write_if_success"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "more_actions_knox_state"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "more_actions_package_name"

    const-string/jumbo v8, "com.android.systemui"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "bixbyByRoot"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v7, 0x14800000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-virtual {v7, v2}, Lcom/samsung/android/settings/SettingsApplication;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v7, "SVDisconnect"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "Bixby_SmartView"

    const-string/jumbo v8, "onStateReceived:: SVDisconnect"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/SettingsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v7

    if-eq v7, v11, :cond_7

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v7

    if-ne v7, v9, :cond_8

    :cond_7
    const-string/jumbo v7, "Bixby_SmartView"

    const-string/jumbo v8, "Smart View disconnected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semDisconnectWifiDisplay()V

    new-instance v5, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "SmartView"

    const-string/jumbo v8, "Disconnected"

    const-string/jumbo v9, "no"

    invoke-virtual {v5, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v7, v5, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v7, "Bixby_SmartView"

    const-string/jumbo v8, "Smart View already disconnected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "SmartView"

    const-string/jumbo v8, "Disconnected"

    const-string/jumbo v9, "yes"

    invoke-virtual {v5, v7, v8, v9}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v7, v5, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
