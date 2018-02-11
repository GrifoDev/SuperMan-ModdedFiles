.class public Lcom/android/systemui/recents/views/HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HeaderViewHolder.java"


# instance fields
.field public contentView:Landroid/widget/LinearLayout;

.field public labelView:Landroid/widget/TextView;

.field public lineView:Landroid/view/View;

.field mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f130320

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->contentView:Landroid/widget/LinearLayout;

    const v0, 0x7f1301ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    const v0, 0x7f130322

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->lineView:Landroid/view/View;

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getAttr()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    return-void
.end method


# virtual methods
.method public onBind(IZI)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget v0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->INDEX_HEADER_RECOMMENDATION_APPS:I

    if-ne p1, v0, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->contentView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    const v1, 0x7f0f05e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextDarkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->lineView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextDarkColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->INDEX_HEADER_MULTI_WINDOW_APPS:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    const v1, 0x7f0f05e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextWhiteColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowSize:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v2, v2, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowYDistance:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v3, v3, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowColor:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->lineView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextWhiteColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method public onUnbind()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->contentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
