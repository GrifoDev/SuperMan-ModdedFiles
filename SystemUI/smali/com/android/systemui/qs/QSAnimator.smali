.class public Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSAnimator$1;,
        Lcom/android/systemui/qs/QSAnimator$2;
    }
.end annotation


# instance fields
.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFullRows:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mTopFiveQs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method private clearAnimationState()V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    aput v1, p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 3

    if-eq p2, p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v2}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    if-ge p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private updateAnimators()V
    .locals 33

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-instance v22, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v22 .. v22}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-instance v23, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v23 .. v23}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v27

    if-nez v27, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v21

    const/4 v4, 0x0

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v11, v0, [I

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v12, v0, [I

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v27, v19

    check-cast v27, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v27

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v27

    sub-int v27, v6, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getPaddingBottom()I

    move-result v28

    add-int v7, v27, v28

    const-string/jumbo v27, "translationY"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x1

    aput v29, v28, v30

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/plugins/qs/QSTile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v20

    if-nez v20, :cond_3

    const-string/jumbo v27, "QSAnimator"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "tileView is null "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v4, v0, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v15

    if-eqz v15, :cond_1

    const/16 v27, 0x0

    aget v9, v11, v27

    invoke-virtual {v15}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-direct {v0, v11, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-direct {v0, v12, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/16 v27, 0x0

    aget v27, v12, v27

    const/16 v28, 0x0

    aget v28, v11, v28

    sub-int v25, v27, v28

    const/16 v27, 0x1

    aget v27, v12, v27

    const/16 v28, 0x1

    aget v28, v11, v28

    sub-int v26, v27, v28

    const/16 v27, 0x0

    aget v27, v11, v27

    sub-int v10, v27, v9

    const-string/jumbo v27, "translationX"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v29, v28, v30

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    aput v29, v28, v30

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const-string/jumbo v27, "translationY"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v29, v28, v30

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    aput v29, v28, v30

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const-string/jumbo v27, "translationX"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x1

    aput v29, v28, v30

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const-string/jumbo v27, "translationY"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x1

    aput v29, v28, v30

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/qs/QSAnimator;->isIconInAnimatedRow(I)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v27, 0x0

    aget v28, v11, v27

    add-int v28, v28, v10

    aput v28, v11, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-direct {v0, v12, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/16 v27, 0x0

    aget v27, v12, v27

    const/16 v28, 0x0

    aget v28, v11, v28

    sub-int v25, v27, v28

    const/16 v27, 0x1

    aget v27, v12, v27

    const/16 v28, 0x1

    aget v28, v11, v28

    sub-int v26, v27, v28

    const-string/jumbo v27, "translationY"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x1

    aput v29, v28, v30

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const-string/jumbo v27, "translationX"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x1

    aput v29, v28, v30

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const-string/jumbo v27, "translationY"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x1

    aput v29, v28, v30

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const-string/jumbo v27, "translationY"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x1

    aput v29, v28, v30

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v27, "alpha"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x1

    aput v29, v28, v30

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const-string/jumbo v27, "translationY"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    neg-int v0, v7

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x1

    aput v29, v28, v30

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v27, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v27 .. v27}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v28, 0x3f5c28f6    # 0.86f

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v27

    const-string/jumbo v28, "alpha"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput v30, v29, v31

    const/high16 v30, 0x3f800000    # 1.0f

    const/16 v31, 0x1

    aput v30, v29, v31

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v28

    const-string/jumbo v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    aput v31, v30, v32

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x1

    aput v31, v30, v32

    invoke-virtual/range {v27 .. v30}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->size()I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_9

    const/high16 v13, 0x3f800000    # 1.0f

    :cond_7
    :goto_3
    new-instance v8, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v8, v0, v1, v13, v14}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(FFFF)V

    invoke-virtual {v8}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-virtual {v8}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_8
    new-instance v27, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v27 .. v27}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v28, v0

    const-string/jumbo v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x0

    aput v31, v30, v32

    const/16 v31, 0x0

    const/16 v32, 0x1

    aput v31, v30, v32

    invoke-virtual/range {v27 .. v30}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v28

    const-string/jumbo v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    aput v31, v30, v32

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x1

    aput v31, v30, v32

    invoke-virtual/range {v27 .. v30}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v27

    const/high16 v28, 0x3f000000    # 0.5f

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :cond_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->size()I

    move-result v27

    const/16 v28, 0x6

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_7

    const v13, 0x3ecccccd    # 0.4f

    goto/16 :goto_3
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 5

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    return-void
.end method

.method public onTilesChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "sysui_qs_fancy_anim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "sysui_qs_move_whole_rows"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "sysui_qqs_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_fancy_anim"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysui_qs_move_whole_rows"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysui_qqs_count"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public setPosition(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_0
.end method
