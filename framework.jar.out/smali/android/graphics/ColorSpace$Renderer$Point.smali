.class Landroid/graphics/ColorSpace$Renderer$Point;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Point"
.end annotation


# instance fields
.field final mColor:I

.field final mColorSpace:Landroid/graphics/ColorSpace;

.field final mRgb:[F


# direct methods
.method constructor <init>(Landroid/graphics/ColorSpace;[FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/ColorSpace$Renderer$Point;->mColorSpace:Landroid/graphics/ColorSpace;

    iput-object p2, p0, Landroid/graphics/ColorSpace$Renderer$Point;->mRgb:[F

    iput p3, p0, Landroid/graphics/ColorSpace$Renderer$Point;->mColor:I

    return-void
.end method
