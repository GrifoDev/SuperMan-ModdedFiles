.class public Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchAppListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/SearchAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation


# instance fields
.field mAppIndexInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AppIndexInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContainerMarginEnd:I

.field mContainerMarginStart:I

.field mContext:Landroid/content/Context;

.field mFilter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;

.field mNeedDarkFont:Z

.field mTextColor:I

.field final synthetic this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mNeedDarkFont:Z

    iput-object p2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;

    invoke-direct {v0, p1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mFilter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;

    invoke-static {p1, v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1902(Lcom/android/launcher2/searchapp/SearchAppListFragment;I)I

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->updateLayout()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/launcher2/searchapp/AppIndexInfo;
    .locals 2

    move v0, p1

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppIndexInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppIndexInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppIndexInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/searchapp/AppIndexInfo;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->getItem(I)Lcom/android/launcher2/searchapp/AppIndexInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    if-nez v21, :cond_0

    const/16 v21, 0x0

    :goto_0
    return-object v21

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const/4 v6, 0x0

    if-nez p2, :cond_1

    const/4 v6, 0x1

    const v21, 0x7f040045

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    const v21, 0x7f1100fa

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v21

    if-eqz v21, :cond_2

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mContainerMarginStart:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mContainerMarginEnd:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$2200(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v21

    move/from16 v0, v21

    new-array v10, v0, [Lcom/android/launcher2/searchapp/AppViewHolder;

    const/4 v11, 0x0

    :goto_1
    array-length v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_5

    new-instance v21, Lcom/android/launcher2/searchapp/AppViewHolder;

    invoke-direct/range {v21 .. v21}, Lcom/android/launcher2/searchapp/AppViewHolder;-><init>()V

    aput-object v21, v10, v11

    const v21, 0x7f040046

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    aget-object v21, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    aget-object v22, v10, v11

    const v21, 0x7f1100fd

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mTextColor:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mNeedDarkFont:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/high16 v22, 0x40400000    # 3.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0e002e

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v21 .. v25}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_3
    aget-object v22, v10, v11

    const v21, 0x7f1100fc

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    aget-object v22, v10, v11

    const v21, 0x7f1100fb

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-lez v11, :cond_4

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    aget-object v21, v10, v11

    new-instance v22, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_5
    const v21, 0x7f1100f8

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v21, 0x7f1100f9

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    sget-boolean v21, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v21, :cond_b

    const v5, 0x7f0e002f

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v21

    mul-int v12, p1, v21

    const v21, 0x7f1100f7

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v20, ""

    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$2200(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_e

    add-int v21, v12, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    add-int v22, v12, v11

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_e

    aget-object v22, v10, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    add-int v23, v12, v11

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/launcher2/FocusHelper;->SEARCHAPPLIST_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-lez v11, :cond_6

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setVisibility(I)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    aget-object v22, v10, v11

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    aget-object v22, v10, v11

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-static {}, Lcom/android/launcher2/framework/HoverPopupWindow;->TYPE_NONE()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    aget-object v21, v10, v11

    move/from16 v0, p1

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher2/searchapp/AppViewHolder;->rowIndex:I

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    aget-object v22, v10, v11

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/searchapp/AppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    aget-object v22, v10, v11

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/CheckBox;->bringToFront()V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    aget-object v22, v10, v11

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    aget-object v22, v10, v11

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/searchapp/AppInfo;->getChecked()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setChecked(Z)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/searchapp/AppInfo;->getEnabled()Z

    move-result v21

    if-eqz v21, :cond_d

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setEnabled(Z)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIconClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIconClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_c

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v23, v10, v11

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900cf

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5
    const/16 v21, 0x0

    aget-object v21, v10, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1700(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v10, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    :cond_7
    if-eqz v12, :cond_8

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    add-int v22, v12, v11

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1700(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    add-int v23, v12, v11

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    if-eqz v20, :cond_9

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    :cond_9
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0900d4

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Lcom/android/launcher2/searchapp/AppViewHolder;

    move-object/from16 v10, v21

    check-cast v10, [Lcom/android/launcher2/searchapp/AppViewHolder;

    const v21, 0x7f1100f8

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v21, 0x7f1100f9

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    goto/16 :goto_2

    :cond_b
    const v5, 0x7f0e0012

    goto/16 :goto_3

    :cond_c
    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v23, v10, v11

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0900dc

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_d
    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setEnabled(Z)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    aget-object v22, v10, v11

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_e
    aget-object v21, v10, v11

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_10

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f
    :goto_6
    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_5

    :cond_10
    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-lez v11, :cond_f

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    aget-object v21, v10, v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_11
    move-object/from16 v21, p2

    goto/16 :goto_0
.end method

.method public runFilter()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mFilter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->filterContainers()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppIndexInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$2300(Lcom/android/launcher2/searchapp/SearchAppListFragment;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public unBind()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mFilter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppIndexInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppIndexInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public updateLayout()V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mContainerMarginStart:I

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mContainerMarginEnd:I

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1902(Lcom/android/launcher2/searchapp/SearchAppListFragment;I)I

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$2300(Lcom/android/launcher2/searchapp/SearchAppListFragment;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    iput-boolean v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mNeedDarkFont:Z

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getHomeTextColor()I

    move-result v2

    const v3, 0x1ffffff

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getHomeTextColor()I

    move-result v0

    :cond_2
    iput v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mTextColor:I

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->isEnableFluidIndexScroll()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getListTitles(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setScrollIndexer(Ljava/util/List;)V

    :cond_3
    return-void
.end method
