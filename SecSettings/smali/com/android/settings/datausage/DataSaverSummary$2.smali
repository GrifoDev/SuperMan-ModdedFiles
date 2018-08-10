.class Lcom/android/settings/datausage/DataSaverSummary$2;
.super Ljava/lang/Object;
.source "DataSaverSummary.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


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

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DataSaverOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "DataSaverOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get0(Lcom/android/settings/datausage/DataSaverSummary;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get0(Lcom/android/settings/datausage/DataSaverSummary;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    const-string/jumbo v2, "AllowUnrestrictedDataUsage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get3(Lcom/android/settings/datausage/DataSaverSummary;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataSaver"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    return-void
.end method
