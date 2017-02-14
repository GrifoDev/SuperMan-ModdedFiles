.class public Lcom/android/launcher2/CellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "CellLayoutChildren.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;
    }
.end annotation


# static fields
.field private static final ACTIVE_BUFFER:I = 0x2

.field public static final ATOZ_VI_DURATION:I = 0x14d

.field private static final CONTENT_BUFFER:I = 0x2

.field private static final DEBUGGABLE:Z

.field public static final ICON_SHOW_VI_DURATION:I = 0x113

.field private static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# instance fields
.field gridChange:Z

.field private mActiveRange:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mContentEnd:I

.field private mContentStart:I

.field private mCountX:I

.field private mGapX:I

.field private mGapY:I

.field private mHiddenItem:Lcom/android/launcher2/BaseItem;

.field protected mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public mIconShowVI_StartDelay:I

.field private mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollY:I

.field private final mTmpCellXY:[I

.field private mVisibleColCount:I

.field private mVisibleRowCount:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mIconShowVI_StartDelay:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mVisibleRowCount:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mVisibleColCount:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mContentStart:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mContentEnd:I

    iput v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mActiveRange:I

    iput v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mScrollY:I

    new-instance v0, Lcom/android/launcher2/CellLayoutChildren$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutChildren$1;-><init>(Lcom/android/launcher2/CellLayoutChildren;)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mPreviousRectMap:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/android/launcher2/CellLayoutChildren;->gridChange:Z

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->setMotionEventSplittingEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private buildGridChangeAnimationSet(Landroid/view/animation/AnimationSet;Landroid/view/View;IIII)V
    .locals 34

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/BaseItem;

    if-nez v26, :cond_3

    const-wide/16 v24, -0x64

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayoutChildren;->mPreviousRectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayoutChildren;->mPreviousRectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayoutChildren;->mPreviousRectMap:Ljava/util/HashMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/graphics/Rect;

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    aget v8, v17, v6

    const/4 v10, 0x0

    aget v10, v29, v10

    sub-int/2addr v8, v10

    aput v8, v17, v6

    move-object/from16 v0, p2

    instance-of v6, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v6, :cond_0

    move/from16 v0, p5

    int-to-float v6, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p5, v0

    move/from16 v0, p3

    int-to-float v6, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p3, v0

    move/from16 v0, p6

    int-to-float v6, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p6, v0

    move/from16 v0, p4

    int-to-float v6, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p4, v0

    :cond_0
    new-instance v23, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v8, 0x1

    aget v8, v17, v8

    const/4 v10, 0x0

    aget v10, v17, v10

    sub-int v11, p5, p3

    add-int/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v17, v11

    sub-int v12, p6, p4

    add-int/2addr v11, v12

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    instance-of v6, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v6, :cond_4

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v6, v8

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v7, v6, v8

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-float v27, v6, v5

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-float v28, v6, v7

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v33, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v6, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_1
    new-instance v20, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v10, 0x12c

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/CellLayout;

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mRestoredItems:Ljava/util/List;

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v18, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v24, v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v9, v6, v8

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v31, v6, v8

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v32, v6, v8

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v21, v6, v8

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v22, v6, v8

    sub-float v6, v31, v21

    div-float v27, v6, v9

    sub-float v6, v32, v22

    div-float v28, v6, v9

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v4

    move v11, v9

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v33, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v6, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public addItem(ILcom/android/launcher2/BaseItem;Z)Z
    .locals 3

    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a duplicate entry for this item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz p3, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;Z)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a duplicate entry for this item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v3, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_0

    instance-of v3, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "CellLayoutChildren"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addView() adding view to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " child count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    instance-of v3, v1, Lcom/android/launcher2/AllappsIcon;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "CellLayoutChildren"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addView() adding all apps icon to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " child count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public buildAlphaAnimation(Landroid/view/View;JJ)Landroid/view/animation/AlphaAnimation;
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/launcher2/CellLayoutChildren$4;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/CellLayoutChildren$4;-><init>(Lcom/android/launcher2/CellLayoutChildren;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v1, Lcom/android/launcher2/utils/interpolator/SineInOut80;

    invoke-direct {v1}, Lcom/android/launcher2/utils/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p4, p5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher2/ItemViewBuilder;->buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne p1, v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object v1
.end method

.method public buildViews()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to build item views when we already had views."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearAllItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public disableHardwareLayers()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getActiveRange()[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mContentStart:I

    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mVisibleColCount:I

    mul-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mContentEnd:I

    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mVisibleColCount:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mVisibleColCount:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/android/launcher2/AllappsIcon;

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 10

    const/4 v4, 0x0

    if-nez p1, :cond_1

    move-object v3, v4

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcom/android/launcher2/BaseItem;

    if-eqz v5, :cond_2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-wide v6, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v8, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_0
.end method

.method public getChildFromPosition(I)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHiddenItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemAt(II)Lcom/android/launcher2/BaseItem;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public initVisibleRange(II)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mVisibleRowCount:I

    iput p2, p0, Lcom/android/launcher2/CellLayoutChildren;->mVisibleColCount:I

    iget v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mVisibleRowCount:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mActiveRange:I

    return-void
.end method

.method public iterateBaseItems(Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Closure:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator",
            "<TClosure;>;TClosure;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-interface {p1, v0, p2}, Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;->iterate(Lcom/android/launcher2/BaseItem;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    return-void
.end method

.method protected makePreviousRectMap(Landroid/view/View;F)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const/4 v13, 0x2

    new-array v2, v13, [I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    if-nez v7, :cond_0

    const-wide/16 v4, -0x64

    :goto_0
    const/4 v13, 0x0

    aget v13, v2, v13

    int-to-float v9, v13

    const/4 v13, 0x1

    aget v13, v2, v13

    int-to-float v11, v13

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v8, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v6, v13

    const/4 v13, 0x0

    aget v13, v2, v13

    add-int/2addr v13, v8

    int-to-float v10, v13

    const/4 v13, 0x1

    aget v13, v2, v13

    add-int/2addr v13, v6

    int-to-float v12, v13

    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v13, v9

    float-to-int v14, v11

    float-to-int v15, v10

    float-to-int v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v3, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayoutChildren;->mPreviousRectMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    check-cast v7, Lcom/android/launcher2/BaseItem;

    iget-wide v4, v7, Lcom/android/launcher2/BaseItem;->mId:J

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v13, 0x0

    aget v13, v2, v13

    int-to-float v13, v13

    int-to-float v14, v8

    mul-float v14, v14, p2

    add-float v10, v13, v14

    const/4 v13, 0x1

    aget v13, v2, v13

    int-to-float v13, v13

    int-to-float v14, v6

    mul-float v14, v14, p2

    add-float v12, v13, v14

    int-to-float v13, v8

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v14, p2

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v9, v13

    int-to-float v13, v6

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v14, p2

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v11, v13

    int-to-float v13, v8

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v14, p2

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v10, v13

    int-to-float v13, v6

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v14, p2

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    goto :goto_1
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIIII)V

    iget v8, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    iget v7, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    instance-of v1, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v6, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    mul-int/2addr v2, v1

    iget v1, v6, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v3, v6, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    :goto_0
    add-int v12, v2, v1

    iget v1, v6, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    mul-int/2addr v2, v1

    iget v1, v6, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3

    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    iget v3, v6, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    :goto_1
    add-int v11, v2, v1

    iget v1, v6, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v1, v6, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v12, v11}, Lcom/android/launcher2/LauncherAppWidgetHostView;->calculateWidgetSize(Landroid/content/Context;Lcom/android/launcher2/HomeWidgetItem;II)Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v10

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v1, v10}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setResizeScaleResult(Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;)V

    iget v8, v10, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->width:I

    iget v7, v10, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->height:I

    :cond_0
    iput v8, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    iput v7, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 33

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v23

    new-instance v26, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v31

    const/16 v28, 0x0

    :goto_0
    move/from16 v0, v28

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-eq v4, v6, :cond_8

    const/16 v29, 0x0

    sget-boolean v4, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v0, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v27, v0

    instance-of v4, v5, Lcom/android/launcher2/MenuAppIconView;

    if-nez v4, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eq v4, v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/Hotseat;

    if-nez v4, :cond_1

    :cond_0
    instance-of v4, v5, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v4, :cond_9

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v4, v6, :cond_9

    :cond_1
    const/16 v29, 0x1

    :goto_1
    if-eqz v29, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move/from16 v21, v0

    move-object/from16 v0, v30

    iget v10, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v11, v21, v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v12, v10, v4

    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v5, v0, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    sget-boolean v4, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    if-eqz v4, :cond_3

    if-eqz v29, :cond_3

    new-instance v4, Lcom/android/launcher2/CellLayoutChildren$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/launcher2/CellLayoutChildren$2;-><init>(Lcom/android/launcher2/CellLayoutChildren;Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayoutChildren;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v4, :cond_6

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v6, :cond_4

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    sget-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mIsFinishEnterAtoZ:Z

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v6, :cond_6

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    sget-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mIsFinishCancelAtoZ:Z

    if-eqz v4, :cond_6

    :cond_5
    const/16 v24, 0x32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayoutChildren;->mCountX:I

    div-int v4, v28, v4

    add-int/lit8 v4, v4, 0x1

    mul-int v32, v24, v4

    move/from16 v0, v32

    int-to-long v6, v0

    const-wide/16 v8, 0x14d

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayoutChildren;->buildAlphaAnimation(Landroid/view/View;JJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayoutChildren;->gridChange:Z

    if-eqz v4, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v26

    move-object v8, v5

    move/from16 v9, v21

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher2/CellLayoutChildren;->buildGridChangeAnimationSet(Landroid/view/animation/AnimationSet;Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    move-object/from16 v0, v30

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    move-object/from16 v0, v30

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    const-string v15, "android.home.drop"

    const/4 v4, 0x0

    aget v4, v20, v4

    add-int v4, v4, v21

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    div-int/lit8 v6, v6, 0x2

    add-int v16, v4, v6

    const/4 v4, 0x1

    aget v4, v20, v4

    add-int/2addr v4, v10

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    div-int/lit8 v6, v6, 0x2

    add-int v17, v4, v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_8
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v29, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v25

    sget-boolean v4, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v4, :cond_7

    const-string v4, "CellLayoutChildren"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "child layout exception. child tag : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    sget-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mIsFinishEnterAtoZ:Z

    if-eqz v4, :cond_b

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mIsFinishEnterAtoZ:Z

    :cond_b
    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    sget-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mIsFinishCancelAtoZ:Z

    if-eqz v4, :cond_c

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mIsFinishCancelAtoZ:Z

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayoutChildren;->gridChange:Z

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/CellLayoutChildren;->gridChange:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutChildren;->mPreviousRectMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/CellLayout;

    if-eqz v22, :cond_d

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setCrosshairsVisibility(F)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/CellLayout;->invalidate()V

    :cond_d
    new-instance v4, Lcom/android/launcher2/CellLayoutChildren$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher2/CellLayoutChildren$3;-><init>(Lcom/android/launcher2/CellLayoutChildren;Lcom/android/launcher2/CellLayout;Landroid/view/animation/AnimationSet;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayoutChildren;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "CellLayoutChildren cannot accept an UNSPECIFIED MeasureSpec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/CellLayoutChildren;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onViewAddedInCLC(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "CellLayoutChildren"

    const-string v2, "Adding view to CellLayoutChildren without an associated item."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-interface {v2, p1, v1, v0}, Lcom/android/launcher2/ItemViewBuilder;->onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onViewRemovedInCLC(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public removeAllItems()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->clearAllItems()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    return-void
.end method

.method public removeAllItemsInLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->clearAllItems()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViewsInLayout()V

    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;Z)Z

    move-result v0

    return v0
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;Z)Z
    .locals 3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne p1, v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeOldItem(Lcom/android/launcher2/BaseItem;Z)Z
    .locals 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-wide v4, v0, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v6, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    move-object v1, v0

    :cond_1
    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    :cond_0
    return-void
.end method

.method public setCellDimensions(IIIII)V
    .locals 3

    iput p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iput p2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iput p3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iput p4, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    iput p5, p0, Lcom/android/launcher2/CellLayoutChildren;->mCountX:I

    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellDimensions. width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gapX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gapY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", countX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setIconVIStartDelay(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mIconShowVI_StartDelay:I

    return-void
.end method

.method public setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    return-void
.end method

.method public setItemVisibility(Lcom/android/launcher2/BaseItem;I)V
    .locals 2

    if-nez p2, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method public setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V
    .locals 6

    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mCountX:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIIII)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateActiveRange(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mContentStart:I

    iput p2, p0, Lcom/android/launcher2/CellLayoutChildren;->mContentEnd:I

    return-void
.end method

.method public updateChildrenToNewPage(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    instance-of v4, v2, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/android/launcher2/HomeFolderItem;

    check-cast v3, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/HomeFolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    :cond_0
    if-eqz v2, :cond_1

    iput p1, v2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public declared-synchronized updateVisibleRange(II)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iput p2, p0, Lcom/android/launcher2/CellLayoutChildren;->mScrollY:I

    iget v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mScrollY:I

    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    add-int/2addr v5, v6

    div-int v0, v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mVisibleColCount:I

    div-int v2, v4, v5

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mActiveRange:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/android/launcher2/CellLayoutChildren;->updateActiveRange(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
