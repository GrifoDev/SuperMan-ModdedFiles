.class Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;
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

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-static {v6, v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-set0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;)Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get3(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get3(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get3(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->onResume()V

    :cond_0
    return-void
.end method
