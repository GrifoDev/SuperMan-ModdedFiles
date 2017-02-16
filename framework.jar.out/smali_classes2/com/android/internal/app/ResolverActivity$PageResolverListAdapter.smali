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
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 3076
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3077
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    .line 3079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    .line 3076
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const v7, 0x10502c6

    const/4 v6, 0x2

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 3110
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;

    .line 3111
    .local v2, "holder":Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-wrap3(Lcom/android/internal/app/ResolverActivity;)F

    move-result v1

    .line 3112
    .local v1, "fontScale":F
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-wrap1(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    .line 3114
    .local v3, "landscape":Z
    if-eqz v3, :cond_1

    .line 3115
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get23(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3116
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

    .line 3117
    :cond_0
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLines(I)V

    .line 3126
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_6

    .line 3138
    :cond_2
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3140
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/internal/app/ResolverActivity;->-set0(Lcom/android/internal/app/ResolverActivity;F)F

    .line 3141
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3142
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)F

    move-result v5

    mul-float/2addr v5, v1

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3143
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3144
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3147
    :goto_1
    instance-of v4, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v4, :cond_3

    move-object v4, p2

    .line 3148
    nop

    nop

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3151
    :cond_3
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3154
    :goto_2
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 3155
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3156
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 3157
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3158
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3159
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3109
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_3
    return-void

    .line 3120
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get25(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get24(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3121
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_0

    .line 3127
    :cond_6
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3129
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/internal/app/ResolverActivity;->-set0(Lcom/android/internal/app/ResolverActivity;F)F

    .line 3130
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3131
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)F

    move-result v5

    mul-float/2addr v5, v1

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3132
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text3:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3134
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/internal/app/ResolverActivity;->-set0(Lcom/android/internal/app/ResolverActivity;F)F

    .line 3135
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3136
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->text2:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3149
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

    .line 3161
    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_8
    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 3083
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 3084
    .local v0, "result":I
    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3087
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3092
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 3097
    if-nez p2, :cond_0

    .line 3098
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x109010c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3100
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;-><init>(Landroid/view/View;)V

    .line 3101
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3105
    .end local v0    # "holder":Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 3106
    return-object v1

    .line 3103
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method
