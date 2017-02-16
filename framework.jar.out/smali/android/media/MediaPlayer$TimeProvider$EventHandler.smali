.class Landroid/media/MediaPlayer$TimeProvider$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer$TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaPlayer$TimeProvider;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/MediaPlayer$TimeProvider;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 5175
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    .line 5176
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5175
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 5181
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 5182
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 5180
    :cond_0
    :goto_0
    return-void

    .line 5184
    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-wrap2(Landroid/media/MediaPlayer$TimeProvider;Z)V

    goto :goto_0

    .line 5187
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-wrap2(Landroid/media/MediaPlayer$TimeProvider;Z)V

    goto :goto_0

    .line 5190
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-wrap1(Landroid/media/MediaPlayer$TimeProvider;)V

    goto :goto_0

    .line 5193
    :pswitch_3
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-wrap0(Landroid/media/MediaPlayer$TimeProvider;)V

    goto :goto_0

    .line 5204
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5205
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 5207
    :pswitch_4
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    invoke-static {v1, v0}, Landroid/media/MediaPlayer$TimeProvider;->-wrap3(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V

    goto :goto_0

    .line 5182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5205
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch
.end method
