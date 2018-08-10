.class Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v3, 0x191

    const/16 v2, 0xcc

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "LiftFingerMessage : run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get8(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap8(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap7(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get32(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set14(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set12(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get18(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap17(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get17(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap17(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    :cond_0
    return-void
.end method
