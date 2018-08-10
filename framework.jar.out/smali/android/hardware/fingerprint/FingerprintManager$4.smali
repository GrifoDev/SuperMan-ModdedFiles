.class Landroid/hardware/fingerprint/FingerprintManager$4;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic val$callback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field final synthetic val$fp:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->val$fp:Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->val$fp:Landroid/hardware/fingerprint/Fingerprint;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap1(Landroid/hardware/fingerprint/FingerprintManager;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    return-void
.end method
