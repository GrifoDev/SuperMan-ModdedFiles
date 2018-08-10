.class Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;
.super Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
.source "PlaybackSupportFragmentGlueHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;

    invoke-static {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->-get0(Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->onBufferingStateChanged(Z)V

    return-void
.end method

.method public onError(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;

    invoke-static {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->-get0(Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->onError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost$1;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;

    invoke-static {v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;->-get0(Landroid/support/v17/leanback/app/PlaybackSupportFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->onVideoSizeChanged(II)V

    return-void
.end method
