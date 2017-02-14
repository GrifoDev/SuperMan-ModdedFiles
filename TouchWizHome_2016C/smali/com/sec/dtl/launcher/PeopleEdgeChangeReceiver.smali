.class public Lcom/sec/dtl/launcher/PeopleEdgeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PeopleEdgeChangeReceiver.java"


# static fields
.field private static final EXTRA_FULL_SCREEN:Ljava/lang/String; = "EXTRA_FULL_SCREEN"

.field public static final INTENT_ACTION_PEOPLE_CHANGED:Ljava/lang/String; = "com.samsung.android.app.peoplestripeservice.CHANGED"

.field private static final TAG:Ljava/lang/String; = "PeopleEdgeChangeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.samsung.android.app.peoplestripeservice.CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWallpaperTilt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher2/Launcher;->mWallpaperTiltSettingEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_FULL_SCREEN"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "PeopleEdgeChangeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "peoplestripeservice changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v1}, Lcom/sec/dtl/launcher/WallpaperScroller;->pause()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/WallpaperScroller;->resume(Z)V

    goto :goto_0

    :cond_3
    const-string v1, "PeopleEdgeChangeReceiver"

    const-string v2, "mTiltWallpaperScroller is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
