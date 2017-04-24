.class public Lcom/android/systemui/recents/model/TaskStack$DockState;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/systemui/recents/views/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DockState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final RIGHT:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;


# instance fields
.field public final createMode:I

.field private final dockArea:Landroid/graphics/RectF;

.field public final dockSide:I

.field private final expandedTouchDockArea:Landroid/graphics/RectF;

.field private final touchArea:Landroid/graphics/RectF;

.field public final viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x50

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3db851ec    # 0.09f

    invoke-direct {v6, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3db851ec    # 0.09f

    invoke-direct {v7, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3da3d70a    # 0.08f

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3da3d70a    # 0.08f

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f68f5c3    # 0.91f

    invoke-direct {v6, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f68f5c3    # 0.91f

    invoke-direct {v7, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->RIGHT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f6b851f    # 0.92f

    invoke-direct {v6, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f6b851f    # 0.92f

    invoke-direct {v7, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->BOTTOM:Lcom/android/systemui/recents/model/TaskStack$DockState;

    return-void
.end method

.method constructor <init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    iput p2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->createMode:I

    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    const v4, 0x7f0f045c

    const/4 v5, 0x0

    move v1, p3

    move v2, p4

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;-><init>(IIIILcom/android/systemui/recents/model/TaskStack$DockState$ViewState;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iput-object p7, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iput-object p6, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->touchArea:Landroid/graphics/RectF;

    iput-object p8, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->expandedTouchDockArea:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public acceptsDrop(IIIIZ)Z
    .locals 6

    if-eqz p5, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->expandedTouchDockArea:Landroid/graphics/RectF;

    int-to-float v4, p1

    int-to-float v5, p2

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$DockState;->areaContainsPoint(Landroid/graphics/RectF;IIFF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->touchArea:Landroid/graphics/RectF;

    int-to-float v4, p1

    int-to-float v5, p2

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$DockState;->areaContainsPoint(Landroid/graphics/RectF;IIFF)Z

    move-result v0

    goto :goto_0
.end method

.method public areaContainsPoint(Landroid/graphics/RectF;IIFF)Z
    .locals 7

    const/4 v4, 0x0

    iget v5, p1, Landroid/graphics/RectF;->left:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    float-to-int v1, v5

    iget v5, p1, Landroid/graphics/RectF;->top:F

    int-to-float v6, p3

    mul-float/2addr v5, v6

    float-to-int v3, v5

    iget v5, p1, Landroid/graphics/RectF;->right:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    float-to-int v2, v5

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, p3

    mul-float/2addr v5, v6

    float-to-int v0, v5

    int-to-float v5, v1

    cmpl-float v5, p4, v5

    if-ltz v5, :cond_0

    int-to-float v5, v3

    cmpl-float v5, p5, v5

    if-ltz v5, :cond_0

    int-to-float v5, v2

    cmpg-float v5, p4, v5

    if-gtz v5, :cond_0

    int-to-float v5, v0

    cmpg-float v5, p5, v5

    if-gtz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public getDockedBounds(IIILandroid/graphics/Rect;Landroid/content/res/Resources;)Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_0

    :goto_0
    invoke-static {v6, p4, p1, p2, p3}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-object v2

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getDockedTaskStackBounds(Landroid/graphics/Rect;IIILandroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    invoke-virtual {p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7, p5, p2, p3, p4}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    move-object/from16 v2, p8

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v4, 0x0

    :goto_1
    iget v5, p5, Landroid/graphics/Rect;->right:I

    move-object v1, p6

    move-object v2, p1

    move-object/from16 v3, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-object v6

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget v4, p5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public getPreDockedBounds(II)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, p2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->update(Landroid/content/Context;)V

    return-void
.end method
