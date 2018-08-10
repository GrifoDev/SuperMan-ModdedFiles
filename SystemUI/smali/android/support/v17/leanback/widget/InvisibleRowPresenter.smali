.class public Landroid/support/v17/leanback/widget/InvisibleRowPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "InvisibleRowPresenter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/InvisibleRowPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    return-void
.end method


# virtual methods
.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
