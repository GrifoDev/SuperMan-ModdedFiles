.class public abstract Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "AbstractMediaListHeaderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mBackgroundColor:I

    iput-object v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    return-void
.end method


# virtual methods
.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mContext:Landroid/content/Context;

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$layout;->lb_media_list_header:I

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    new-instance v1, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;

    invoke-direct {v1, v2}, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mBackgroundColorSet:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    iget v4, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->mBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onBindMediaListHeaderViewHolder(Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;Ljava/lang/Object;)V
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    check-cast p1, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;->onBindMediaListHeaderViewHolder(Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method
