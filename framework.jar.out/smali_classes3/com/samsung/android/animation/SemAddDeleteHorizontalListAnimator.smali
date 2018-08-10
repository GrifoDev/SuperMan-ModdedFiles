.class public Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;
.super Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.source "SemAddDeleteHorizontalListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDeletePending:Z

.field private mHorizontalListView:Landroid/widget/SemHorizontalListView;

.field private mInsertPending:Z

.field mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;
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

.field private mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getChildMaxWidth()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SemAddDeleteHListAnimator"

    sput-object v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/SemHorizontalListView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalListView;->setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHostView:Landroid/view/View;

    return-void
.end method

.method private capturePreAnimationViewCoordinates()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    invoke-virtual/range {v21 .. v21}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v15

    invoke-virtual/range {v21 .. v21}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v16

    invoke-interface {v12}, Landroid/widget/ListAdapter;->getCount()I

    move-result v13

    invoke-virtual/range {v21 .. v21}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v19

    invoke-virtual/range {v21 .. v21}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v18

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    if-ge v0, v15, :cond_5

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    add-int v4, v20, v16

    invoke-interface {v12, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDelete() child\'s one of dimensions is 0, i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v14}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    const-wide/16 v6, -0x1

    cmp-long v2, v22, v6

    if-nez v2, :cond_4

    move/from16 v0, v19

    if-ge v4, v0, :cond_3

    add-int/lit8 v2, v4, 0x1

    int-to-long v0, v2

    move-wide/from16 v22, v0

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v9, v10, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sub-int v2, v13, v18

    if-lt v4, v2, :cond_2

    add-int v2, v4, v18

    sub-int/2addr v2, v13

    add-int/lit8 v17, v2, 0x1

    move/from16 v0, v17

    neg-int v2, v0

    int-to-long v0, v2

    move-wide/from16 v22, v0

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    new-instance v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    add-int v7, v20, v16

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v10

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-void
.end method

.method private ensureAdapterAndListener()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

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

    const-string/jumbo v2, "TwAddDeleteListAnimator requires an adapter that has stable ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "OnAddDeleteListener need to be supplied before performing add/delete operations"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private getChildMaxWidth()I
    .locals 8

    iget-object v7, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    iget-object v7, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v7, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    add-int v5, v4, v3

    iget-object v7, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v7

    if-lt v5, v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v7

    sub-int v7, v0, v7

    if-lt v5, v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v7, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v6

    if-le v6, v2, :cond_0

    move v2, v6

    goto :goto_1

    :cond_2
    return v2
.end method

.method private prepareDelete(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->ensureAdapterAndListener()V

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->capturePreAnimationViewCoordinates()V

    new-instance v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;IIIILjava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeight()I

    move-result v4

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private prepareInsert(Ljava/util/ArrayList;)V
    .locals 28
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

    iput-boolean v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->ensureAdapterAndListener()V

    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-virtual/range {v24 .. v24}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v14

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual/range {v24 .. v24}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v15

    invoke-virtual/range {v24 .. v24}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v17

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v0, v14, :cond_4

    add-int v4, v18, v15

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-interface {v11, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setInsert() child\'s one of dimensions is 0, i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v13}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    const-wide/16 v6, -0x1

    cmp-long v2, v22, v6

    if-nez v2, :cond_3

    sub-int v2, v12, v17

    if-lt v4, v2, :cond_1

    add-int v2, v4, v17

    sub-int/2addr v2, v12

    add-int/lit8 v16, v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v26, v0

    move/from16 v0, v16

    int-to-long v6, v0

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    new-instance v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v26, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    new-instance v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/16 v21, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_6

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v19, v21

    sub-int v2, v20, v15

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    :cond_6
    new-instance v5, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    move-object/from16 v6, p0

    move-object v7, v11

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public deleteFromAdapterCompleted()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V

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

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V

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
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onDelete()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->deleteFromAdapterCompleted()V

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
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onDelete()V

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
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onAdd()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->insertIntoAdapterCompleted()V

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
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onAdd()V

    return-void
.end method

.method public setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    return-void
.end method

.method public bridge synthetic setTransitionDuration(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->setTransitionDuration(I)V

    return-void
.end method
