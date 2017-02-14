.class Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageResolverListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field mKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 10

    const v7, 0x10502c6

    const/4 v6, 0x2

    const/16 v9, 0x8

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-wrap3(Lcom/android/internal/app/ResolverActivity;)F

    move-result v1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-wrap1(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get23(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->shouldTwoLineLabeInLandscape()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->-get11(Lcom/android/internal/app/ResolverActivity;)I

    move-result v5

    if-gt v4, v5, :cond_1

    :cond_0
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLines(I)V

    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_6

    :cond_2
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/internal/app/ResolverActivity;->-set0(Lcom/android/internal/app/ResolverActivity;F)F

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)F

    move-result v5

    mul-float/2addr v5, v1

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    instance-of v4, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v4, :cond_3

    move-object v4, p2

    nop

    nop

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get25(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get24(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/internal/app/ResolverActivity;->-set0(Lcom/android/internal/app/ResolverActivity;F)F

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)F

    move-result v5

    mul-float/2addr v5, v1

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/internal/app/ResolverActivity;->-set0(Lcom/android/internal/app/ResolverActivity;F)F

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text2:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    new-instance v5, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v4, p2

    nop

    nop

    iget-object v7, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v5, v6, v4, v7}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v8, [Ljava/lang/Void;

    invoke-virtual {v5, v4, v6}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    :cond_8
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x109010c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
