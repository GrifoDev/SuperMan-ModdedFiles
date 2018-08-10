.class Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;
.super Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;
.source "PlaybackFragmentGlueHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;->this$0:Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;->this$0:Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;

    invoke-static {v0}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->-get0(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->onBufferingStateChanged(Z)V

    return-void
.end method

.method public onError(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;->this$0:Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;

    invoke-static {v0}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->-get0(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->onError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost$1;->this$0:Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;

    invoke-static {v0}, Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;->-get0(Landroid/support/v17/leanback/app/PlaybackFragmentGlueHost;)Landroid/support/v17/leanback/app/PlaybackFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->onVideoSizeChanged(II)V

    return-void
.end method
