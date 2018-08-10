.class Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
.super Ljava/lang/Object;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderResult"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final success:Z


# direct methods
.method constructor <init>(ZLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->success:Z

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static fail()Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 3

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;)V

    return-object v0
.end method

.method static success(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 2

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;)V

    return-object v0
.end method
