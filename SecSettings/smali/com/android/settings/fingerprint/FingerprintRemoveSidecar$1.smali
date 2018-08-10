.class Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintRemoveSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->-get1(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->-get1(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0, v3}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->-set0(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->-get0(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Ljava/util/Queue;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;-><init>(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->-get1(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->-get1(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->-set0(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->-get0(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
