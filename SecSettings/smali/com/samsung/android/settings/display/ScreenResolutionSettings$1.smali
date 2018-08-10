.class Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;
.super Ljava/lang/Object;
.source "ScreenResolutionSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenResolutionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ScreenResolutionApply"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v0, -0x1

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " "

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "HD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Object"

    const-string/jumbo v6, "Valid"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v4, "FHD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "WQHD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v4

    if-ne v0, v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Object"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Object"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setProgress(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Object"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Object"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get2(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v4, "ScreenResolutionIncrease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolutionIncrease"

    const-string/jumbo v6, "AlreadyMax"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolutionIncrease"

    const-string/jumbo v6, "AlreadyMax"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    const-string/jumbo v4, "ScreenResolutionSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ScreenResolutionIncrease set progress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setProgress(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get2(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v4, "ScreenResolutionDecrease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v4

    if-gtz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolutionIncrease"

    const-string/jumbo v6, "AlreadyMin"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolutionIncrease"

    const-string/jumbo v6, "AlreadyMin"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ScreenResolution"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    const-string/jumbo v4, "ScreenResolutionSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ScreenResolutionDecrease set progress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setProgress(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get2(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_1
.end method
