.class public Lcom/android/server/wm/animation/CurvedTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "CurvedTranslateAnimation.java"


# instance fields
.field private final mKeyframes:Landroid/animation/PathKeyframes;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/animation/CurvedTranslateAnimation;->mKeyframes:Landroid/animation/PathKeyframes;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/animation/CurvedTranslateAnimation;->mKeyframes:Landroid/animation/PathKeyframes;

    invoke-virtual {v1, p1}, Landroid/animation/PathKeyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method
