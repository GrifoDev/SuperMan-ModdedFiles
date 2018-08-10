.class Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDrmInfoHandlerDelegate"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method static synthetic -get0(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;)Landroid/media/MediaPlayer$OnDrmInfoListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    return-object v0
.end method

.method constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-object p3, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    if-eqz p4, :cond_0

    iput-object p4, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method notifyClient(Landroid/media/MediaPlayer$DrmInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;-><init>(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;Landroid/media/MediaPlayer$DrmInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    iget-object v1, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p1}, Landroid/media/MediaPlayer$OnDrmInfoListener;->onDrmInfo(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$DrmInfo;)V

    goto :goto_0
.end method
