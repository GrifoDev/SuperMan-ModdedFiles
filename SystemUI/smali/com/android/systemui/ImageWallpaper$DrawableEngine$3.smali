.class Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
.method constructor <init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-wrap0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-get1(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v3

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-get0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v3

    if-eq v3, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-get1(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v3

    if-eq v3, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-get0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v3

    if-eq v3, v1, :cond_1

    const-string/jumbo v3, "ImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDisplayChanged deviceHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " deviceWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLastDeviceHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-get0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mLastDeviceWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-get1(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v3, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-set1(Lcom/android/systemui/ImageWallpaper$DrawableEngine;I)I

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v3, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-set0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;I)I

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput-object v7, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput v6, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput v6, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
