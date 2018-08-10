.class Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;
.super Landroid/database/ContentObserver;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper$DrawableEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android.wallpaper.settings_systemui_transparency"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-get3(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v1, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-set4(Lcom/android/systemui/ImageWallpaper$DrawableEngine;I)I

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-get2(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v1, v1, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "ImageWallpaper"

    const-string/jumbo v2, "Bitmap reloading... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
