.class Lcom/android/systemui/wallpaper/WallpaperViewController$4;
.super Ljava/lang/Object;
.source "WallpaperViewController.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/WallpaperViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$4;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V
    .locals 2

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "onDelegateBitmapReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController$4;->this$0:Lcom/android/systemui/wallpaper/WallpaperViewController;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/graphics/Bitmap;Z)V

    return-void
.end method
