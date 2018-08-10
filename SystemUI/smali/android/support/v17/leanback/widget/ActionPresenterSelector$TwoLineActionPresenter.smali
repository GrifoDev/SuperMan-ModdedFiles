.class Landroid/support/v17/leanback/widget/ActionPresenterSelector$TwoLineActionPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "ActionPresenterSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ActionPresenterSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TwoLineActionPresenter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/Action;

    move-object v7, p1

    check-cast v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v0, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mAction:Landroid/support/v17/leanback/widget/Action;

    if-eqz v2, :cond_0

    iget-object v8, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroid/support/v17/leanback/R$dimen;->lb_action_with_icon_padding_start:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v8, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroid/support/v17/leanback/R$dimen;->lb_action_with_icon_padding_end:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v8, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v8, v6, v11, v1, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_0
    iget v8, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    iget-object v8, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v8, v10, v10, v2, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getLabel2()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_0
    iget-object v8, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroid/support/v17/leanback/R$dimen;->lb_action_padding_horizontal:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v8, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v8, v5, v11, v5, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_1
    iget-object v8, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v8, v2, v10, v10, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v8, v7, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_action_2_lines:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iput-object v2, v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mAction:Landroid/support/v17/leanback/widget/Action;

    return-void
.end method
