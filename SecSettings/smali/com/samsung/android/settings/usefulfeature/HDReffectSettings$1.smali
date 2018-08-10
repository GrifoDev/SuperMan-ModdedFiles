.class Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;
.super Ljava/lang/Object;
.source "HDReffectSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VideoEnhancerOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "VideoEnhancerOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "VideoEnhancer"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
