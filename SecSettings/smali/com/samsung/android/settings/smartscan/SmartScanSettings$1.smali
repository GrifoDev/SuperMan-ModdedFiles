.class Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;
.super Ljava/lang/Object;
.source "SmartScanSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SsstSmartScanSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateReceived = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get2(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v0

    const-string/jumbo v4, "IntelligentScanLockSettings"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ISSettingMenu"

    const-string/jumbo v6, "AlreadyIn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v4, "RegisterIntelligentScan"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFaceAndIris"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get5(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFaceAndIris"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "RegisterIntelligentScan"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "RemoveIntelligentScan"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v0, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFaceAndIris"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "RemoveIntelligentScan"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get6(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFaceAndIris"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "TurnOnIntelligentScan"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get4(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get4(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getFaceUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get7(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ISUnlock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get7(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    if-nez v0, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFaceAndIris"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    if-eqz v2, :cond_b

    xor-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_c

    :cond_b
    if-nez v2, :cond_d

    if-eqz v1, :cond_d

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IrisUnlock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ISUnlock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v4, "TurnOffIntelligentScan"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get7(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get7(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ISUnlock"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ISUnlock"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
