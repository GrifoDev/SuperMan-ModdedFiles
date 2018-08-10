.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$3;
.super Ljava/lang/Object;
.source "KeyguardVideoWallpaperPreviewActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Video file save service connected."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    new-instance v1, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;-><init>(Lcom/android/systemui/wallpaper/video/IVideoFileSaveService;)V

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-set0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Video file save service disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-set0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    return-void
.end method
