.class Landroid/support/v17/leanback/app/PlaybackOverlayFragment$FadeHandler;
.super Landroid/os/Handler;
.source "PlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackOverlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FadeHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    sget v2, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->fade(Z)V

    :cond_0
    return-void
.end method
