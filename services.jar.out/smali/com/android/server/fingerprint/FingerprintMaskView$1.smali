.class Lcom/android/server/fingerprint/FingerprintMaskView$1;
.super Ljava/lang/Object;
.source "FingerprintMaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintMaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintMaskView;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintMaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintMaskView$1;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView$1;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get6(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintServiceMaskView"

    const-string/jumbo v1, "setLCDFlashMode true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView$1;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get6(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/os/PowerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintMaskView$1;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get0(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/os/Binder;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->setLCDFlashMode(ZLandroid/os/IBinder;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView$1;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->-wrap4(Lcom/android/server/fingerprint/FingerprintMaskView;IZ)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView$1;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sys/class/fingerprint/fingerprint/hbm"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "1"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintMaskView;->-wrap0(Lcom/android/server/fingerprint/FingerprintMaskView;Ljava/io/File;[B)Z

    return-void
.end method
