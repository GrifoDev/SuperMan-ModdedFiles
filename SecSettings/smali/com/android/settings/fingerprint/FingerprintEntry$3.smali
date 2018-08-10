.class Lcom/android/settings/fingerprint/FingerprintEntry$3;
.super Ljava/lang/Object;
.source "FingerprintEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEntry;->onPause()V
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->-get1(Lcom/android/settings/fingerprint/FingerprintEntry;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "Fingerprints"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
