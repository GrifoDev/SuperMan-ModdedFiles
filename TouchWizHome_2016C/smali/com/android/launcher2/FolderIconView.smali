.class public Lcom/android/launcher2/FolderIconView;
.super Lcom/android/launcher2/AppIconView;
.source "FolderIconView.java"

# interfaces
.implements Lcom/android/launcher2/DragReceivable;
.implements Lcom/android/launcher2/HomeFolderItem$FolderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;
    }
.end annotation


# static fields
.field public static final FOLDER_ICON_CNT:I = 0x6

.field private static final FOLDER_OPEN_START_DURATION:J = 0x5dcL

.field public static final HOVER_FOLDER_ICON_CNT:I = 0x7

.field private static final HOVER_REMAIN:J = 0x7d0L

.field private static final HOVER_START_DURATION:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "Launcher.FolderIconView"

.field private static mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;


# instance fields
.field private Hover_Refresh_cnt:I

.field public isFolderSmall:Z

.field final mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mCustomIconSize:I

.field private mDimAmount:F

.field private mDraggedIconId:J

.field private mDraggingOver:Z

.field private mDrawPlate:Z

.field private mDrawText:Z

.field public mFolderAnimate:Z

.field private final mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

.field private mFolderDragOverStartTime:J

.field private mFolderHoveringStartTime:J

.field private mFolderItem:Lcom/android/launcher2/FolderItem;

.field private mFromThisFolder:Z

.field final mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mInFolderCloseAnim:Z

.field private mLastAttachedFolder:Lcom/android/launcher2/Folder;

.field private mOnEnterDelayed:Ljava/lang/Runnable;

.field protected mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

.field protected mPlateBitmap:Landroid/graphics/Bitmap;

.field private mScaledIconBitmap:Landroid/graphics/Bitmap;

.field private mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

.field private mTmpPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    invoke-direct {v0, v6}, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;-><init>(Lcom/android/launcher2/FolderIconView$1;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iput-wide v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    iput-wide v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderDragOverStartTime:J

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    iput v4, p0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v2, 0xc8

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v2, 0x1f4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/FolderIconView;->mCustomIconSize:I

    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mInFolderCloseAnim:Z

    iput-boolean v5, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    iput-boolean v5, p0, Lcom/android/launcher2/FolderIconView;->mDrawText:Z

    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    new-instance v0, Lcom/android/launcher2/FolderIconView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderIconView$2;-><init>(Lcom/android/launcher2/FolderIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mOnEnterDelayed:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimate:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mTmpPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/android/launcher2/FolderAnimator;

    invoke-direct {v0, v6, p0}, Lcom/android/launcher2/FolderAnimator;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    return-void
.end method

.method private acceptDrop(Lcom/android/launcher2/DragState;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v2

    if-eq v2, p0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderMerge()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderIconView;)Lcom/android/launcher2/FolderAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderIconView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    return v0
.end method

.method private cleanupFolderAnims()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->destroyDrawingCache()V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    instance-of v1, v0, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher2/FolderIconView;->mDrawShadow:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mDrawShadow:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/launcher2/FolderIconView;->mDrawShadow:Z

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    goto :goto_1
.end method

.method private deleteScaledIconBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mScaledIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mScaledIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mScaledIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mScaledIconBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private drawPlate(Landroid/graphics/Canvas;Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/launcher2/ScalarAnimator;->get(Z)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/FolderIconView;->mTmpPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    invoke-static {v13}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v13

    invoke-static {v13}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lcom/android/launcher2/FolderIconView;->updateScaledPlateBitmap(Lcom/android/launcher2/FolderItem;Landroid/graphics/Bitmap;)V

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget-object v13, v13, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget-object v13, v13, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget-object v13, v13, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v4

    const v14, 0x3fcccccd    # 1.6f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v1, v13, v14

    int-to-float v13, v3

    const v14, 0x3fcccccd    # 1.6f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v2, v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3e4ccccd    # 0.2f

    mul-float/2addr v14, v7

    add-float v11, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v11, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget-object v13, v13, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    int-to-float v14, v4

    const v15, 0x3e99999a    # 0.3f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    int-to-float v14, v14

    int-to-float v15, v4

    const v16, 0x3e99999a    # 0.3f

    mul-float v15, v15, v16

    float-to-int v15, v15

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_0

    :cond_2
    if-eq v8, v4, :cond_3

    sub-int v13, v8, v4

    div-int/lit8 v9, v13, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget-object v13, v13, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    int-to-float v14, v9

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget-object v13, v13, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private draw_(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v4, "FolderIconView.draw_"

    invoke-static {v4}, Lcom/android/launcher2/LauncherFeature;->beginSystrace(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mInFolderCloseAnim:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v4

    invoke-static {v4}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v2, v4

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/launcher2/FolderIconView;->drawPlate(Landroid/graphics/Canvas;Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mDrawText:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mInFolderCloseAnim:Z

    invoke-virtual {p0, p1, v4}, Lcom/android/launcher2/FolderIconView;->drawIconOrText(Landroid/graphics/Canvas;Z)V

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->endSystrace()V

    goto :goto_0
.end method

.method private droppedInOurFolder(Lcom/android/launcher2/DragState;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getReceiver()Lcom/android/launcher2/DragReceivable;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v3, v1, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v4, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getMaskedIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/android/launcher2/FolderIconHelper;->needMaskedIcon(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, p1, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p2, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p2, v2

    goto :goto_0
.end method

.method private hideUninstallIconForLockFolder()V
    .locals 4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    instance-of v2, v2, Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderLock;->isLockedFolderItem(Lcom/android/launcher2/FolderItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuAppIconView;

    move-object v1, v2

    check-cast v1, Lcom/android/launcher2/MenuAppIconView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppIconView;->setUninstallIconVisibility(I)V

    :cond_0
    return-void
.end method

.method private isDraggingOverFolderViewInHome(Lcom/android/launcher2/BaseItem;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_1

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_1

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v4

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    move v3, v2

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isEmpty()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetPlateIfNeeded()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimate:Z

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto :goto_0
.end method

.method private setFolderItem(Lcom/android/launcher2/FolderItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mIsFolderListPanel:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isFolderIconSmall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->isFolderSmall:Z

    :cond_2
    return-void
.end method

.method public static setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0

    sput-object p0, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-void
.end method

.method private updateScaledPlateBitmap(Lcom/android/launcher2/FolderItem;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getTargetIconSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mIconScaleChanging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->isFolderSmall:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mIsFolderListPanel:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->openFolderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, v0, :cond_4

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mIconScaleChanging:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget v2, p0, Lcom/android/launcher2/FolderIconView;->mPrevIconSize:I

    invoke-static {p1, p2, v2}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderScaledBitmap(Lcom/android/launcher2/FolderItem;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/android/launcher2/FolderIconView;->mCustomIconSize:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iget v2, p0, Lcom/android/launcher2/FolderIconView;->mCustomIconSize:I

    invoke-static {p1, p2, v2}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderScaledBitmap(Lcom/android/launcher2/FolderItem;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    invoke-static {p1, p2}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderScaledBitmap(Lcom/android/launcher2/FolderItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->scaledPlateBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mScaledPlateBitmap:Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;

    iput-object p2, v1, Lcom/android/launcher2/FolderIconView$ScaledPlateBitmap;->openFolderBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2, p1}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v2, v0}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;ZI)V

    return-void
.end method

.method public applyBaseItem(Lcom/android/launcher2/BaseItem;ZI)V
    .locals 11

    const/4 v10, 0x1

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :cond_0
    const/4 v2, 0x0

    iget v6, p0, Lcom/android/launcher2/FolderIconView;->mCustomIconSize:I

    if-lez v6, :cond_1

    iget p3, p0, Lcom/android/launcher2/FolderIconView;->mCustomIconSize:I

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getTargetIconSize()I

    move-result v0

    if-eqz p2, :cond_2

    iput-boolean v10, p0, Lcom/android/launcher2/FolderIconView;->mIsFolderListPanel:Z

    move v0, v4

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/launcher2/FolderIconView;->mIconDestination:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_3

    if-eq v4, v0, :cond_3

    iget v6, p0, Lcom/android/launcher2/FolderIconView;->mCustomIconSize:I

    if-gez v6, :cond_4

    if-gez p3, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    iget-object v6, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v7, :cond_5

    iget-object v6, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_7

    :cond_5
    move-object v6, p1

    check-cast v6, Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v6}, Lcom/android/launcher2/FolderIconView;->setFolderItem(Lcom/android/launcher2/FolderItem;)V

    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->isRequiredToRedraw()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    iget-object v8, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v8}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v8

    invoke-static {v6, v3, v7, v8}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/launcher2/FolderItem;->setToRedrawIcons(Z)V

    :cond_7
    iget v6, p1, Lcom/android/launcher2/BaseItem;->mColor:I

    invoke-static {v6}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v3, v10}, Lcom/android/launcher2/FolderIconView;->getMaskedIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->deleteScaledIconBitmap()V

    if-gez p3, :cond_9

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p1, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    new-instance v6, Lcom/android/launcher2/FolderIconView$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/FolderIconView$1;-><init>(Lcom/android/launcher2/FolderIconView;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/launcher2/FolderIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    iput-boolean v10, p1, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v6

    invoke-static {v6}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/launcher2/FolderIconView;->updateScaledPlateBitmap(Lcom/android/launcher2/FolderItem;Landroid/graphics/Bitmap;)V

    return-void

    :cond_9
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;I)V

    iput p3, p0, Lcom/android/launcher2/FolderIconView;->mCustomIconSize:I

    goto :goto_0
.end method

.method public cancelFolderAnims()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->cleanupFolderAnims()V

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public checkNsecOpen(Lcom/android/launcher2/DragState;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderDragOverStartTime:J

    sub-long v10, v8, v2

    const-wide/16 v2, 0x5dc

    cmp-long v1, v10, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v1, v7, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/FolderItem;

    if-nez v1, :cond_0

    const-string v1, "FolderIconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder N sec entered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "FNSO"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "FNSO"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportIconShadow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->isEnableShadow()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawShadow(Landroid/graphics/Canvas;)V

    :cond_1
    instance-of v1, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->isEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/FolderIconView;->setDimmed(ZZ)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconView;->draw_(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public drawPlateWithFolderScale(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v5

    invoke-static {v5}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v5, p0, Lcom/android/launcher2/FolderIconView;->isFolderSmall:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/FolderIconView;->mIsFolderListPanel:Z

    if-nez v5, :cond_0

    invoke-static {v0, v2}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderScaledBitmap(Lcom/android/launcher2/FolderItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v4, v5, v6

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/android/launcher2/FolderIconView;->drawPlate(Landroid/graphics/Canvas;Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawShadow(Landroid/graphics/Canvas;)V
    .locals 8

    const v7, 0x7f0a024c

    const v6, 0x7f0a0138

    const v5, 0x7f0a0130

    iget-boolean v3, p0, Lcom/android/launcher2/FolderIconView;->mDrawShadow:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->isEnableShadow()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/launcher2/FolderIconView;->mIconDestination:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Lcom/android/launcher2/FolderIconView;->mIconDestination:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/launcher2/Utilities;->isMobileKeyboardMode()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a022d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/FolderIconView;->mIconDestination:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/FolderIconView$3;->$SwitchMap$com$android$launcher2$LauncherApplication$HomeGridSize:[I

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0255

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0256

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public fromThisFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    return v0
.end method

.method public getContainerType()J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDragIcon()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderIconWithPlate()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFolderIconWithPlate()Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v0}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconWithPlate(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getFolderItem()Lcom/android/launcher2/FolderItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method public getFolderParent()Landroid/view/ViewParent;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getIconSize()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mScaledIconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->getCreateScaledBitmapWithAppIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mScaledIconBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mScaledIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getOriginalBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentDragging()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    return v0
.end method

.method public onAdd(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/AppIconView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragState;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isTransitioningRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/FolderIconView;->mOnEnterDelayed:Ljava/lang/Runnable;

    const-wide/16 v4, 0x14

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher2/FolderIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v5, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimate:Z

    iget-object v3, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->resetPreFolderBg()V

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutMoveApps;

    if-nez v3, :cond_1

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/FolderItem;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isAlphabeticalGrid()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "FolderIconView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder N sec entered : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v3, :cond_6

    instance-of v3, v1, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v3, :cond_1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIconView;->checkNsecOpen(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 40

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v16, 0x0

    :cond_0
    :goto_0
    return v16

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v5, :cond_2

    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v37

    move-object/from16 v0, v37

    instance-of v5, v0, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v5, :cond_3

    invoke-interface/range {v37 .. v37}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v5, v0, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v5, :cond_3

    check-cast v25, Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/DragState;

    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/HomePendingItem;

    if-eqz v5, :cond_5

    const/16 v16, 0x0

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/FolderIconView;->acceptDrop(Lcom/android/launcher2/DragState;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v5, :cond_6

    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    goto/16 :goto_0

    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/launcher2/FolderIconView;->mFolderDragOverStartTime:J

    const/16 v16, 0x0

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v5, v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v5

    if-nez v5, :cond_b

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher2/FolderIconView;->isDraggingOverFolderViewInHome(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getReorderStatus()Lcom/android/launcher2/CellLayout$ReorderStatus;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/CellLayout$ReorderStatus;->REORDER_NEED_FIND_DROP_POSITION:Lcom/android/launcher2/CellLayout$ReorderStatus;

    if-eq v5, v6, :cond_c

    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/AppIconView;->onDragEvent(Landroid/view/DragEvent;)Z

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v22

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v39, Lcom/android/launcher2/BackupItemsRecords;

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v5, v4, v1}, Lcom/android/launcher2/BackupItemsRecords;-><init>(Landroid/view/View;Lcom/android/launcher2/DragState;Lcom/android/launcher2/FolderIconView;)V

    const/16 v33, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v24

    const/16 v31, 0x0

    move-object/from16 v0, v20

    instance-of v5, v0, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_10

    const/16 v30, 0x1

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isLockedApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/FolderLock;->isTempUnlockedFolder(Lcom/android/launcher2/FolderItem;Z)Z

    move-result v34

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_d

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "home_only_locked_items"

    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v10, v11}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v31, 0x1

    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v5

    if-nez v5, :cond_12

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isShouldHideBar(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_12

    if-nez v32, :cond_12

    if-nez v34, :cond_12

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Launcher;->setParamsBeforeDrag(Lcom/android/launcher2/BackupItemsRecords;)V

    const/16 v5, 0x70

    const-string v6, "request_lock"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1, v6}, Lcom/android/launcher2/FolderLock;->startVerifyActivity(ILcom/android/launcher2/BaseItem;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    if-eqz v22, :cond_e

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_15

    const/16 v33, 0x1

    :cond_e
    :goto_8
    if-eqz v33, :cond_16

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v5

    if-nez v5, :cond_16

    if-nez v30, :cond_16

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderHomeItem(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v5, v6, v4}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/launcher2/DragState;)V

    :cond_f
    :goto_9
    if-eqz v22, :cond_17

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    move-object/from16 v0, p0

    if-ne v5, v0, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_10
    const/16 v30, 0x0

    goto/16 :goto_5

    :cond_11
    const-string v5, "home_locked_items"

    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v10, v11}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v31, 0x1

    goto/16 :goto_6

    :catch_0
    move-exception v23

    const-string v5, "Launcher.FolderIconView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDragEvent drop lockedFolder startVerifyActivity error e="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v5

    if-nez v5, :cond_13

    if-nez v32, :cond_13

    if-eqz v34, :cond_14

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Launcher;->setParamsBeforeDrag(Lcom/android/launcher2/BackupItemsRecords;)V

    const/4 v5, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher2/FolderLock;->lockApp(Lcom/android/launcher2/BaseItem;Z)V

    goto/16 :goto_7

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Launcher;->setParamsBeforeDrag(Lcom/android/launcher2/BackupItemsRecords;)V

    goto/16 :goto_7

    :cond_15
    const/16 v33, 0x0

    goto/16 :goto_8

    :cond_16
    if-eqz v31, :cond_f

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderHomeItem(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;)V

    goto/16 :goto_9

    :cond_17
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v8

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v10

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->onDrop()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-nez v5, :cond_18

    if-eqz v22, :cond_18

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    if-eqz v5, :cond_18

    new-instance v21, Lcom/android/launcher2/DragState;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/BaseItem;

    if-eqz v35, :cond_19

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_19

    invoke-interface/range {v37 .. v37}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v36

    invoke-interface/range {v37 .. v37}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/AppFolderItem;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/launcher2/AppItem;

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/AppFolderItem;->getPosition()I

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCellXFromPos(I)I

    move-result v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/AppFolderItem;->getPosition()I

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCellYFromPos(I)I

    move-result v8

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/AppItem;->getSpanX()I

    move-result v9

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/AppItem;->getSpanY()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/DragState;->dropItemtoTarget(Landroid/view/View;Landroid/view/View;IIII)V

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->removeFolderFromDrag(Lcom/android/launcher2/AppFolderItem;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/DragState;->onDelete()V

    :cond_18
    :goto_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    :cond_19
    const/16 v18, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v37 .. v37}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v5, :cond_1d

    invoke-interface/range {v37 .. v37}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayoutHotseat;

    :cond_1a
    :goto_b
    if-eqz v17, :cond_1b

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->isBouncingItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->reset()V

    :cond_1b
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/HomeItem;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/launcher2/HomeItem;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v10

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, v26

    iget v12, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v26

    iget v13, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, v27

    iget v14, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, v27

    iget v15, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object v9, v4

    invoke-virtual/range {v9 .. v15}, Lcom/android/launcher2/DragState;->dropItemtoTarget(Landroid/view/View;Landroid/view/View;IIII)V

    if-eqz v18, :cond_1c

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    :cond_1c
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/DragState;->onDelete()V

    goto :goto_a

    :cond_1d
    invoke-interface/range {v37 .. v37}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_1a

    invoke-interface/range {v37 .. v37}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayout;

    goto :goto_b

    :pswitch_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    instance-of v5, v5, Lcom/android/launcher2/AppFolderItem;

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    check-cast v5, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v5}, Lcom/android/launcher2/AppFolderItem;->isAppFolderDestroyed()Z

    move-result v28

    :cond_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/FolderIconView;->droppedInOurFolder(Lcom/android/launcher2/DragState;)Z

    move-result v5

    if-nez v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_1f
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_20
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    :cond_21
    if-nez v28, :cond_22

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    :cond_22
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    const/16 v16, 0x0

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v5

    if-nez v5, :cond_23

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    if-eqz v5, :cond_27

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v5, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/launcher2/CellLayout;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v5

    if-nez v5, :cond_25

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimate:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    :cond_24
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutNoGap;->cancelRealTimeReorder()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    :cond_25
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_26
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    goto :goto_c

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_28

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v38

    if-eqz v38, :cond_28

    invoke-virtual/range {v38 .. v38}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v5, :cond_29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    const/16 v29, 0x1

    if-eqz v29, :cond_2a

    if-eqz v29, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/launcher2/CellLayout;->checkDistancetoFolder(Lcom/android/launcher2/DragState;II)Z

    move-result v5

    if-eqz v5, :cond_2b

    :cond_2a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/FolderIconView;->onDragEnter(Lcom/android/launcher2/DragState;)V

    :cond_2b
    :goto_d
    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderItem;

    if-nez v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090012

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-object v5, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v9}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    :cond_2c
    :goto_e
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    :cond_2d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/FolderIconView;->onDragEnter(Lcom/android/launcher2/DragState;)V

    goto :goto_d

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090012

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-object v5, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    goto :goto_e

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/AppIconView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "pen_hovering"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_0

    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_0
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v19, 0x7f0d0000

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_2

    const/16 v19, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_3

    const/16 v19, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_4

    const/16 v19, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const-wide/16 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v5

    const/4 v11, 0x0

    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    const/16 v19, 0x1

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderAnimator;->isCloseAnimating()Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderAnimator;->getFolderHoveringEndTime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    move-wide/from16 v20, v0

    sub-long v16, v6, v20

    sub-long v14, v6, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v19

    if-nez v19, :cond_9

    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-nez v19, :cond_9

    const-wide/16 v20, 0x12c

    cmp-long v19, v16, v20

    if-lez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderAnimator;->isCloseAnimating()Z

    move-result v19

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderAnimator;->isHoverAnimating()Z

    move-result v19

    if-nez v19, :cond_9

    if-lez v5, :cond_8

    const/16 v19, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x4e2a

    invoke-static/range {v20 .. v21}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/FolderIconView;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderAnimator;->animateHoverExpand()V

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_9
    div-int/lit8 v11, v5, 0x7

    rem-int/lit8 v19, v5, 0x7

    if-nez v19, :cond_a

    if-lez v11, :cond_a

    add-int/lit8 v11, v11, -0x1

    :cond_a
    const/16 v19, 0x7

    move/from16 v0, v19

    if-le v5, v0, :cond_5

    const-wide/16 v20, 0x7d0

    cmp-long v19, v14, v20

    if-lez v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v11, v0, :cond_5

    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-lez v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/FolderAnimator;->FadeInHoverIcon(I)V

    goto/16 :goto_1

    :pswitch_3
    const/16 v19, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x4e21

    invoke-static/range {v20 .. v21}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/FolderIconView;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onItemsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    instance-of v3, v0, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->isPageMoving()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/AppIconView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public onRemove(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 7

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    iget-boolean v5, p0, Lcom/android/launcher2/FolderIconView;->mIconScaleChanging:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {v0, v3}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Lcom/android/launcher2/utils/LiveIconUtils;->LIVE_ICON_PACKAGES:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/AppIconView;->onVisibilityChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public redrawFolderIcon()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    instance-of v4, v4, Lcom/android/launcher2/AppFolderItem;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->hideUninstallIconForLockFolder()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    iget-object v7, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v7}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v4, v1, Lcom/android/launcher2/BaseItem;->mColor:I

    invoke-static {v4}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, v0, v3}, Lcom/android/launcher2/FolderIconView;->getMaskedIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v4, v2}, Lcom/android/launcher2/FolderItem;->setToRedrawIcons(Z)V

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded()V

    :cond_3
    sget-object v2, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v2, v4, :cond_5

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconMoveContainer;->updateItem(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V

    :cond_0
    return-void
.end method

.method public restoreStateForOpenVisualize()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDrawShadow:Z

    return-void
.end method

.method public setBounceItem(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setCustomIconSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/FolderIconView;->mCustomIconSize:I

    return-void
.end method

.method public setDraggedIconId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    return-void
.end method

.method public setDrawPlate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    return-void
.end method

.method public setDrawText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/FolderIconView;->mDrawText:Z

    return-void
.end method

.method public setFolder(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    return-void
.end method

.method public setInFolderCloseAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/FolderIconView;->mInFolderCloseAnim:Z

    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v2, p7

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    :cond_0
    return-void
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    return-void
.end method

.method public showBadge()V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/AppFolderItem;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    sget-object v19, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v19, :cond_1

    sget-object v19, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v13, v18

    check-cast v13, Lcom/android/launcher2/AppFolderItem;

    const/16 v17, 0x0

    invoke-virtual {v13}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v14

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v14, :cond_3

    invoke-virtual {v13, v11}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_2

    iget v0, v2, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    move/from16 v19, v0

    add-int v17, v17, v19

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v19, v18

    check-cast v19, Lcom/android/launcher2/FolderItem;

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v19, v18

    check-cast v19, Lcom/android/launcher2/FolderItem;

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v19

    if-nez v19, :cond_4

    const/16 v17, 0x0

    :cond_4
    move/from16 v0, v17

    iput v0, v13, Lcom/android/launcher2/AppFolderItem;->mBadgeCount:I

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v19

    if-eqz v19, :cond_6

    sget-boolean v19, Lcom/android/launcher2/FolderIconView;->sIsDragState:Z

    if-nez v19, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/FolderIconView;->setBadgeDrawableFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setBadgeText(I)V

    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v13, v18

    check-cast v13, Lcom/android/launcher2/BaseItem;

    const/4 v6, 0x0

    iget-object v15, v13, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_12

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090047

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    :cond_9
    :goto_3
    iget-object v0, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_a

    iget-object v0, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f09008b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-static {v13}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v19

    if-eqz v19, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0900d4

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/HomeFolderItem;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v13, v18

    check-cast v13, Lcom/android/launcher2/HomeFolderItem;

    const/4 v12, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v13}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_10

    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_d

    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_e

    :cond_d
    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    if-eq v0, v10, :cond_f

    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    move/from16 v19, v0

    add-int v17, v17, v19

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 v12, 0x0

    const/4 v3, 0x0

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_10
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v19, v18

    check-cast v19, Lcom/android/launcher2/FolderItem;

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v19, v18

    check-cast v19, Lcom/android/launcher2/FolderItem;

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v19

    if-nez v19, :cond_11

    const/16 v17, 0x0

    :cond_11
    move/from16 v0, v17

    iput v0, v13, Lcom/android/launcher2/HomeFolderItem;->mBadgeCount:I

    goto/16 :goto_2

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090047

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-lt v0, v9, :cond_13

    sub-int v19, v16, v9

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_9

    :cond_13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "fr"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_14

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_14
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_15
    iget v0, v13, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f09008a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    :cond_16
    move-object v6, v15

    goto/16 :goto_4
.end method
