.class Lcom/android/server/fingerprint/FingerprintMaskView$2;
.super Landroid/view/OrientationEventListener;
.source "FingerprintMaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintMaskView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintMaskView;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintMaskView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintMaskView$2;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintMaskView$2;->this$0:Lcom/android/server/fingerprint/FingerprintMaskView;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintMaskView;->-wrap2(Lcom/android/server/fingerprint/FingerprintMaskView;)V

    return-void
.end method
