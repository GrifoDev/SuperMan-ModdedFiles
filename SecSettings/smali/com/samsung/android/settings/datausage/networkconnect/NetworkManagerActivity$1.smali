.class Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;
.super Ljava/lang/Object;
.source "NetworkManagerActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "data_warning_whitelist_enable_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-wrap0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Z

    move-result v0

    :goto_0
    const-string/jumbo v3, "AfterWarningOn"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    sput-boolean v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsBixBySwitchOnOff:Z

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AfterWarning"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ManageAppData"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "warning"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "afterwarning_bixby"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/widget/TabHost;

    move-result-object v3

    const-string/jumbo v4, "warning"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AfterWarning"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ManageAppData"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/widget/TabHost;

    move-result-object v3

    const-string/jumbo v4, "warning"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "AfterWarningOff"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    sput-boolean v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsBixBySwitchOnOff:Z

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AfterWarning"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ManageAppData"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "warning"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "afterwarning_bixby"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/widget/TabHost;

    move-result-object v3

    const-string/jumbo v4, "warning"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AfterWarning"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ManageAppData"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/widget/TabHost;

    move-result-object v3

    const-string/jumbo v4, "warning"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v3, "DataSaver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->getDataSaverIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
