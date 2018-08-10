.class Landroid/support/v17/leanback/widget/MediaItemActionPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "MediaItemActionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/MediaItemActionPresenter$ViewHolder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/MediaItemActionPresenter$ViewHolder;

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/MediaItemActionPresenter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_row_media_item_action:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/support/v17/leanback/widget/MediaItemActionPresenter$ViewHolder;

    invoke-direct {v2, v0}, Landroid/support/v17/leanback/widget/MediaItemActionPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method
