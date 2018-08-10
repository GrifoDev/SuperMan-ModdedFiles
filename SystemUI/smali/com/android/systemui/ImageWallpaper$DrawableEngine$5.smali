.class Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;
.super Landroid/os/AsyncTask;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
