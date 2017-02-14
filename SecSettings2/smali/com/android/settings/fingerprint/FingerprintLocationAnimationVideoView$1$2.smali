.class Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1$2;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1$2;->this$1:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1$2;->this$1:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationVideoView;->setVisibility(I)V

    :cond_0
    return v1
.end method
