.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, v5}, Landroid/widget/VideoView;->-set4(Landroid/widget/VideoView;I)I

    invoke-virtual {p1, v6, v6}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    :goto_0
    invoke-static {v4, v2}, Landroid/widget/VideoView;->-set0(Landroid/widget/VideoView;Z)Z

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    :goto_1
    invoke-static {v4, v2}, Landroid/widget/VideoView;->-set1(Landroid/widget/VideoView;Z)Z

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    :goto_2
    invoke-static {v4, v2}, Landroid/widget/VideoView;->-set2(Landroid/widget/VideoView;Z)Z

    :goto_3
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get8(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get8(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->-get4(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v2, v3}, Landroid/widget/VideoView;->-set10(Landroid/widget/VideoView;I)I

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v2, v3}, Landroid/widget/VideoView;->-set9(Landroid/widget/VideoView;I)I

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get9(Landroid/widget/VideoView;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_2
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get14(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get13(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->-get14(Landroid/widget/VideoView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->-get13(Landroid/widget/VideoView;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get11(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->-get14(Landroid/widget/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get10(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->-get13(Landroid/widget/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get12(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_8

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    :cond_3
    :goto_4
    return-void

    :cond_4
    move v2, v3

    goto/16 :goto_0

    :cond_5
    move v2, v3

    goto/16 :goto_1

    :cond_6
    move v2, v3

    goto/16 :goto_2

    :cond_7
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v5, v3}, Landroid/widget/VideoView;->-set2(Landroid/widget/VideoView;Z)Z

    move-result v5

    invoke-static {v4, v5}, Landroid/widget/VideoView;->-set1(Landroid/widget/VideoView;Z)Z

    move-result v4

    invoke-static {v2, v4}, Landroid/widget/VideoView;->-set0(Landroid/widget/VideoView;Z)Z

    goto/16 :goto_3

    :cond_8
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_9

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_3

    :cond_9
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/MediaController;->show(I)V

    goto :goto_4

    :cond_a
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get12(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    goto :goto_4
.end method
