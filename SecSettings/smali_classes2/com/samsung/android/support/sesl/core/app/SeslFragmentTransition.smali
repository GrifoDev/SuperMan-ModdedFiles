.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;
.super Ljava/lang/Object;
.source "SeslFragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v4, v0, v3

    const/4 v1, 0x2

    aput v2, v0, v1

    aput v3, v0, v4

    aput v6, v0, v5

    aput v5, v0, v6

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x6

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x9

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0x9

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->INVERSE_OPS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->callSharedElementStartEnd(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->captureInSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getInEpicenterView(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
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

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static addToFirstInLastOut(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v2, :cond_2

    iget v8, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    if-eqz v8, :cond_3

    if-nez p3, :cond_4

    iget v7, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

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

    check-cast v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    if-nez v11, :cond_15

    :goto_2
    if-eqz p4, :cond_16

    :cond_0
    :goto_3
    if-nez v10, :cond_19

    :goto_4
    if-eqz p4, :cond_1c

    :cond_1
    :goto_5
    return-void

    :cond_2
    return-void

    :cond_3
    return-void

    :cond_4
    sget-object v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->INVERSE_OPS:[I

    iget v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    aget v7, v3, v4

    goto :goto_0

    :pswitch_1
    if-nez p4, :cond_5

    iget-boolean v11, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    :goto_6
    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    if-nez v3, :cond_7

    :cond_6
    const/4 v11, 0x0

    :goto_7
    goto :goto_6

    :cond_7
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v3, :cond_6

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v3, :cond_6

    const/4 v11, 0x1

    goto :goto_7

    :pswitch_2
    if-nez p4, :cond_9

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v3, :cond_a

    :cond_8
    const/4 v11, 0x0

    :goto_8
    const/4 v12, 0x1

    goto :goto_1

    :cond_9
    iget-boolean v11, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIsNewlyAdded:Z

    goto :goto_8

    :cond_a
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v3, :cond_8

    const/4 v11, 0x1

    goto :goto_8

    :pswitch_3
    if-nez p4, :cond_c

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-nez v3, :cond_f

    :cond_b
    const/4 v10, 0x0

    :goto_9
    const/4 v13, 0x1

    goto :goto_1

    :cond_c
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    if-nez v3, :cond_e

    :cond_d
    const/4 v10, 0x0

    :goto_a
    goto :goto_9

    :cond_e
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v3, :cond_d

    const/4 v10, 0x1

    goto :goto_a

    :cond_f
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v3, :cond_b

    const/4 v10, 0x1

    goto :goto_9

    :pswitch_4
    if-nez p4, :cond_11

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-nez v3, :cond_14

    :cond_10
    const/4 v10, 0x0

    :goto_b
    const/4 v13, 0x1

    goto :goto_1

    :cond_11
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v3, :cond_13

    :cond_12
    const/4 v10, 0x0

    :goto_c
    goto :goto_b

    :cond_13
    iget-object v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_12

    iget-object v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_12

    iget v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_12

    const/4 v10, 0x1

    goto :goto_c

    :cond_14
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v3, :cond_10

    const/4 v10, 0x1

    goto :goto_b

    :cond_15
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->ensureContainer(Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    move-result-object v9

    iput-object v2, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move/from16 v0, p3

    iput-boolean v0, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    iput-object p0, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    goto/16 :goto_2

    :cond_16
    if-eqz v12, :cond_0

    if-nez v9, :cond_18

    :cond_17
    :goto_d
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    iget v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeActive(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    goto/16 :goto_3

    :cond_18
    iget-object v3, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-ne v3, v2, :cond_17

    const/4 v3, 0x0

    iput-object v3, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    goto :goto_d

    :cond_19
    if-nez v9, :cond_1b

    :cond_1a
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->ensureContainer(Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    move-result-object v9

    iput-object v2, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move/from16 v0, p3

    iput-boolean v0, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    iput-object p0, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    goto/16 :goto_4

    :cond_1b
    iget-object v3, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v3, :cond_1a

    goto/16 :goto_4

    :cond_1c
    if-eqz v13, :cond_1

    if-eqz v9, :cond_1

    iget-object v3, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    iput-object v3, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    goto/16 :goto_5

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

.method public static calculateFragments(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v3, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->addToFirstInLastOut(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    add-int/lit8 v6, p4, -0x1

    :goto_0
    if-ge v6, p3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-virtual {v5, p0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->interactsWith(I)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v11, :cond_2

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_2
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v1, :cond_3

    iget-object v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v10, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_4

    invoke-virtual {v2, v7, v9}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v10, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v7, v4}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public static calculatePopFragments(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-gez v2, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    const/4 v3, 0x1

    invoke-static {p0, v1, p1, v3, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->addToFirstInLastOut(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private static callSharedElementStartEnd(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Z",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->size()I

    move-result v0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v0, :cond_3

    if-nez p4, :cond_4

    invoke-virtual {v3, v2, v4, v6}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v2, v4, v6}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method

.method private static captureInSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .locals 12
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v2, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->clear()V

    return-object v11

    :cond_1
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {v3}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    invoke-static {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object v4, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-boolean v10, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-nez v10, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v8

    iget-object v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_0
    if-nez v7, :cond_4

    :goto_1
    if-nez v8, :cond_5

    invoke-static {p0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->retainValues(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V

    :cond_2
    return-object v3

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v8

    iget-object v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v7}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->retainAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v8, v7, v3}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    :goto_2
    if-ltz v1, :cond_2

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_7
    invoke-static {p0, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->findKeyForValue(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    invoke-static {p0, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->findKeyForValue(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private static captureOutSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .locals 11
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->clear()V

    return-object v10

    :cond_1
    if-eqz p1, :cond_0

    iget-object v3, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    new-instance v4, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {v4}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object v5, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-boolean v9, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-nez v9, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v6

    iget-object v2, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-nez v6, :cond_4

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v4

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v6

    iget-object v2, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v2, v4}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private static configureEnteringExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
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

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    if-nez p2, :cond_3

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method private static configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 21
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
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
            "Landroid/transition/Transition;"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v11, :cond_1

    :cond_0
    const/4 v5, 0x0

    return-object v5

    :cond_1
    if-eqz v12, :cond_0

    move-object/from16 v0, p3

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v11, v12, v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getSharedElementTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v20

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->captureOutSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    if-eqz p6, :cond_6

    :cond_2
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v11, v12, v13, v0, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->callSharedElementStartEnd(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    if-nez v20, :cond_7

    const/16 v16, 0x0

    :cond_3
    :goto_2
    move-object/from16 v7, v20

    new-instance v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p6

    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;

    return-object v20

    :cond_4
    const/16 v20, 0x0

    goto :goto_0

    :cond_5
    const/16 v20, 0x0

    goto :goto_1

    :cond_6
    if-nez p7, :cond_2

    if-nez v20, :cond_2

    const/4 v5, 0x0

    return-object v5

    :cond_7
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setSharedElementTargets(Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v17, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    move-object/from16 v2, v18

    move/from16 v3, v17

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->setOutEpicenter(Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;ZLcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V

    if-eqz p6, :cond_3

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setEpicenter(Landroid/transition/Transition;Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method private static configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 14
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
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
            "Landroid/transition/Transition;"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_1

    :goto_0
    if-nez v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_0

    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getSharedElementTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v12

    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->captureOutSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v10

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->captureInSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {v0, v10, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/util/Collection;)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v0, v6, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/util/Collection;)V

    :cond_3
    :goto_2
    if-eqz p6, :cond_9

    :cond_4
    const/4 v2, 0x1

    invoke-static {v3, v4, v5, v10, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->callSharedElementStartEnd(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    if-nez v12, :cond_a

    const/4 v8, 0x0

    const/4 v7, 0x0

    :cond_5
    :goto_3
    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;

    return-object v12

    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    if-nez v10, :cond_8

    :goto_4
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->clear()V

    goto :goto_2

    :cond_8
    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->clear()V

    goto :goto_4

    :cond_9
    if-nez p7, :cond_4

    if-nez v12, :cond_4

    const/4 v2, 0x0

    return-object v2

    :cond_a
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    invoke-static {v12, p1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setSharedElementTargets(Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, p3

    iget-boolean v9, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    move-object/from16 v0, p7

    invoke-static {v12, v0, v10, v9, v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->setOutEpicenter(Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;ZLcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-static {v6, v0, v1, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getInEpicenterView(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object/from16 v0, p6

    invoke-static {v0, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setEpicenter(Landroid/transition/Transition;Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method private static configureTransitionsOrdered(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;ILcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V
    .locals 27
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;",
            "I",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onHasView()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getEnterTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v8

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getExitTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v15

    if-eqz v8, :cond_4

    :cond_0
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    if-nez v14, :cond_5

    :cond_1
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p3

    invoke-static {v8, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->addTarget(Landroid/transition/Transition;Landroid/view/View;)V

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object/from16 v0, v17

    invoke-static {v8, v9, v15, v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v10

    if-nez v10, :cond_6

    :goto_2
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    if-nez v15, :cond_0

    if-nez v9, :cond_0

    return-void

    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v16}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    move-object/from16 v16, v2

    move-object/from16 v18, p3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v12

    move-object/from16 v22, v9

    move-object/from16 v23, v14

    invoke-static/range {v16 .. v23}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    move-object/from16 v0, p4

    invoke-static {v2, v7, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v10}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    move-object/from16 v0, p4

    invoke-static {v2, v7, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_2
.end method

.method private static configureTransitionsReordered(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;ILcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V
    .locals 22
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;",
            "I",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onHasView()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    if-eqz v2, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v21, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getEnterTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v8

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getExitTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v15

    if-eqz v8, :cond_3

    :cond_0
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v8, v0, v7, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v3, 0x4

    invoke-static {v12, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v9, v15, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v10

    if-nez v10, :cond_4

    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    if-nez v15, :cond_0

    if-nez v9, :cond_0

    return-void

    :cond_4
    move-object/from16 v0, v20

    invoke-static {v9, v0, v14}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->replaceHide(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;)V

    invoke-static {v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v19

    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v16}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    invoke-static {v2, v10}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-static {v2, v6, v7, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v3, 0x0

    invoke-static {v12, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    invoke-static {v15, v6, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->swapSharedElementTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private static ensureContainer(Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;-><init>()V

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static findKeyForValue(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private static getEnterTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExitTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method private static getInEpicenterView(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            "Landroid/transition/Transition;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    if-nez p2, :cond_1

    :cond_0
    return-object v4

    :cond_1
    if-eqz p0, :cond_0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_2

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    return-object v2

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0
.end method

.method private static getSharedElementTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->wrapTransitionInSet(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v1

    goto :goto_0
.end method

.method private static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    invoke-static {p1, p0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->mergeTransitionsInSequence(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    :goto_2
    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    goto :goto_2

    :cond_3
    invoke-static {p1, p0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->mergeTransitionsTogether(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v1

    goto :goto_1
.end method

.method private static replaceHide(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;)V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setHideReplaced(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->scheduleHideFragmentView(Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$1;

    invoke-direct {v1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;

    goto :goto_0
.end method

.method private static retainValues(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static scheduleTargetChange(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 8
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
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

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;-><init>(Landroid/transition/Transition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;

    return-void
.end method

.method private static setOutEpicenter(Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;ZLcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_2

    iget-object v2, p4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v2, p4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_1
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

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-gez v0, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static startTransitions(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    iget v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v11, 0x1

    if-lt v10, v11, :cond_1

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v3, p3

    :goto_0
    move/from16 v0, p4

    if-lt v3, v0, :cond_2

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-nez v10, :cond_4

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->calculateFragments(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->calculatePopFragments(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_1

    :cond_4
    new-instance v6, Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_0

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move/from16 v0, p4

    invoke-static {v1, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v5

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    if-nez p5, :cond_5

    invoke-static {p0, v1, v2, v6, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureTransitionsOrdered(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;ILcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-static {p0, v1, v2, v6, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureTransitionsReordered(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;ILcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V

    goto :goto_3
.end method
