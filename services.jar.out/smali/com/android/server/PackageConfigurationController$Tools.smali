.class public Lcom/android/server/PackageConfigurationController$Tools;
.super Ljava/lang/Object;
.source "PackageConfigurationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageConfigurationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tools"
.end annotation


# static fields
.field private static final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyReducedScreenParamsToInputWindowHandle(Lcom/android/server/input/InputWindowHandle;FFF)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v1, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    sget-object v0, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget-object v0, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->scale(F)V

    iget-object v0, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    float-to-int v1, p2

    float-to-int v3, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->translate(II)V

    iget-object v0, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v1, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v1, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget-object v3, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    sget-object v0, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v3, p0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v5, p0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v6, p0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    sget-object v0, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v1, p2

    float-to-int v3, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    sget-object v0, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    sget-object v0, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    sget-object v0, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    sget-object v0, Lcom/android/server/PackageConfigurationController$Tools;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    iget v0, p0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    return-void
.end method

.method public static applyReducedSideTouchAreaToInputWindowHandle(Lcom/android/server/input/InputWindowHandle;III)V
    .locals 6

    const/4 v2, 0x0

    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sub-int v3, p1, p3

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move v1, p3

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_0
    return-void
.end method
