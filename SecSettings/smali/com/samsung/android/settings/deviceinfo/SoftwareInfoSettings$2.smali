.class Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;
.super Ljava/lang/Object;
.source "SoftwareInfoSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AndroidVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "firmware_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "SamsungExperienceVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "samsung_experience_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "BasebandVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "Baseband version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "baseband_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "KernelVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "kernel_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "BuildNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "build_number"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "SEforAndroidStatus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "selinux_status"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "SecuritySoftwareVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "security_sw_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, "KnoxVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "Knox version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_10
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "knox_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OMCPackage"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OMCPackage"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v2, "ServiceProviderSWver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.app.omcagent"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "omc_version"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OMCPackage"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OMCPackage"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v2, "AndroidSecurityPatchLevel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v3, "security_patch"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
