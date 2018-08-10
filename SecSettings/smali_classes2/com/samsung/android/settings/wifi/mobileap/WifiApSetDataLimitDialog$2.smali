.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;
.super Ljava/lang/Object;
.source "WifiApSetDataLimitDialog.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "WifiApSetDataLimitDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStateReceived, stateId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "MobileHotspotDataLimitChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "WifiApSetDataLimitDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mEmCallback, param: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SetLimitCapacity"

    const-string/jumbo v5, "Exists"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspotDataLimit"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SetLimitCapacity"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspotDataLimit"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SetLimitCapacity"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspotDataLimitChange"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SetLimitCapacity"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspotDataLimit"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_7
    const-string/jumbo v3, "DisableMobileHotspotDataLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->isApDataLimited()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Mobile hotspot data limit"

    const-string/jumbo v5, "turned on"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DisableMobileHotspotDataLimit"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Mobile hotspot data limit"

    const-string/jumbo v5, "turned on"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspotDataLimit"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
