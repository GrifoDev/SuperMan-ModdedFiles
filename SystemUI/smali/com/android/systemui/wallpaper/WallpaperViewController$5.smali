.class Lcom/android/systemui/wallpaper/WallpaperViewController$5;
.super Ljava/lang/Object;
.source "WallpaperViewController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/WallpaperViewController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$5;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 5

    const/16 v4, 0x259

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v1, "WallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChanged() called isUpdate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$5;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$5;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, "lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "lock_adaptive_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$5;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/graphics/Bitmap;Z)V

    const-string/jumbo v1, "WallpaperViewController"

    const-string/jumbo v2, "onChanged() adaptive color mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
