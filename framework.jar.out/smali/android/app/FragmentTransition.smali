.class Landroid/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I


# direct methods
.method static synthetic -wrap0(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/FragmentTransition;->INVERSE_OPS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v6, p0, Landroid/transition/TransitionSet;

    if-eqz v6, :cond_1

    move-object v4, p0

    check-cast v4, Landroid/transition/TransitionSet;

    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/app/FragmentTransition;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v2, p1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v8, v2, Landroid/app/Fragment;->mContainerId:I

    if-nez v8, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_8

    sget-object v3, Landroid/app/FragmentTransition;->INVERSE_OPS:[I

    iget v4, p1, Landroid/app/BackStackRecord$Op;->cmd:I

    aget v7, v3, v4

    :goto_0
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    packed-switch v7, :pswitch_data_0

    :goto_1
    :pswitch_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/FragmentTransition$FragmentContainerTransition;

    if-eqz v11, :cond_2

    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Landroid/app/FragmentTransition;->ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v9

    iput-object v2, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    move/from16 v0, p3

    iput-boolean v0, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    iput-object p0, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    :cond_2
    if-nez p4, :cond_4

    if-eqz v12, :cond_4

    if-eqz v9, :cond_3

    iget-object v3, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    if-ne v3, v2, :cond_3

    const/4 v3, 0x0

    iput-object v3, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    :cond_3
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v3, v2, Landroid/app/Fragment;->mState:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_4

    iget v3, v1, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4

    iget-object v3, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_4

    iget-boolean v3, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    :cond_4
    if-eqz v10, :cond_6

    if-eqz v9, :cond_5

    iget-object v3, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    if-nez v3, :cond_6

    :cond_5
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Landroid/app/FragmentTransition;->ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v9

    iput-object v2, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    move/from16 v0, p3

    iput-boolean v0, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    iput-object p0, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    :cond_6
    if-nez p4, :cond_7

    if-eqz v13, :cond_7

    if-eqz v9, :cond_7

    iget-object v3, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    if-ne v3, v2, :cond_7

    const/4 v3, 0x0

    iput-object v3, v9, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    :cond_7
    return-void

    :cond_8
    iget v7, p1, Landroid/app/BackStackRecord$Op;->cmd:I

    goto :goto_0

    :pswitch_1
    if-eqz p4, :cond_a

    iget-boolean v3, v2, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_9

    iget-boolean v3, v2, Landroid/app/Fragment;->mHidden:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    iget-boolean v11, v2, Landroid/app/Fragment;->mAdded:Z

    :goto_2
    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    :cond_a
    iget-boolean v11, v2, Landroid/app/Fragment;->mHidden:Z

    goto :goto_2

    :pswitch_2
    if-eqz p4, :cond_b

    iget-boolean v11, v2, Landroid/app/Fragment;->mIsNewlyAdded:Z

    :goto_3
    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_b
    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-nez v3, :cond_c

    iget-boolean v3, v2, Landroid/app/Fragment;->mHidden:Z

    xor-int/lit8 v11, v3, 0x1

    goto :goto_3

    :cond_c
    const/4 v11, 0x0

    goto :goto_3

    :pswitch_3
    if-eqz p4, :cond_e

    iget-boolean v3, v2, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_d

    iget-boolean v10, v2, Landroid/app/Fragment;->mHidden:Z

    :goto_4
    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_d
    const/4 v10, 0x0

    goto :goto_4

    :cond_e
    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_f

    iget-boolean v3, v2, Landroid/app/Fragment;->mHidden:Z

    xor-int/lit8 v10, v3, 0x1

    goto :goto_4

    :cond_f
    const/4 v10, 0x0

    goto :goto_4

    :pswitch_4
    if-eqz p4, :cond_12

    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-nez v3, :cond_11

    iget-object v3, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_11

    iget-object v3, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTransitionAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    const/4 v10, 0x1

    :goto_5
    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v10, 0x0

    goto :goto_5

    :cond_11
    const/4 v10, 0x0

    goto :goto_5

    :cond_12
    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_13

    iget-boolean v3, v2, Landroid/app/Fragment;->mHidden:Z

    xor-int/lit8 v10, v3, 0x1

    goto :goto_5

    :cond_13
    const/4 v10, 0x0

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {p0, p1, v4}, Landroid/app/FragmentTransition;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/app/FragmentTransition;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static calculateFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord$Op;

    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v3, p2}, Landroid/app/FragmentTransition;->addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/ArrayMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    add-int/lit8 v6, p4, -0x1

    :goto_0
    if-lt v6, p3, :cond_4

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord;

    invoke-virtual {v5, p0}, Landroid/app/BackStackRecord;->interactsWith(I)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v11, v5, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    iget-object v11, v5, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v1, :cond_2

    iget-object v10, v5, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v8, v5, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v2, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v8, v5, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v10, v5, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-object v2
.end method

.method public static calculatePopFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v3}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord$Op;

    const/4 v3, 0x1

    invoke-static {p0, v1, p1, v3, p2}, Landroid/app/FragmentTransition;->addToFirstInLastOut(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Landroid/app/Fragment;",
            "Z",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_4

    invoke-virtual {v3, v2, v4, v6}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {v3, v2, v4, v6}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method

.method private static captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v2, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-object v11

    :cond_1
    if-eqz v0, :cond_0

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    iget-object v4, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    iget-boolean v10, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Landroid/app/Fragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v8

    iget-object v7, v4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    invoke-virtual {v8, v7, v3}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    :goto_1
    if-ltz v1, :cond_7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-nez v9, :cond_5

    invoke-static {p0, v6}, Landroid/app/FragmentTransition;->findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v8

    iget-object v7, v4, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_0

    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {p0, v6}, Landroid/app/FragmentTransition;->findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-static {p0, v3}, Landroid/app/FragmentTransition;->retainValues(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    :cond_7
    return-object v3
.end method

.method private static captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-object v10

    :cond_1
    iget-object v3, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    iget-object v5, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    iget-boolean v9, p2, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Landroid/app/Fragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v6

    iget-object v2, v5, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-eqz v6, :cond_5

    invoke-virtual {v6, v2, v4}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    :goto_1
    if-ltz v0, :cond_6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-nez v8, :cond_4

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/app/Fragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v6

    iget-object v2, v5, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_6
    return-object v4
.end method

.method private static cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    :cond_2
    return-object v1
.end method

.method private static configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            ")",
            "Landroid/transition/TransitionSet;"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v12, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    move-object/from16 v0, p3

    iget-object v13, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    if-eqz v12, :cond_0

    if-nez v13, :cond_1

    :cond_0
    const/4 v5, 0x0

    return-object v5

    :cond_1
    move-object/from16 v0, p3

    iget-boolean v6, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v20, 0x0

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/app/FragmentTransition;->captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v20, 0x0

    :goto_1
    if-nez p6, :cond_4

    if-nez p7, :cond_4

    if-nez v20, :cond_4

    const/4 v5, 0x0

    return-object v5

    :cond_2
    invoke-static {v12, v13, v6}, Landroid/app/FragmentTransition;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;

    move-result-object v20

    goto :goto_0

    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v12, v13, v6, v0, v5}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    if-eqz v20, :cond_6

    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/app/FragmentTransition;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, p3

    iget-boolean v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v17, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    move-object/from16 v2, v18

    move/from16 v3, v17

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/FragmentTransition;->setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V

    if-eqz p6, :cond_5

    new-instance v5, Landroid/app/FragmentTransition$3;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/app/FragmentTransition$3;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    :cond_5
    :goto_2
    move-object/from16 v8, v20

    new-instance v5, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p6

    invoke-direct/range {v5 .. v16}, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    return-object v20

    :cond_6
    const/16 v16, 0x0

    goto :goto_2
.end method

.method private static configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            ")",
            "Landroid/transition/TransitionSet;"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v4, :cond_1

    if-nez v5, :cond_2

    :cond_1
    const/4 v2, 0x0

    return-object v2

    :cond_2
    move-object/from16 v0, p3

    iget-boolean v3, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Landroid/app/FragmentTransition;->captureOutSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v10

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Landroid/app/FragmentTransition;->captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v12, 0x0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    :cond_4
    :goto_1
    if-nez p6, :cond_7

    if-nez p7, :cond_7

    if-nez v12, :cond_7

    const/4 v2, 0x0

    return-object v2

    :cond_5
    invoke-static {v4, v5, v3}, Landroid/app/FragmentTransition;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;

    move-result-object v12

    goto :goto_0

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {v0, v10, v2}, Landroid/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v0, v6, v2}, Landroid/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/Collection;)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    invoke-static {v4, v5, v3, v10, v2}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    if-eqz v12, :cond_9

    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    invoke-static {v12, p1, v0}, Landroid/app/FragmentTransition;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, p3

    iget-boolean v9, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/app/BackStackRecord;

    move-object/from16 v0, p7

    invoke-static {v12, v0, v10, v9, v11}, Landroid/app/FragmentTransition;->setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-static {v6, v0, v1, v3}, Landroid/app/FragmentTransition;->getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_8

    new-instance v2, Landroid/app/FragmentTransition$2;

    invoke-direct {v2, v8}, Landroid/app/FragmentTransition$2;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    :cond_8
    :goto_2
    new-instance v2, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;

    invoke-direct/range {v2 .. v8}, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    return-object v12

    :cond_9
    const/4 v8, 0x0

    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static configureTransitionsOrdered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "I",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v3}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/app/FragmentTransition;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v8

    invoke-static/range {v25 .. v26}, Landroid/app/FragmentTransition;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v9}, Landroid/app/FragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v15

    if-nez v8, :cond_2

    if-nez v15, :cond_2

    if-nez v9, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v9, 0x0

    :cond_4
    if-eqz v8, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    :cond_5
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object/from16 v0, v17

    invoke-static {v8, v9, v15, v0, v3}, Landroid/app/FragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v16}, Landroid/app/FragmentTransition;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    move-object/from16 v16, v2

    move-object/from16 v18, p3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v12

    move-object/from16 v22, v9

    move-object/from16 v23, v14

    invoke-static/range {v16 .. v23}, Landroid/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroid/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    invoke-static {v2, v10}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_6
    return-void
.end method

.method private static configureTransitionsReordered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "I",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v3}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/app/Fragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/app/Fragment;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v20, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v17 .. v18}, Landroid/app/FragmentTransition;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v8

    invoke-static/range {v19 .. v20}, Landroid/app/FragmentTransition;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v9}, Landroid/app/FragmentTransition;->configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v15

    if-nez v8, :cond_2

    if-nez v15, :cond_2

    if-nez v9, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v8, v0, v7, v1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v3, 0x4

    invoke-static {v12, v3}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v9, v15, v0, v1}, Landroid/app/FragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v10

    if-eqz v10, :cond_3

    move-object/from16 v0, v19

    invoke-static {v9, v0, v14}, Landroid/app/FragmentTransition;->replaceHide(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v16}, Landroid/app/FragmentTransition;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    invoke-static {v2, v10}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    const/4 v3, 0x0

    invoke-static {v12, v3}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v15}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v15, v6, v7}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static ensureContainer(Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/app/FragmentTransition$FragmentContainerTransition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Landroid/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {p0}, Landroid/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method private static findKeyForValue(Landroid/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method private static getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/transition/Transition;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/app/BackStackRecord;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v2, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    iget-object v2, v0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    return-object v2

    :cond_0
    iget-object v2, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private static getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/app/Fragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/app/FragmentTransition;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v3

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-object v1
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/FragmentTransition;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic lambda$-android_app_FragmentTransition_16724(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic lambda$-android_app_FragmentTransition_18686(Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    invoke-static {p0, p2, p3, p1}, Landroid/app/FragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p5, :cond_2

    if-eqz p6, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p6, p5, v0}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual {p5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static synthetic lambda$-android_app_FragmentTransition_26843(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    if-eqz p4, :cond_0

    invoke-virtual {p4, p5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$-android_app_FragmentTransition_32404(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V
    .locals 3

    invoke-static {p0, p1, p2}, Landroid/app/FragmentTransition;->captureInSharedElements(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    invoke-static {p5, p6, p7, v1, v2}, Landroid/app/FragmentTransition;->callSharedElementStartEnd(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1, p8, p3}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v1, p2, p9, p7}, Landroid/app/FragmentTransition;->getInEpicenterView(Landroid/util/ArrayMap;Landroid/app/FragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p10}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 7

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_4

    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    new-instance v4, Landroid/transition/TransitionSet;

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {v4, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v4, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v4, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_3
    move-object v3, v4

    :goto_1
    return-object v3

    :cond_4
    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    new-instance v5, Landroid/transition/TransitionSet;

    invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v5, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v1

    :cond_6
    :goto_2
    if-eqz p2, :cond_a

    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    if-eqz v1, :cond_7

    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_7
    invoke-virtual {v2, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-object v3, v2

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    move-object v1, p1

    goto :goto_2

    :cond_9
    if-eqz p0, :cond_6

    move-object v1, p0

    goto :goto_2

    :cond_a
    move-object v3, v1

    goto :goto_1
.end method

.method private static replaceHide(Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    iget-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->setHideReplaced(Z)V

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE;

    invoke-direct {v2, p2}, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    new-instance v1, Landroid/app/FragmentTransition$1;

    invoke-direct {v1, v0, p2}, Landroid/app/FragmentTransition$1;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    instance-of v6, p0, Landroid/transition/TransitionSet;

    if-eqz v6, :cond_0

    move-object v3, p0

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/app/FragmentTransition;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-interface {v5, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez p2, :cond_1

    const/4 v4, 0x0

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_3
    if-ltz v1, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private static retainValues(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/TransitionSet;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/app/FragmentTransition$5;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/app/FragmentTransition$5;-><init>(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method private static scheduleTargetChange(Landroid/view/ViewGroup;Landroid/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$1;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    return-void
.end method

.method private static setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/app/FragmentTransition$4;

    invoke-direct {v1, v0}, Landroid/app/FragmentTransition$4;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    :cond_0
    return-void
.end method

.method private static setOutEpicenter(Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/util/ArrayMap;ZLandroid/app/BackStackRecord;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/TransitionSet;",
            "Landroid/transition/Transition;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    if-eqz p3, :cond_1

    iget-object v2, p4, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0}, Landroid/app/FragmentTransition;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Landroid/app/FragmentTransition;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p4, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private static setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/TransitionSet;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v3, v2}, Landroid/app/FragmentTransition;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p2}, Landroid/app/FragmentTransition;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    iget v10, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v11, 0x1

    if-ge v10, v11, :cond_0

    return-void

    :cond_0
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v3, p3

    :goto_0
    move/from16 v0, p4

    if-ge v3, v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/BackStackRecord;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Landroid/app/FragmentTransition;->calculatePopFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Landroid/app/FragmentTransition;->calculateFragments(Landroid/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-eqz v10, :cond_4

    new-instance v6, Landroid/view/View;

    iget-object v10, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_4

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move/from16 v0, p4

    invoke-static {v1, p1, p2, p3, v0}, Landroid/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/FragmentTransition$FragmentContainerTransition;

    if-eqz p5, :cond_3

    invoke-static {p0, v1, v2, v6, v5}, Landroid/app/FragmentTransition;->configureTransitionsReordered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-static {p0, v1, v2, v6, v5}, Landroid/app/FragmentTransition;->configureTransitionsOrdered(Landroid/app/FragmentManagerImpl;ILandroid/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/util/ArrayMap;)V

    goto :goto_3

    :cond_4
    return-void
.end method
