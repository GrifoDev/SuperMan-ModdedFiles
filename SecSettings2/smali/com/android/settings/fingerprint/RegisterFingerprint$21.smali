.class Lcom/android/settings/fingerprint/RegisterFingerprint$21;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get2(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get3(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get9(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$21$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$21$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$21;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get2(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get3(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set12(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$21$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$21$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$21;)V

    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set21(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get17(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get33(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
