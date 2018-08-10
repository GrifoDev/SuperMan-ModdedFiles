.class Lcom/android/settings/location/LocationMode$1;
.super Ljava/lang/Object;
.source "LocationMode.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LocationMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStateReceived : stateId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-wrap0(Lcom/android/settings/location/LocationMode;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "SetLocatingMethod"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "High accuracy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    iget-object v4, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v4}, Lcom/android/settings/location/LocationMode;->-get2(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/LocationRadioButtonPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/location/LocationMode;->onRadioButtonClicked(Lcom/android/settings/location/LocationRadioButtonPreference;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "Battery saving"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    iget-object v4, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v4}, Lcom/android/settings/location/LocationMode;->-get0(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/LocationRadioButtonPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/location/LocationMode;->onRadioButtonClicked(Lcom/android/settings/location/LocationRadioButtonPreference;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v3, "Device only"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    iget-object v4, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v4}, Lcom/android/settings/location/LocationMode;->-get3(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/LocationRadioButtonPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/location/LocationMode;->onRadioButtonClicked(Lcom/android/settings/location/LocationRadioButtonPreference;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "LocatingMethod"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationMode$1;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-static {v3}, Lcom/android/settings/location/LocationMode;->-get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
