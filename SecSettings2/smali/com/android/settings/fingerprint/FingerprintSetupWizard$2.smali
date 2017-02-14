.class Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;
.super Ljava/lang/Object;
.source "FingerprintSetupWizard.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSetupWizard;->resetAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-get7(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;)V

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-set0(Lcom/android/settings/fingerprint/FingerprintSetupWizard;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-get3(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-get4(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method
