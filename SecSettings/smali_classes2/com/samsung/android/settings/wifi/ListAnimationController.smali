.class public Lcom/samsung/android/settings/wifi/ListAnimationController;
.super Ljava/lang/Object;
.source "ListAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/ListAnimationController$1;,
        Lcom/samsung/android/settings/wifi/ListAnimationController$2;,
        Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;
    }
.end annotation


# instance fields
.field private mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private final mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

.field private mAddOtherNetworkItem:Landroid/view/View;

.field private mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

.field private final mChildItemClickListner:Landroid/widget/SemExpandableListView$OnChildClickListener;

.field private mContactUsView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHeadersCount:I

.field private mInManageNetwork:Z

.field private mInPickerDialog:Z

.field private mInsetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDeletePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInsertPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

.field private mPreEmptyView:Landroid/widget/TextView;

.field private mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

.field private mSemExpListView:Landroid/widget/SemExpandableListView;

.field private mUiRestrictionLayout:Landroid/widget/LinearLayout;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/animation/SemAddDeleteListAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/android/settingslib/wifi/WifiTracker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->addToAdapter(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->deleteFromAdapter(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$1;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mChildItemClickListner:Landroid/widget/SemExpandableListView$OnChildClickListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$2;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addToAdapter(Z)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private deleteFromAdapter(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    iget v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->remove(Ljava/util/ArrayList;Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDeleteItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    if-nez v9, :cond_0

    return-object v10

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    add-int v5, v0, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isChanged()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    return-object v8
.end method

.method private getInsertItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    const/16 v24, 0x0

    return-object v24

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v3

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    invoke-virtual {v14}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->isConnected()Z

    move-result v24

    if-eqz v24, :cond_4

    :cond_2
    const/4 v11, 0x1

    :cond_3
    :goto_1
    if-nez v11, :cond_1

    if-gez v8, :cond_c

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    add-int/lit8 v8, v8, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v17

    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v24

    if-nez v24, :cond_b

    const/4 v11, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v24

    if-gez v24, :cond_b

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v24

    if-eqz v24, :cond_8

    const/16 v8, -0x3e7

    :cond_8
    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    move/from16 v24, v0

    add-int v23, v12, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v24

    if-nez v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/16 v20, 0x0

    const/4 v7, 0x0

    :goto_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_13

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v18, 0x0

    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v4, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    if-le v8, v0, :cond_e

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    add-int v24, v8, v7

    sub-int v24, v24, v18

    sub-int v10, v24, v20

    if-gez v10, :cond_f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    :cond_f
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    move/from16 v24, v0

    sub-int v6, v10, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v5

    invoke-virtual {v14}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v9

    if-eqz v5, :cond_12

    if-eqz v9, :cond_12

    invoke-virtual {v9, v5}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v24

    if-eqz v24, :cond_12

    const/4 v12, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v10, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v20, v20, 0x1

    :cond_10
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v19
.end method

.method private getSortedFlatPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private setEnableRefreshLayout(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "setEnableRefreshLayout - refresh layout is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;
    .locals 3

    const v1, 0x7f0d0215

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a090c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    const v1, 0x7f0a0884

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    const v1, 0x7f0a065c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mPreEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0a01b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContactUsView:Landroid/widget/TextView;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mUiRestrictionLayout:Landroid/widget/LinearLayout;

    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    iput-boolean p5, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->initController()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListView;->setEmptyView(Landroid/view/View;)V

    return-object v0
.end method

.method public destroyView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->removeAll()V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-void
.end method

.method public getAvailableAPCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public getConnectedAPCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public getContactUsView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContactUsView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/SemExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    return-object v0
.end method

.method public getPreEmptyView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mPreEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method public initController()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v4}, Landroid/widget/SemExpandableListView;->getDividerHeight()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;-><init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mChildItemClickListner:Landroid/widget/SemExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListView;->setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    new-instance v2, Lcom/samsung/android/settings/wifi/ListAnimationController$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$3;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListView;->setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, v5}, Landroid/widget/SemExpandableListView;->setItemsCanFocus(Z)V

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setTransitionDuration(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    const v2, 0x7f0d0378

    invoke-virtual {v0, v2, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    :goto_0
    const-string/jumbo v1, "WifiSettings.VI"

    const-string/jumbo v2, "set footer divider true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, v5}, Landroid/widget/SemExpandableListView;->setFooterDividersEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/wifi/ListAnimationController$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$4;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    invoke-virtual {v1, v2, v7, v5}, Landroid/widget/SemExpandableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    const v2, 0x7f0d0380

    invoke-virtual {v0, v2, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "WifiSettings.VI"

    const-string/jumbo v2, "TouchWiz SemExpandableListView is null, can\'t set adapter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    new-array v2, v5, [I

    const v3, 0x7f060132

    aput v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setColorSchemeResources([I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setRefreshOnce(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    new-instance v2, Lcom/samsung/android/settings/wifi/ListAnimationController$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$5;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setOnRefreshListener(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;)V

    goto :goto_2
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setListDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    return-void
.end method

.method public setWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-void
.end method

.method public updateEmptyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView(Z)V

    return-void
.end method

.method public updateEmptyView(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string/jumbo v0, "WifiSettings.VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEmptyView - list item AvailableAPCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getAvailableAPCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ConnectedAPCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getConnectedAPCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", restriction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mUiRestrictionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mUiRestrictionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getAvailableAPCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getConnectedAPCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateWithAnimation(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->stopToUpdateAccessPoint()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setRefreshing(Z)V

    :cond_1
    const-string/jumbo v2, "WifiSettings.VI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWithAnimation size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", updatedScanResult :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "WifiSettings.VI"

    const-string/jumbo v3, "updateWithAnimation getAvailableAccesspointGroup is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getAvailableAPCount()I

    move-result v2

    if-eqz v2, :cond_4

    xor-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_6

    :cond_4
    const-string/jumbo v2, "WifiSettings.VI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccessPointList size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->setAccessPointList(Ljava/util/List;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    :cond_5
    return-void

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getAccessPointList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getDeleteItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getInsertItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "WifiSettings.VI"

    const-string/jumbo v3, "animation is not start,"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    :cond_7
    return-void

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getSortedFlatPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getSortedFlatPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_9
    return-void
.end method
