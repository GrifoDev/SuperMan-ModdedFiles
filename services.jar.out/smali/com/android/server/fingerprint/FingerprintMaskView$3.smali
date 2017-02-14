.class Lcom/android/server/fingerprint/FingerprintMaskView$3;
.super Ljava/lang/Object;
.source "FingerprintMaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintMaskView;->dismiss()V
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

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintMaskView$3;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView$3;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get5(Lcom/android/server/fingerprint/FingerprintMaskView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView$3;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintMaskView;->-get7(Lcom/android/server/fingerprint/FingerprintMaskView;)Lcom/android/server/fingerprint/FingerprintRotationView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintRotationView;->setVisibility(I)V

    return-void
.end method
