.class Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDrmPreparedHandlerDelegate"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnDrmPreparedListener:Landroid/media/MediaPlayer$OnDrmPreparedListener;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method static synthetic -get0(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;)Landroid/media/MediaPlayer$OnDrmPreparedListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mOnDrmPreparedListener:Landroid/media/MediaPlayer$OnDrmPreparedListener;

    return-object v0
.end method

.method constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-object p3, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mOnDrmPreparedListener:Landroid/media/MediaPlayer$OnDrmPreparedListener;

    if-eqz p4, :cond_0

    iput-object p4, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v1, "OnDrmPreparedHandlerDelegate: Unexpected null mEventHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method notifyClient(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;-><init>(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v1, "OnDrmPreparedHandlerDelegate:notifyClient: Unexpected null mHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
