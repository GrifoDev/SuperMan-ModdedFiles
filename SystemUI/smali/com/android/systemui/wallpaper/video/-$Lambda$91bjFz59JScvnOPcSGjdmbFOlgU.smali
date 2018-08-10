.class final synthetic Lcom/android/systemui/wallpaper/video/-$Lambda$91bjFz59JScvnOPcSGjdmbFOlgU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/-$Lambda$91bjFz59JScvnOPcSGjdmbFOlgU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->lambda$-com_android_systemui_wallpaper_video_VideoPlayer_1927(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/-$Lambda$91bjFz59JScvnOPcSGjdmbFOlgU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/video/-$Lambda$91bjFz59JScvnOPcSGjdmbFOlgU;->$m$0(Landroid/media/MediaPlayer;)V

    return-void
.end method
