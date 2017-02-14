.class public Lcom/android/launcher2/ar/HotseatMotion;
.super Landroid/transition/PathMotion;
.source "HotseatMotion.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final TYPE_REVERSE_POSITION_LAND:I = 0x2

.field public static final TYPE_REVERSE_POSITION_PORT:I = 0x1

.field public static final TYPE_SAME_POSITION:I


# instance fields
.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mMotionType:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/ar/HotseatMotion;->mMotionType:I

    iput p1, p0, Lcom/android/launcher2/ar/HotseatMotion;->mMotionType:I

    iput p2, p0, Lcom/android/launcher2/ar/HotseatMotion;->mLayoutWidth:I

    iput p3, p0, Lcom/android/launcher2/ar/HotseatMotion;->mLayoutHeight:I

    iput p4, p0, Lcom/android/launcher2/ar/HotseatMotion;->mDisplayWidth:I

    iput p5, p0, Lcom/android/launcher2/ar/HotseatMotion;->mDisplayHeight:I

    return-void
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/android/launcher2/ar/HotseatMotion;->mMotionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/ar/HotseatMotion;->mDisplayWidth:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/launcher2/ar/HotseatMotion;->mLayoutWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1, p4}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, p0, Lcom/android/launcher2/ar/HotseatMotion;->mDisplayWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/android/launcher2/ar/HotseatMotion;->mLayoutWidth:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    invoke-virtual {v0, v1, p4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/android/launcher2/ar/HotseatMotion;->mMotionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/launcher2/ar/HotseatMotion;->mDisplayHeight:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/launcher2/ar/HotseatMotion;->mLayoutHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, p0, Lcom/android/launcher2/ar/HotseatMotion;->mDisplayHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/android/launcher2/ar/HotseatMotion;->mLayoutHeight:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0
.end method
