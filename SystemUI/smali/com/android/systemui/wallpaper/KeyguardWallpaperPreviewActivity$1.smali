.class Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-wrap4(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-wrap2(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    return-void
.end method
