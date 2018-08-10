.class Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;


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

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-wrap6(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;I)V

    return-void
.end method
