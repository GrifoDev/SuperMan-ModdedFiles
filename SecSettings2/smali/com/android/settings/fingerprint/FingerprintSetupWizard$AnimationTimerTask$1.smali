.class Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask$1;
.super Ljava/lang/Object;
.source "FingerprintSetupWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "FpstFingerprintSetupWizard"

    const-string/jumbo v1, "VI Effect Complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-wrap0(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    return-void
.end method
