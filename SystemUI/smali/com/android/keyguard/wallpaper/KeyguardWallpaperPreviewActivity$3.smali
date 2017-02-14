.class Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$3;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->initPreviewArea()V
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

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$3;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$3;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$3;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-wrap0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-wrap2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;Landroid/graphics/Bitmap;)V

    return-void
.end method
