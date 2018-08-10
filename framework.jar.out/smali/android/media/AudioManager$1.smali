.class Landroid/media/AudioManager$1;
.super Landroid/media/IAudioFocusDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioFocusDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioFocusChange(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-static {v4, p2}, Landroid/media/AudioManager;->-wrap0(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/media/AudioManager$FocusRequestInfo;->mRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v4}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, v0, Landroid/media/AudioManager$FocusRequestInfo;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-static {v4}, Landroid/media/AudioManager;->-get4(Landroid/media/AudioManager;)Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v5, p1, v5, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, v0, Landroid/media/AudioManager$FocusRequestInfo;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method
