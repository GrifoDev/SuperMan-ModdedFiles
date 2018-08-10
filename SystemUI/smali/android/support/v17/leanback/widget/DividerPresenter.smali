.class public Landroid/support/v17/leanback/widget/DividerPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "DividerPresenter.java"


# instance fields
.field private final mLayoutResourceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_divider:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/DividerPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    iput p1, p0, Landroid/support/v17/leanback/widget/DividerPresenter;->mLayoutResourceId:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/widget/DividerPresenter;->mLayoutResourceId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method
