.class Lcom/android/settings/fingerprint/RegisterFingerprint$21$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$21;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$21;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$21;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$21;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get2(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$21;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f110389

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$21;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get9(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$21;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f11038d

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
