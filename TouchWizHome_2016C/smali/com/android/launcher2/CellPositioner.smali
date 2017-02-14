.class public Lcom/android/launcher2/CellPositioner;
.super Ljava/lang/Object;
.source "CellPositioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellPositioner$CellAndSpan;,
        Lcom/android/launcher2/CellPositioner$ItemConfiguration;,
        Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;,
        Lcom/android/launcher2/CellPositioner$ViewCluster;
    }
.end annotation


# static fields
.field private static final INVALID_DIRECTION:I = -0x64

.field public static final MODE_DRAG_OVER:I = 0x1

.field public static final MODE_ON_DROP:I = 0x2

.field public static final MODE_SHOW_REORDER_HINT:I = 0x0

.field public static final REORDER_ANIMATION_DURATION_FIRST:I = 0x14a

.field private static final REORDER_ANIMATION_DURATION_SECOND:I = 0xe9

.field private static final REORDER_COMPLETE_DURATION:I = 0xc8

.field private static final REORDER_PREVIEW_MAGNITUDE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "Launcher.CellPositioner"


# instance fields
.field private mCountX:I

.field private mCountY:I

.field private mDirectionVector:[I

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPlacementDirty:Z

.field private final mLayout:Lcom/android/launcher2/CellLayout;

.field mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field mPreviousReorderDirection:[I

.field mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;",
            ">;"
        }
    .end annotation
.end field

.field final mTempLocation:[I

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTmpOccupied:[[Z

.field final mTmpPoint:[I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTmpPoint:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTempLocation:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mReorderAnimators:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mShakeAnimators:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellPositioner;->mItemPlacementDirty:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mIntersectingViews:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mOccupiedRect:Landroid/graphics/Rect;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mDirectionVector:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mPreviousReorderDirection:[I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTempRectStack:Ljava/util/Stack;

    iput-object p1, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    iget v0, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    iget v0, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CellPositioner;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellPositioner;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellPositioner;)Lcom/android/launcher2/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher2/CellPositioner$ItemConfiguration;)Z
    .locals 11

    iget-object v0, p4, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    const/4 v10, 0x0

    iget v1, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher2/CellPositioner;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    iget v1, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v7, 0x0

    check-cast v7, [[Z

    iget-object v8, p0, Lcom/android/launcher2/CellPositioner;->mTempLocation:[I

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/CellPositioner;->findNearestArea(IIII[I[[Z[[Z[I)[I

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    const/4 v10, 0x1

    :cond_0
    iget v1, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    return v10
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellPositioner$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v22, 0x1

    :cond_0
    return v22

    :cond_1
    const/16 v22, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    if-nez v17, :cond_2

    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    sub-int v3, v2, v21

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    sub-int v4, v2, v23

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/CellPositioner;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellPositioner;->mTempLocation:[I

    move-object/from16 v16, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p3

    move-object v15, v7

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher2/CellPositioner;->findNearestArea(IIII[I[[Z[[Z[I)[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v19, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v20, v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    add-int v3, v3, v19

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    add-int v3, v3, v20

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    goto :goto_3

    :cond_6
    const/16 v22, 0x1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    goto :goto_4
.end method

.method private animateChildToPosition(Landroid/view/View;IIIIZ)Z
    .locals 13

    iget-object v11, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v5, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    if-eqz p6, :cond_1

    iget v2, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aget-object v2, v11, v2

    iget v3, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    const/4 v9, 0x0

    aput-boolean v9, v2, v3

    aget-object v2, v11, p2

    const/4 v3, 0x1

    aput-boolean v3, v2, p3

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput p2, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    move/from16 v0, p3

    iput v0, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    invoke-virtual {v10, v4}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v8, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iput v5, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    if-ne v5, v6, :cond_2

    if-ne v7, v8, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v12

    move/from16 v0, p4

    int-to-long v2, v0

    invoke-virtual {v12, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher2/CellPositioner$1;

    move-object v3, p0

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/CellPositioner$1;-><init>(Lcom/android/launcher2/CellPositioner;Lcom/android/launcher2/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/launcher2/CellPositioner$2;

    invoke-direct {v2, p0, v4, p1}, Lcom/android/launcher2/CellPositioner$2;-><init>(Lcom/android/launcher2/CellPositioner;Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v0, p5

    int-to-long v2, v0

    invoke-virtual {v12, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateItemsToSolution(Lcom/android/launcher2/CellPositioner$ItemConfiguration;Landroid/view/View;Z)V
    .locals 15

    iget-object v8, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v12

    const/4 v13, 0x0

    :goto_0
    iget v1, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    if-ge v13, v1, :cond_1

    const/4 v14, 0x0

    :goto_1
    iget v1, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    if-ge v14, v1, :cond_0

    aget-object v1, v8, v13

    const/4 v3, 0x0

    aput-boolean v3, v1, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_4

    invoke-virtual {v12, v13}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    if-eqz v10, :cond_2

    iget v3, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v4, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    const/16 v5, 0xe9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/CellPositioner;->animateChildToPosition(Landroid/view/View;IIIIZ)Z

    iget v4, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    const/4 v9, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanY:I

    const/4 v9, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    :cond_5
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellPositioner$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v1, :cond_2

    aget v0, p3, v1

    aput v2, p3, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellPositioner;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    aput v0, p3, v1

    aget v0, p3, v2

    aput v2, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellPositioner;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aput v0, p3, v2

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    aget v0, p3, v1

    aput v2, p3, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellPositioner;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aput v0, p3, v1

    aget v0, p3, v2

    aput v2, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellPositioner;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aput v0, p3, v2

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellPositioner;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellPositioner;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    aget v0, p3, v1

    aget v3, p3, v2

    aput v3, p3, v1

    aput v0, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellPositioner;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellPositioner;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    aget v0, p3, v1

    aget v3, p3, v2

    aput v3, p3, v1

    aput v0, p3, v2

    goto :goto_1
.end method

.method private beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher2/CellPositioner$ItemConfiguration;Landroid/view/View;I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_3

    invoke-virtual {v13, v14}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p2

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    if-nez p3, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v16, 0x1

    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v11, :cond_0

    if-nez v16, :cond_0

    new-instance v1, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iget v5, v15, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v6, v15, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v7, v11, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v8, v11, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v9, v11, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iget v10, v11, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    move-object/from16 v2, p0

    move/from16 v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;-><init>(Lcom/android/launcher2/CellPositioner;Landroid/view/View;IIIIIII)V

    invoke-virtual {v1}, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->animate()V

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    return-void
.end method

.method private clearOccupiedCells()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    if-ge v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private completeAndClearReorderPreviewAnimations()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    invoke-virtual {v0}, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->completeAnimationImmediately()V

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher2/BaseItem;->setIsBouncingItem(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    div-float v2, p2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    aput v4, p3, v4

    aput v4, p3, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v5

    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher2/CellPositioner$ItemConfiguration;)V
    .locals 11

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_0

    invoke-virtual {v8, v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    new-instance v0, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellPositioner$CellAndSpan;-><init>(Lcom/android/launcher2/CellPositioner;IIII)V

    invoke-virtual {p1, v6, v0}, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher2/CellPositioner$CellAndSpan;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copyOccupiedArray([[Z)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    if-ge v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copySolutionToTempState(Lcom/android/launcher2/CellPositioner$ItemConfiguration;Landroid/view/View;)V
    .locals 15

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    const/4 v12, 0x0

    :goto_0
    iget v1, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    if-ge v12, v1, :cond_1

    const/4 v13, 0x0

    :goto_1
    iget v1, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    if-ge v13, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    aget-object v1, v1, v12

    const/4 v2, 0x0

    aput-boolean v2, v1, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_4

    invoke-virtual {v11, v12}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p2

    if-ne v9, v0, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    if-eqz v8, :cond_2

    iget v1, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iput v1, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v1, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iput v1, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v1, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iput v1, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v1, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    iput v1, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget v2, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v3, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v4, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iget v5, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewX:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanY:I

    iget-object v6, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method private findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Lcom/android/launcher2/CellPositioner$ItemConfiguration;
    .locals 10

    const/4 v1, 0x2

    new-array v8, v1, [I

    const/4 v1, 0x2

    new-array v9, v1, [I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher2/CellPositioner;->findNearestVacantArea(IIIIII[I[I)[I

    const/4 v1, 0x0

    aget v1, v8, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    aget v1, v8, v1

    if-ltz v1, :cond_0

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositioner;->copyCurrentStateToSolution(Lcom/android/launcher2/CellPositioner$ItemConfiguration;)V

    const/4 v1, 0x0

    aget v1, v8, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewX:I

    const/4 v1, 0x1

    aget v1, v8, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewY:I

    const/4 v1, 0x0

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanX:I

    const/4 v1, 0x1

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanY:I

    const/4 v1, 0x1

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->isSolution:Z

    :goto_0
    return-object p8

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->isSolution:Z

    goto :goto_0
.end method

.method private findNearestArea(IIIIIIZ[I[I)[I
    .locals 30

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellPositioner;->lazyInitTempRectStack()V

    if-eqz p8, :cond_1

    move-object/from16 v7, p8

    :goto_0
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    new-instance v6, Landroid/graphics/Rect;

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v21, Ljava/util/Stack;

    invoke-direct/range {v21 .. v21}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_2

    :cond_0
    :goto_1
    return-object v7

    :cond_1
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v7, v0, [I

    goto :goto_0

    :cond_2
    const/16 v24, 0x0

    :goto_2
    add-int/lit8 v26, p4, -0x1

    sub-int v26, v11, v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_1e

    const/16 v22, 0x0

    :goto_3
    add-int/lit8 v26, p3, -0x1

    sub-int v26, v10, v26

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_1d

    const/16 v25, -0x1

    const/16 v23, -0x1

    if-eqz p7, :cond_16

    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v17

    aget-object v26, v26, v27

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_4

    :cond_3
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    :cond_6
    move/from16 v23, p3

    move/from16 v25, p4

    const/16 v18, 0x1

    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_a

    const/4 v13, 0x1

    :goto_7
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_b

    const/16 v16, 0x1

    :goto_8
    if-eqz v13, :cond_7

    if-nez v16, :cond_15

    :cond_7
    if-eqz v18, :cond_e

    if-nez v13, :cond_e

    const/16 v19, 0x0

    :goto_9
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    add-int v26, v22, v23

    add-int/lit8 v27, v10, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v23

    aget-object v26, v26, v27

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_9

    :cond_8
    const/4 v13, 0x1

    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    :cond_a
    const/4 v13, 0x0

    goto :goto_7

    :cond_b
    const/16 v16, 0x0

    goto :goto_8

    :cond_c
    if-nez v13, :cond_d

    add-int/lit8 v23, v23, 0x1

    :cond_d
    :goto_a
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_12

    const/16 v26, 0x1

    :goto_b
    or-int v13, v13, v26

    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_13

    const/16 v26, 0x1

    :goto_c
    or-int v16, v16, v26

    if-nez v18, :cond_14

    const/16 v18, 0x1

    :goto_d
    goto :goto_8

    :cond_e
    if-nez v16, :cond_d

    const/16 v17, 0x0

    :goto_e
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    add-int v26, v24, v25

    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    move-object/from16 v26, v0

    add-int v27, v22, v17

    aget-object v26, v26, v27

    add-int v27, v24, v25

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_10

    :cond_f
    const/16 v16, 0x1

    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    :cond_11
    if-nez v16, :cond_d

    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    :cond_12
    const/16 v26, 0x0

    goto :goto_b

    :cond_13
    const/16 v26, 0x0

    goto :goto_c

    :cond_14
    const/16 v18, 0x0

    goto :goto_d

    :cond_15
    const/16 v18, 0x1

    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_1c

    const/4 v13, 0x1

    :goto_f
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_16

    :cond_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellPositioner;->mTmpPoint:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher2/CellLayout;->cellToCenterPoint(II[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellPositioner;->mTempRectStack:Ljava/util/Stack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    add-int v26, v22, v23

    add-int v27, v24, v25

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v9, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_17
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_18

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_17

    const/4 v9, 0x1

    :cond_18
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v26, 0x0

    aget v26, v8, v26

    sub-int v26, v26, p1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const/16 v28, 0x1

    aget v28, v8, v28

    sub-int v28, v28, p2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    cmpg-double v26, v14, v4

    if-gtz v26, :cond_19

    if-eqz v9, :cond_1a

    :cond_19
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v26

    if-eqz v26, :cond_3

    :cond_1a
    move-wide v4, v14

    const/16 v26, 0x0

    aput v22, v7, v26

    const/16 v26, 0x1

    aput v24, v7, v26

    if-eqz p9, :cond_1b

    const/16 v26, 0x0

    aput v23, p9, v26

    const/16 v26, 0x1

    aput v25, p9, v26

    :cond_1b
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_f

    :cond_1d
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    :cond_1e
    const-wide v26, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v26, v4, v26

    if-nez v26, :cond_1f

    const/16 v26, 0x0

    const/16 v27, -0x1

    aput v27, v7, v26

    const/16 v26, 0x1

    const/16 v27, -0x1

    aput v27, v7, v26

    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher2/CellPositioner;->recycleTempRects(Ljava/util/Stack;)V

    goto/16 :goto_1
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 22

    if-eqz p8, :cond_1

    move-object/from16 v4, p8

    :goto_0
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v2, -0x80000000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    const/16 v17, 0x0

    :goto_1
    add-int/lit8 v18, p4, -0x1

    sub-int v18, v6, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    const/16 v16, 0x0

    :goto_2
    add-int/lit8 v18, p3, -0x1

    sub-int v18, v5, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    const/4 v14, 0x0

    :goto_3
    move/from16 v0, p3

    if-ge v14, v0, :cond_4

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, p4

    if-ge v15, v0, :cond_3

    add-int v18, v16, v14

    aget-object v18, p6, v18

    add-int v19, v17, v15

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_2

    if-eqz p7, :cond_0

    aget-object v18, p7, v14

    aget-boolean v18, v18, v15

    if-eqz v18, :cond_2

    :cond_0
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v4, v0, [I

    goto :goto_0

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    sub-int v18, v16, p1

    move/from16 v0, v18

    int-to-float v11, v0

    sub-int v18, v17, p2

    move/from16 v0, v18

    int-to-float v12, v0

    float-to-double v0, v11

    move-wide/from16 v18, v0

    float-to-double v0, v12

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellPositioner;->mTmpPoint:[I

    const/16 v18, 0x0

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    aput v19, v7, v18

    const/16 v18, 0x1

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    aput v19, v7, v18

    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v7, v19

    mul-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, p5, v19

    const/16 v20, 0x1

    aget v20, v7, v20

    mul-int v19, v19, v20

    add-int v8, v18, v19

    const/4 v13, 0x0

    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    aget v18, p5, v18

    const/16 v19, 0x1

    aget v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/4 v9, 0x1

    :goto_6
    if-nez v9, :cond_5

    if-nez v13, :cond_6

    :cond_5
    invoke-static {v10, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-ltz v18, :cond_7

    :cond_6
    invoke-static {v10, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-nez v18, :cond_0

    if-le v8, v2, :cond_0

    :cond_7
    move v3, v10

    move v2, v8

    const/16 v18, 0x0

    aput v16, v4, v18

    const/16 v18, 0x1

    aput v17, v4, v18

    goto/16 :goto_5

    :cond_8
    const/4 v9, 0x0

    goto :goto_6

    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    :cond_a
    const v18, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v18, v3, v18

    if-nez v18, :cond_b

    const/16 v18, 0x0

    const/16 v19, -0x1

    aput v19, v4, v18

    const/16 v18, 0x1

    const/16 v19, -0x1

    aput v19, v4, v18

    :cond_b
    return-object v4
.end method

.method private findNearestVacantArea(IIIIII[I[I)[I
    .locals 10

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher2/CellPositioner;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellPositioner$ItemConfiguration;)Lcom/android/launcher2/CellPositioner$ItemConfiguration;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/android/launcher2/CellPositioner;->copyCurrentStateToSolution(Lcom/android/launcher2/CellPositioner$ItemConfiguration;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/CellPositioner;->copyOccupiedArray([[Z)V

    const/4 v2, 0x2

    new-array v7, v2, [I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellPositioner;->findNearestArea(IIII[I)[I

    move-result-object v7

    const/16 v19, 0x0

    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v8, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p10

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher2/CellPositioner;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v19

    if-nez v19, :cond_3

    move/from16 v0, p5

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    move/from16 v0, p4

    move/from16 v1, p6

    if-eq v0, v1, :cond_0

    if-eqz p9, :cond_1

    :cond_0
    add-int/lit8 v13, p5, -0x1

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    invoke-direct/range {v8 .. v18}, Lcom/android/launcher2/CellPositioner;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellPositioner$ItemConfiguration;)Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    move-result-object p10

    :goto_0
    return-object p10

    :cond_1
    move/from16 v0, p6

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    add-int/lit8 v14, p6, -0x1

    const/16 v17, 0x1

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    invoke-direct/range {v8 .. v18}, Lcom/android/launcher2/CellPositioner;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellPositioner$ItemConfiguration;)Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    move-result-object p10

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->isSolution:Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->isSolution:Z

    const/4 v2, 0x0

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewX:I

    const/4 v2, 0x1

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewY:I

    move/from16 v0, p5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanX:I

    move/from16 v0, p6

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanY:I

    goto :goto_0
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 20

    const/4 v2, 0x2

    new-array v7, v2, [I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellPositioner;->findNearestArea(IIII[I)[I

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_5

    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getGapX()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 p1, v0

    :goto_0
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getGapY()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v4, p4, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 p2, v0

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositioner;->mIntersectingViews:Ljava/util/ArrayList;

    move-object/from16 v8, p0

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher2/CellPositioner;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    iget v10, v14, Landroid/graphics/Rect;->left:I

    iget v11, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher2/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, v2, p1

    div-int v16, v2, p3

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, v2, p2

    div-int v17, v2, p4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    move/from16 v0, v18

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    :cond_0
    const/16 v16, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    move/from16 v0, v19

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    :cond_2
    const/16 v17, 0x0

    :cond_3
    if-nez v16, :cond_7

    if-nez v17, :cond_7

    const/4 v3, 0x0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    :goto_1
    aput v2, p6, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, p6, v2

    :cond_4
    :goto_2
    return-void

    :cond_5
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getGapX()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 p1, v0

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher2/CellPositioner;->computeDirectionVector(FF[I)V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p6, v3

    mul-int/lit8 v3, v3, -0x1

    aput v3, p6, v2

    goto :goto_2
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    if-eqz p6, :cond_0

    add-int v8, p1, p3

    add-int v9, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Landroid/graphics/Rect;

    add-int v8, p1, p3

    add-int v9, p2, p4

    invoke-direct {v6, p1, p2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p5

    if-ne v1, v0, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v8, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v9, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v10, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v11, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v10, v11

    iget v11, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v12, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v6, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/CellPositioner;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private isItemPlacementDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellPositioner;->mItemPlacementDirty:Z

    return v0
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    iget v2, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellPositioner;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .locals 7

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p5, :cond_0

    move v0, p1

    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    if-ge v0, v2, :cond_0

    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    if-ge v1, v2, :cond_2

    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellPositioner$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    new-instance v11, Lcom/android/launcher2/CellPositioner$ViewCluster;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v11, v0, v1, v2}, Lcom/android/launcher2/CellPositioner$ViewCluster;-><init>(Lcom/android/launcher2/CellPositioner;Ljava/util/ArrayList;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)V

    invoke-virtual {v11}, Lcom/android/launcher2/CellPositioner$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    const/4 v3, 0x0

    aget v3, p3, v3

    if-gez v3, :cond_1

    const/16 v16, 0x0

    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v14, v3, v4

    :goto_0
    if-gtz v14, :cond_4

    const/4 v13, 0x0

    :cond_0
    return v13

    :cond_1
    const/4 v3, 0x0

    aget v3, p3, v3

    if-lez v3, :cond_2

    const/16 v16, 0x2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v12, Landroid/graphics/Rect;->left:I

    sub-int v14, v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    aget v3, p3, v3

    if-gez v3, :cond_3

    const/16 v16, 0x1

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v14, v3, v4

    goto :goto_0

    :cond_3
    const/16 v16, 0x3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int v14, v3, v4

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    iget v4, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    :cond_5
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->save()V

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellPositioner$ViewCluster;->sortConfigurationForEdgePush(I)V

    :goto_2
    if-lez v14, :cond_8

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    iget-object v3, v11, Lcom/android/launcher2/CellPositioner$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p4

    if-eq v15, v0, :cond_6

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/android/launcher2/CellPositioner$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v11, v15}, Lcom/android/launcher2/CellPositioner$ViewCluster;->addView(Landroid/view/View;)V

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    iget v4, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    :cond_7
    add-int/lit8 v14, v14, -0x1

    const/4 v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0, v3}, Lcom/android/launcher2/CellPositioner$ViewCluster;->shift(II)V

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v11}, Lcom/android/launcher2/CellPositioner$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    iget v3, v12, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_9

    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    if-gt v3, v4, :cond_9

    iget v3, v12, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_9

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    if-gt v3, v4, :cond_9

    const/4 v13, 0x1

    :goto_4
    iget-object v3, v11, Lcom/android/launcher2/CellPositioner$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    iget v4, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    goto :goto_5

    :cond_9
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->restore()V

    goto :goto_4
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z
    .locals 13

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    if-eqz v8, :cond_2

    iput p1, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iput p2, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    :cond_2
    new-instance v10, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v10, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object/from16 v0, p6

    if-eq v9, v0, :cond_3

    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;

    iget v3, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v4, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v5, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->x:I

    iget v6, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->y:I

    iget v7, v8, Lcom/android/launcher2/CellPositioner$CellAndSpan;->spanY:I

    add-int/2addr v6, v7

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v10, v11}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p7

    iput-object v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/CellPositioner;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/CellPositioner;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/CellPositioner;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {p0, v12, v3, v0, v1}, Lcom/android/launcher2/CellPositioner;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher2/CellPositioner$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setItemPlacementDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellPositioner;->mItemPlacementDirty:Z

    return-void
.end method

.method private setUseTempCoords(Z)V
    .locals 5

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    iput-boolean p1, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public changeGridSize()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    iget v0, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    iget v0, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner;->reset()V

    return-void
.end method

.method public commitTempPlacement()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    if-ge v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/launcher2/CellPositioner;->mTmpOccupied:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/CellPositioner;->completeAndClearReorderPreviewAnimations()V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/launcher2/CellPositioner;->setItemPlacementDirty(Z)V

    return-void
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 18

    const/4 v15, 0x0

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v16

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(III[I)V

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget v5, v16, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v6

    mul-int v6, v6, p3

    add-int/lit8 v7, p3, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getGapX()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v16, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, p6, v5

    mul-int/lit8 v5, v5, -0x1

    aput v5, p6, v4

    :cond_0
    const/4 v4, 0x0

    aget v5, v16, v4

    const/4 v4, 0x1

    aget v6, v16, v4

    const/4 v13, 0x1

    new-instance v14, Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/launcher2/CellPositioner$ItemConfiguration;-><init>(Lcom/android/launcher2/CellPositioner;)V

    move-object/from16 v4, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p5

    invoke-direct/range {v4 .. v14}, Lcom/android/launcher2/CellPositioner;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellPositioner$ItemConfiguration;)Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    move-result-object v17

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/CellPositioner;->setUseTempCoords(Z)V

    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellPositioner;->copySolutionToTempState(Lcom/android/launcher2/CellPositioner$ItemConfiguration;Landroid/view/View;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/CellPositioner;->setItemPlacementDirty(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/CellPositioner;->animateItemsToSolution(Lcom/android/launcher2/CellPositioner$ItemConfiguration;Landroid/view/View;Z)V

    if-nez p7, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher2/CellPositioner;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher2/CellPositioner$ItemConfiguration;Landroid/view/View;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    :cond_2
    if-eqz p7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellPositioner;->commitTempPlacement()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/CellPositioner;->setUseTempCoords(Z)V

    :cond_3
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    iget-boolean v15, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->isSolution:Z

    :cond_4
    return v15
.end method

.method public findCellForSpan([III)Z
    .locals 9

    const/4 v2, 0x0

    iget v7, p0, Lcom/android/launcher2/CellPositioner;->mCountX:I

    add-int/lit8 v8, p2, -0x1

    sub-int v0, v7, v8

    iget v7, p0, Lcom/android/launcher2/CellPositioner;->mCountY:I

    add-int/lit8 v8, p3, -0x1

    sub-int v1, v7, v8

    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner;->reset()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_5

    if-nez v2, :cond_5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p2, :cond_2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, p3, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    add-int v8, v5, v3

    aget-object v7, v7, v8

    add-int v8, v6, v4

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_0

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const/4 v7, 0x0

    aput v5, p1, v7

    const/4 v7, 0x1

    aput v6, p1, v7

    :cond_3
    const/4 v2, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method findNearestArea(IIII[I)[I
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher2/CellPositioner;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public findNearestVacantArea(IIII[I)[I
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner;->reset()V

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/CellPositioner;->findNearestVacantArea(IIIIII[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getOccupied()[[Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/CellPositioner;->reset()V

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    return-object v0
.end method

.method public isBouncingAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellPositioner;->findNearestArea(IIII[I)[I

    move-result-object p6

    const/4 v0, 0x0

    aget v1, p6, v0

    const/4 v0, 0x1

    aget v2, p6, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher2/CellPositioner;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/CellPositioner;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v1, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method public performReorder(IIIIIILandroid/view/View;[I[II)Z
    .locals 17

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellPositioner;->findNearestArea(IIII[I)[I

    move-result-object p8

    if-nez p9, :cond_0

    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p9, v0

    :cond_0
    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, -0x64

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mDirectionVector:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositioner;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mDirectionVector:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositioner;->mPreviousReorderDirection:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    const/16 v4, -0x64

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    const/16 v4, -0x64

    aput v4, v2, v3

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellPositioner;->mDirectionVector:[I

    const/4 v11, 0x1

    new-instance v12, Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/launcher2/CellPositioner$ItemConfiguration;-><init>(Lcom/android/launcher2/CellPositioner;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v12}, Lcom/android/launcher2/CellPositioner;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellPositioner$ItemConfiguration;)Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    move-result-object v16

    new-instance v10, Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/launcher2/CellPositioner$ItemConfiguration;-><init>(Lcom/android/launcher2/CellPositioner;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/CellPositioner;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher2/CellPositioner$ItemConfiguration;)Lcom/android/launcher2/CellPositioner$ItemConfiguration;

    move-result-object v15

    const/4 v13, 0x0

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->area()I

    move-result v2

    invoke-virtual {v15}, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->area()I

    move-result v3

    if-lt v2, v3, :cond_4

    move-object/from16 v13, v16

    :cond_2
    :goto_1
    if-nez p10, :cond_6

    if-eqz v13, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher2/CellPositioner;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher2/CellPositioner$ItemConfiguration;Landroid/view/View;I)V

    const/4 v2, 0x0

    iget v3, v13, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewX:I

    aput v3, p8, v2

    const/4 v2, 0x1

    iget v3, v13, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewY:I

    aput v3, p8, v2

    const/4 v2, 0x0

    iget v3, v13, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanX:I

    aput v3, p9, v2

    const/4 v2, 0x1

    iget v3, v13, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanY:I

    aput v3, p9, v2

    const/4 v14, 0x1

    :goto_2
    return v14

    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellPositioner;->mDirectionVector:[I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/CellPositioner;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositioner;->mDirectionVector:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositioner;->mDirectionVector:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    goto/16 :goto_0

    :cond_4
    iget-boolean v2, v15, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_2

    move-object v13, v15

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, p9, v5

    aput v6, p9, v4

    aput v6, p8, v3

    aput v6, p8, v2

    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    const/4 v14, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/CellPositioner;->setUseTempCoords(Z)V

    if-eqz v13, :cond_b

    const/4 v2, 0x0

    iget v3, v13, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewX:I

    aput v3, p8, v2

    const/4 v2, 0x1

    iget v3, v13, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewY:I

    aput v3, p8, v2

    const/4 v2, 0x0

    iget v3, v13, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanX:I

    aput v3, p9, v2

    const/4 v2, 0x1

    iget v3, v13, Lcom/android/launcher2/CellPositioner$ItemConfiguration;->dragViewSpanY:I

    aput v3, p9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1}, Lcom/android/launcher2/CellPositioner;->copySolutionToTempState(Lcom/android/launcher2/CellPositioner$ItemConfiguration;Landroid/view/View;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/CellPositioner;->setItemPlacementDirty(Z)V

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_9

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher2/CellPositioner;->animateItemsToSolution(Lcom/android/launcher2/CellPositioner$ItemConfiguration;Landroid/view/View;Z)V

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellPositioner;->commitTempPlacement()V

    :goto_4
    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_7

    if-nez v14, :cond_8

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/CellPositioner;->setUseTempCoords(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher2/CellPositioner;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher2/CellPositioner$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_4

    :cond_b
    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, p9, v5

    aput v6, p9, v4

    aput v6, p8, v3

    aput v6, p8, v2

    goto :goto_4
.end method

.method public prepareChildForDrag(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v1, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method public reset()V
    .locals 12

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/launcher2/CellPositioner;->clearOccupiedCells()V

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_0

    invoke-virtual {v9, v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v1, v11, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v11, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v11, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v11, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/android/launcher2/CellPositioner;->mOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositioner;->markCellsForView(IIII[[ZZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public revertTempState()V
    .locals 11

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher2/CellPositioner;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/launcher2/CellPositioner;->completeAndClearReorderPreviewAnimations()V

    invoke-direct {p0}, Lcom/android/launcher2/CellPositioner;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    invoke-virtual {v7, v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v0, v2, :cond_0

    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0xc8

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellPositioner;->animateChildToPosition(Landroid/view/View;IIIIZ)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v5}, Lcom/android/launcher2/CellPositioner;->setItemPlacementDirty(Z)V

    invoke-direct {p0, v5}, Lcom/android/launcher2/CellPositioner;->setUseTempCoords(Z)V

    :cond_3
    return-void
.end method
