.class Lcom/android/settings/datausage/DataSaverSummary$3;
.super Landroid/os/Handler;
.source "DataSaverSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSaverSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataSaverSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "DataSaverOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get1(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataSaver"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataSaver"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Restrict background data"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get1(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataSaver"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataSaver"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Restrict background data"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "DataSaverOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get1(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataSaver"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataSaver"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Restrict background data"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get1(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataSaver"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DataSaver"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary$3;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Restrict background data"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
