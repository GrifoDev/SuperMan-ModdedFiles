.class public Lcom/android/systemui/wallpaper/video/SurfaceInfo;
.super Ljava/lang/Object;
.source "SurfaceInfo.java"


# instance fields
.field public height:I

.field public surface:Landroid/view/Surface;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->surface:Landroid/view/Surface;

    iput p2, p0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    iput p3, p0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    return-void
.end method
