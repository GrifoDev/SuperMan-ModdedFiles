.class Lcom/android/settings/fingerprint/RegisterFingerprint$13;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->showDuplicatedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

.field final synthetic val$alertView:Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object p2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->val$alertView:Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get8(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get14(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "showDuplicatedDialog : Called Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get14(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestResume()Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    sget-object v1, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set5(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;)Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get17(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0xcc

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap17(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->val$alertView:Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->clearAnimation()V

    return-void
.end method
