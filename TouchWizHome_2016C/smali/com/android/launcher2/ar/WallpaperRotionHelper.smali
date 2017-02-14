.class public Lcom/android/launcher2/ar/WallpaperRotionHelper;
.super Ljava/lang/Object;
.source "WallpaperRotionHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperRotationHelper"

.field private static final WALLPAPER_ROTATE_ACTION:Ljava/lang/String; = "com.sec.android.app.launcher.action.ROTATE_WALLPAPER"

.field private static final WALLPAPER_ROTATION_ENABLE:Ljava/lang/String; = "com.sec.android.app.launcher.action.ROTATE_SET_ANIMATED_WALLPAPER"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEnableRotateCommand(Landroid/content/Context;I)V
    .locals 7

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getmWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "WallpaperRotationHelper"

    const-string v3, "(W)sending sendWallpaperCommand(), WALLPAPER_ROTATION_ENABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.sec.android.app.launcher.action.ROTATE_SET_ANIMATED_WALLPAPER"

    const/4 v6, 0x0

    move v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static sendRotateCommandStart(Landroid/content/Context;II)V
    .locals 7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getmWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    if-eqz v1, :cond_0

    const-string v2, "WallpaperRotationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(X)sending sendWallpaperCommand(), WALLPAPER_ROTATE_ACTION "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.sec.android.app.launcher.action.ROTATE_WALLPAPER"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
