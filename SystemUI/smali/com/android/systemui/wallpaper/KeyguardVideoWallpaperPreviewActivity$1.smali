.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;
.super Landroid/os/Handler;
.source "KeyguardVideoWallpaperPreviewActivity.java"


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
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get7(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get7(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/view/TextureView;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
