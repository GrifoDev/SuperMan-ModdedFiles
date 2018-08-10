.class Lcom/android/settings/fingerprint/FingerprintEntry$2;
.super Ljava/lang/Object;
.source "FingerprintEntry.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FpstFingerprintEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateReceived :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get0(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const-string/jumbo v2, "FingerprintsEntry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get3()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenLockType"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LockscreenAndSecurity"

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get2(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get3()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BiometricsData"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LockscreenAndSecurity"

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BiometricsData"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintsEntry"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    return-void
.end method
