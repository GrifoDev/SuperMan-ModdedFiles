.class Lcom/android/launcher2/Launcher$2;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    const/4 v3, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWallpaperTilt()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wallpaper_tilt_status"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, v5, Lcom/android/launcher2/Launcher;->mWallpaperTiltSettingEnabled:Z

    const-string v3, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wallpaperTiltSettingChanged ContentObserver {...}::onChange() TiltEnable setting value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / mWallpaperTiltSettingEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    iget-boolean v6, v6, Lcom/android/launcher2/Launcher;->mWallpaperTiltSettingEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    new-instance v5, Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/dtl/launcher/WallpaperScroller;-><init>(Landroid/content/Context;)V

    iput-object v5, v3, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    iget-boolean v3, v3, Lcom/android/launcher2/Launcher;->mWallpaperTiltSettingEnabled:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/launcher2/Launcher;->access$102(Lcom/android/launcher2/Launcher;Landroid/os/IBinder;)Landroid/os/IBinder;

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/dtl/launcher/GyroForShadow;->initialize(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/WallpaperScroller;->start(Z)V

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    iget-object v5, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v5}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/dtl/launcher/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->changeTiltXYRange()V

    goto/16 :goto_0

    :cond_6
    const-string v3, "Launcher"

    const-string v5, "[wallpaperTiltSettingChanged] wallpaperscroller - mWindowToken is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/WallpaperScroller;->resume(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v3}, Lcom/sec/dtl/launcher/WallpaperScroller;->pause()V

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v3}, Lcom/sec/dtl/launcher/WallpaperScroller;->shutdown()V

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v7, v7}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto/16 :goto_0
.end method
