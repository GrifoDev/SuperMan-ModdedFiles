.class final Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareSimpleSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecentHistoryListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mRecentHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/share/SShareSimpleSharing;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mInitialIntents:[Landroid/content/Intent;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    return-void
.end method

.method private final setDefaultView(Landroid/view/View;Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing;->-wrap0(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v0

    const v5, 0x1020014

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x1020015

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v6, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v6}, Lcom/samsung/android/share/SShareSimpleSharing;->-get1(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10502c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/samsung/android/share/SShareSimpleSharing;->-set0(Lcom/samsung/android/share/SShareSimpleSharing;F)F

    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing;->-get0(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v5

    mul-float/2addr v5, v0

    invoke-virtual {v3, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing;->-get0(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v5

    mul-float/2addr v5, v0

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x10204bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x10804df

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    const v5, 0x10804b5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing;->-get1(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060129

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method private final setItemView(Landroid/view/View;Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;)V
    .locals 11

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v8}, Lcom/samsung/android/share/SShareSimpleSharing;->-wrap0(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v2

    const v8, 0x1020014

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x1020015

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x10204b8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v9, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v9}, Lcom/samsung/android/share/SShareSimpleSharing;->-get1(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10502c6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/samsung/android/share/SShareSimpleSharing;->-set0(Lcom/samsung/android/share/SShareSimpleSharing;F)F

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v8}, Lcom/samsung/android/share/SShareSimpleSharing;->-get0(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v8

    mul-float/2addr v8, v2

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v8, 0x10204be

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v1, 0x10804b7

    const v0, 0x1060129

    const v8, 0x10804df

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    iget v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    :cond_0
    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_1

    iget v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    const v0, 0x106012b

    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_2

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v8}, Lcom/samsung/android/share/SShareSimpleSharing;->-get1(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v9, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v9}, Lcom/samsung/android/share/SShareSimpleSharing;->-get1(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10502c7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/samsung/android/share/SShareSimpleSharing;->-set0(Lcom/samsung/android/share/SShareSimpleSharing;F)F

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v8}, Lcom/samsung/android/share/SShareSimpleSharing;->-get0(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v8

    mul-float/2addr v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v9, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v9}, Lcom/samsung/android/share/SShareSimpleSharing;->-get1(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10502c6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/samsung/android/share/SShareSimpleSharing;->-set0(Lcom/samsung/android/share/SShareSimpleSharing;F)F

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-static {v8}, Lcom/samsung/android/share/SShareSimpleSharing;->-get0(Lcom/samsung/android/share/SShareSimpleSharing;)F

    move-result v8

    mul-float/2addr v8, v2

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    const v0, 0x106012a

    goto :goto_1

    :cond_5
    iget v8, p2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const v1, 0x10804b7

    const v0, 0x106012a

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_1
    const v1, 0x10804b5

    const v0, 0x1060129

    goto :goto_2

    :pswitch_2
    const v1, 0x10804b7

    const v0, 0x106012a

    goto :goto_2

    :pswitch_3
    const v1, 0x10804b6

    const v0, 0x106012a

    goto :goto_2

    :pswitch_4
    const v1, 0x10800cb

    const v0, 0x106012c

    goto :goto_2

    :pswitch_5
    const v1, 0x10800cc

    const v0, 0x106012c

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const v2, 0x10204b8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090110

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->setItemView(Landroid/view/View;Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;)V

    :goto_1
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090111

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, p2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->setDefaultView(Landroid/view/View;Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;)V

    goto :goto_1
.end method
