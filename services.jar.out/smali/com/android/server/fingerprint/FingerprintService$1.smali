.class Lcom/android/server/fingerprint/FingerprintService$1;
.super Landroid/os/Handler;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->handleUserSwitching(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap8(Lcom/android/server/fingerprint/FingerprintService;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap2(Lcom/android/server/fingerprint/FingerprintService;II)I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_2
        0x2711 -> :sswitch_1
    .end sparse-switch
.end method
