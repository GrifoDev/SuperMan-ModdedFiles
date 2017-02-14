.class Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;
.super Landroid/os/Handler;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dtl/launcher/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiltUpdateHandler"
.end annotation


# static fields
.field private static final MSG_TILT_UPDATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

.field tilt_x_range:F

.field tilt_y_range:F

.field wallpaper_x_range:F

.field wallpaper_y_range:F


# direct methods
.method public constructor <init>(Lcom/sec/dtl/launcher/WallpaperScroller;Landroid/os/Looper;)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput v1, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->wallpaper_x_range:F

    iput v1, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->wallpaper_y_range:F

    iput v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->tilt_x_range:F

    iput v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->tilt_y_range:F

    return-void
.end method

.method static synthetic access$100(Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;FFFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->update(FFFFFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->update(FF)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->setWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->shutdown()V

    return-void
.end method

.method private declared-synchronized setWindowToken(Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    # getter for: Lcom/sec/dtl/launcher/WallpaperScroller;->mThread:Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;
    invoke-static {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->access$600(Lcom/sec/dtl/launcher/WallpaperScroller;)Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    move-result-object v0

    # invokes: Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->setWindowToken(Landroid/os/IBinder;)V
    invoke-static {v0, p1}, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->access$700(Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized update(FF)V
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltValue;

    iget v3, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->tilt_x_range:F

    iget v4, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->tilt_y_range:F

    iget v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->wallpaper_x_range:F

    iget v6, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->wallpaper_y_range:F

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltValue;-><init>(FFFFFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized update(FFFFFF)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iput p3, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->tilt_x_range:F

    iput p4, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->tilt_y_range:F

    iput p5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->wallpaper_x_range:F

    iput p6, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->wallpaper_y_range:F

    new-instance v0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltValue;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltValue;-><init>(FFFFFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/sec/dtl/launcher/WallpaperScroller$TiltValue;

    iget-object v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    # getter for: Lcom/sec/dtl/launcher/WallpaperScroller;->mThread:Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;
    invoke-static {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->access$600(Lcom/sec/dtl/launcher/WallpaperScroller;)Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$TiltUpdateHandler;->this$0:Lcom/sec/dtl/launcher/WallpaperScroller;

    # getter for: Lcom/sec/dtl/launcher/WallpaperScroller;->mThread:Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;
    invoke-static {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->access$600(Lcom/sec/dtl/launcher/WallpaperScroller;)Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    move-result-object v0

    iget v1, v7, Lcom/sec/dtl/launcher/WallpaperScroller$TiltValue;->mX:F

    iget v2, v7, Lcom/sec/dtl/launcher/WallpaperScroller$TiltValue;->mY:F

    iget v3, v7, Lcom/sec/dtl/launcher/WallpaperScroller$TiltValue;->tilt_x_range:F

    iget v4, v7, Lcom/sec/dtl/launcher/WallpaperScroller$TiltValue;->tilt_y_range:F

    iget v5, v7, Lcom/sec/dtl/launcher/WallpaperScroller$TiltValue;->wallpaper_x_range:F

    iget v6, v7, Lcom/sec/dtl/launcher/WallpaperScroller$TiltValue;->wallpaper_y_range:F

    # invokes: Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->update(FFFFFF)V
    invoke-static/range {v0 .. v6}, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->access$800(Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;FFFFFF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
