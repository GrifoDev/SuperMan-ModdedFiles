.class Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->init()V
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

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-wrap0(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-wrap4(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-wrap2(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    return-void
.end method
