.class Lcom/samsung/android/settings/iris/IrisSettings$3;
.super Ljava/lang/Object;
.source "IrisSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "IrisSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateReceived = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "IrisLockSettings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettingMenu"

    const-string/jumbo v4, "AlreadyIn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "RemoveIrisData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get6(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "PreviewScreenMask"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get4(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "RegisterIris"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get7(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "SamsungAccountOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccount"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccountID"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v2, "SamsungAccountOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccount"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccount"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v2, "IrisUnlockOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get5(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x100

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x0

    goto :goto_1

    :cond_16
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceUnlock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_18
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v2, "IrisUnlockOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlock"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlock"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v2, "TurnOnUseIrisWhenScreenOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlockWhenScreenTurnsOn"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlockWhenScreenTurnsOn"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_20
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v2, "TurnOffUseIrisWhenScreenOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlockWhenScreenTurnsOn"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_22
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_23
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlockWhenScreenTurnsOn"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v2, "TipsForUsingIrisRecognition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get10(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettingMenu"

    const-string/jumbo v4, "AlreadyIn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_25
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_26
    const-string/jumbo v2, "Disclaimer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap7(Lcom/samsung/android/settings/iris/IrisSettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettingMenu"

    const-string/jumbo v4, "AlreadyIn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_27
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
