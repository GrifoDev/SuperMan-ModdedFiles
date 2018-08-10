.class Landroid/support/v17/leanback/widget/ActionPresenterSelector$OneLineActionPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "ActionPresenterSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ActionPresenterSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OneLineActionPresenter"
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

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/Action;

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;

    iput-object v0, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mAction:Landroid/support/v17/leanback/widget/Action;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Action;->getLabel1()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_action_1_line:I

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
    .locals 1

    check-cast p1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mAction:Landroid/support/v17/leanback/widget/Action;

    return-void
.end method
