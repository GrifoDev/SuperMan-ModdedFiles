.class Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ControlButtonPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "ControlButtonPresenterSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ControlButtonPresenter"
.end annotation


# instance fields
.field private mLayoutResourceId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    iput p1, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ControlButtonPresenter;->mLayoutResourceId:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/Action;

    move-object v2, p1

    check-cast v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;

    iget-object v3, v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    iget-object v3, v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mFocusableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mFocusableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mFocusableView:Landroid/view/View;

    const v4, 0x8000

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ControlButtonPresenter;->mLayoutResourceId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 3

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mFocusableView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnClickListener(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V
    .locals 1

    check-cast p1, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mFocusableView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
