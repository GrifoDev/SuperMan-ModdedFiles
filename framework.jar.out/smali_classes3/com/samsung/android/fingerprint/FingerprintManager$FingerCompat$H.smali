.class Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final MSG_ACQUIRED:I = 0x1

.field public static final MSG_AUTHENTICATION_FAILED:I = 0x3

.field public static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x2

.field public static final MSG_ERROR:I = 0x4


# instance fields
.field final synthetic this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FPMS_COMPAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "FPMS_COMPAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-wrap7(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;II)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->handleAuthenticationSucceeded(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-wrap9(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$H;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-wrap8(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
