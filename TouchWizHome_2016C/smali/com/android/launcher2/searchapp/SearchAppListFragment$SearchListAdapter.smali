.class Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchAppListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/SearchAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchListAdapter"
.end annotation


# instance fields
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

.field mSearchText:Ljava/lang/String;

.field mTextColor:I

.field final synthetic this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mNeedDarkFont:Z

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;

    invoke-direct {v0, p1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mFilter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;

    iput-object p2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mContext:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->updateLayout()V

    return-void
.end method

.method private displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 10

    const v9, 0x7f0e0040

    invoke-static {}, Lcom/android/launcher2/Launcher;->getEnableHighContrast()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, -0x1

    iget-object v6, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mSearchText:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/launcher2/Utilities;->isChineseAsLocaleDefault()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "en_US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    new-instance v7, Lcom/android/launcher2/searchapp/PrefixHighlighter;

    iget-object v8, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v8}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/android/launcher2/searchapp/PrefixHighlighter;-><init>(I)V

    invoke-static {v6, v7}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$2002(Lcom/android/launcher2/searchapp/SearchAppListFragment;Lcom/android/launcher2/searchapp/PrefixHighlighter;)Lcom/android/launcher2/searchapp/PrefixHighlighter;

    iget-object v6, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v6}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$2000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/PrefixHighlighter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v6, p2, v7}, Lcom/android/launcher2/searchapp/PrefixHighlighter;->apply(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v6, p2, v7}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v7}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v3, v1

    const/4 v8, 0x0

    invoke-interface {v0, v6, v3, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/launcher2/searchapp/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AppInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->getItem(I)Lcom/android/launcher2/searchapp/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-virtual {v11}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-virtual {v11}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v2, 0x0

    if-nez p2, :cond_1

    const/4 v2, 0x1

    const v11, 0x7f040047

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    const v11, 0x7f1100fa

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v9, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mContainerMarginStart:I

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mContainerMarginEnd:I

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v11}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$2200(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v11

    new-array v3, v11, [Lcom/android/launcher2/searchapp/AppViewHolder;

    const/4 v4, 0x0

    :goto_1
    array-length v11, v3

    if-ge v4, v11, :cond_5

    const v11, 0x7f040046

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    new-instance v11, Lcom/android/launcher2/searchapp/AppViewHolder;

    invoke-direct {v11}, Lcom/android/launcher2/searchapp/AppViewHolder;-><init>()V

    aput-object v11, v3, v4

    aget-object v11, v3, v4

    iput-object v8, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    aget-object v12, v3, v4

    const v11, 0x7f1100fd

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mTextColor:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mNeedDarkFont:Z

    if-eqz v11, :cond_3

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    const/high16 v12, 0x40400000    # 3.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v15}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e002e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_3
    aget-object v12, v3, v4

    const v11, 0x7f1100fc

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    aget-object v12, v3, v4

    const v11, 0x7f1100fb

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-lez v4, :cond_4

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v1, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    aget-object v11, v3, v4

    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-virtual {v13}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v12, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    invoke-virtual {v10, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x0

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v10, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v11}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v11

    mul-int v5, p1, v11

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v11}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$2200(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v11

    if-ge v4, v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v11}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v11

    if-ge v4, v11, :cond_c

    add-int v11, v5, v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    add-int v12, v5, v4

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_c

    aget-object v12, v3, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    add-int v13, v5, v4

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/searchapp/AppInfo;

    iput-object v11, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    sget-object v12, Lcom/android/launcher2/FocusHelper;->SEARCHAPPLIST_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-lez v4, :cond_6

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    if-eqz v11, :cond_6

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v12}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/framework/HoverPopupWindow;->TYPE_NONE()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v12}, Lcom/android/launcher2/searchapp/AppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->bringToFront()V

    aget-object v11, v3, v4

    move/from16 v0, p1

    iput v0, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->rowIndex:I

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v12}, Lcom/android/launcher2/searchapp/AppInfo;->getChecked()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v11}, Lcom/android/launcher2/searchapp/AppInfo;->getEnabled()Z

    move-result v11

    if-eqz v11, :cond_a

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setEnabled(Z)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    iget-object v12, v12, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    iget-object v12, v12, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    iget-object v12, v12, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_9

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v3, v4

    iget-object v13, v13, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v13}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v13}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0900cf

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v11}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    const/16 v12, 0x15

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    :cond_7
    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v12}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/android/launcher2/searchapp/AppViewHolder;

    move-object v3, v11

    check-cast v3, [Lcom/android/launcher2/searchapp/AppViewHolder;

    goto/16 :goto_2

    :cond_9
    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v3, v4

    iget-object v13, v13, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v13}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v13}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0900dc

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_a
    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setEnabled(Z)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v12}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_b
    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v12}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    aget-object v11, v3, v4

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->appInfo:Lcom/android/launcher2/searchapp/AppInfo;

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v11}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I

    move-result v11

    if-ge v4, v11, :cond_e

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_d
    :goto_6
    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->title:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_5

    :cond_e
    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->layout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-lez v4, :cond_d

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    if-eqz v11, :cond_d

    aget-object v11, v3, v4

    iget-object v11, v11, Lcom/android/launcher2/searchapp/AppViewHolder;->leftGap:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_f
    move-object/from16 v11, p2

    goto/16 :goto_0
.end method

.method public runFilter()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mFilter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->filterWidgets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$2100(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppController;->getMoreAppsListState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1400(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1400(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method public unBind()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mFilter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mSearchText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mAppInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mAppInfoList:Ljava/util/ArrayList;

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

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mContainerMarginEnd:I

    iput v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mContainerMarginStart:I

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    iput-boolean v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mNeedDarkFont:Z

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

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
    iput v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->mTextColor:I

    return-void
.end method
