.class Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0, p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-set1(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Z)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-get5(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-get5(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-get11(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->setHomeSensorEnabled(Z)V

    :cond_0
    return-void
.end method
