.class Lcom/android/systemui/wallpaper/video/VideoPlayer$1;
.super Landroid/os/Handler;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->-get0(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->-wrap0(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->-set0(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    return-void
.end method
