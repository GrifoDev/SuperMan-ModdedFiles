.class Landroid/hardware/fingerprint/FingerprintManager$2;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic val$callback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap1(Landroid/hardware/fingerprint/FingerprintManager;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
