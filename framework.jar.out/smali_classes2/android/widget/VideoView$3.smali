.class Landroid/widget/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-set4(Landroid/widget/VideoView;I)I

    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-set8(Landroid/widget/VideoView;I)I

    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-get5(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-get5(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->-get4(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-get0(Landroid/widget/VideoView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-get1(Landroid/widget/VideoView;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    return-void
.end method
