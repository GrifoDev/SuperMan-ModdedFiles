.class public Lcom/samsung/android/animation/SemAddDeleteGridAnimator;
.super Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.source "SemAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemAddDeleteGridAnimator"


# instance fields
.field private mDeletePending:Z

.field private mGridView:Landroid/widget/GridView;

.field private mInsertPending:Z

.field mOldViewCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Ljava/util/HashSet;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getNextAppearingViewPosition(Ljava/util/HashSet;I)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/GridView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setAddDeleteGridAnimator(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mHostView:Landroid/view/View;

    return-void
.end method

.method private ensureAdapterAndListener()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Adapter need to be set before performing add/delete operations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SemAddDeleteGridAnimator requires an adapter that has stable ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "OnAddDeleteListener need to be supplied before performing add/delete operations"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private getNextAppearingViewPosition(Ljava/util/HashSet;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private prepareDelete(Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->ensureAdapterAndListener()V

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v15}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-virtual {v15}, Landroid/widget/GridView;->getChildCount()I

    move-result v13

    invoke-virtual {v15}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v14

    invoke-virtual {v15}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v17

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    add-int v2, v16, v14

    invoke-interface {v11, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    new-instance v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-static {v12}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    add-int v4, v16, v14

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    new-instance v2, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    move-object/from16 v3, p0

    move-object v4, v15

    move v6, v14

    move/from16 v7, v17

    move-object v8, v11

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/GridView;IIILandroid/widget/ListAdapter;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private prepareInsert(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->ensureAdapterAndListener()V

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v16, Ljava/util/HashSet;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v13}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-virtual {v13}, Landroid/widget/GridView;->getChildCount()I

    move-result v11

    invoke-virtual {v13}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_0

    invoke-virtual {v13, v14}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    add-int v2, v14, v12

    invoke-interface {v9, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    new-instance v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-static {v10}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    add-int v4, v14, v12

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/16 v20, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int v17, v15, v20

    sub-int v2, v17, v12

    invoke-virtual {v13, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x0

    aput v4, v3, v6

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v6, p1

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public deleteFromAdapterCompleted()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public insertIntoAdapterCompleted()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setDelete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onDelete()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->deleteFromAdapterCompleted()V

    return-void
.end method

.method public setDeletePending(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onDelete()V

    return-void
.end method

.method public setInsert(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAdd()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->insertIntoAdapterCompleted()V

    return-void
.end method

.method public setInsertPending(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAdd()V

    return-void
.end method

.method public setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    return-void
.end method

.method public bridge synthetic setTransitionDuration(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->setTransitionDuration(I)V

    return-void
.end method
