.class final Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedContentInteractionStateHandler"
.end annotation


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field private final mScalingThreshold:F

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050015

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScalingThreshold:F

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaling:Z

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->persistScale()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaling:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    const/4 v5, 0x0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    sub-float v6, v0, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScalingThreshold:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    iput-boolean v9, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->mScaling:Z

    return v9

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    mul-float v8, v7, v0

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, v8, v0

    if-lez v0, :cond_3

    cmpl-float v0, v8, v7

    if-lez v0, :cond_3

    const/high16 v1, 0x40a00000    # 5.0f

    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScale(FFFZI)Z

    return v9

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v8, v0

    if-gez v0, :cond_4

    cmpg-float v0, v8, v7

    if-gez v0, :cond_4

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_4
    move v1, v8

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->clear()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegionCenter(FFI)V

    return v2
.end method
