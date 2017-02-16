.class Lcom/android/keyguard/wallpaper/WallpaperViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "WallpaperViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/WallpaperViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$2;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$2;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->onBootCompleted()V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$2;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->onUserSwitching(I)V

    return-void
.end method
