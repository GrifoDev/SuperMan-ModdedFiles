.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$2;
.super Ljava/lang/Object;
.source "KeyguardVideoWallpaperPreviewActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceTextureAvailable() width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get6(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoPlayer;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v1, v2, p2, p3}, Lcom/android/systemui/wallpaper/video/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceInfo(Lcom/android/systemui/wallpaper/video/SurfaceInfo;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-wrap2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSurfaceTextureDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get6(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceInfo(Lcom/android/systemui/wallpaper/video/SurfaceInfo;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
