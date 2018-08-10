.class Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initPreviewArea()V
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

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-get3(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-get7(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-get8(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-get8(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    invoke-static {v7, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-set2(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-get14(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-get8(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-get14(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->-get14(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onResume()V

    :cond_0
    return-void
.end method
