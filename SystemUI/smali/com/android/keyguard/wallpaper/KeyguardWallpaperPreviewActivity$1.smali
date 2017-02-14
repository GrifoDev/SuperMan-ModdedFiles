.class Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$1;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$MotionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelegateBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0, p1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-wrap2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;Landroid/graphics/Bitmap;)V

    return-void
.end method
