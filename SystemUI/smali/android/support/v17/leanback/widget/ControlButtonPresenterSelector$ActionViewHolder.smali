.class Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "ControlButtonPresenterSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionViewHolder"
.end annotation


# instance fields
.field mFocusableView:Landroid/view/View;

.field mIcon:Landroid/widget/ImageView;

.field mLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Landroid/support/v17/leanback/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mIcon:Landroid/widget/ImageView;

    sget v0, Landroid/support/v17/leanback/R$id;->label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mLabel:Landroid/widget/TextView;

    sget v0, Landroid/support/v17/leanback/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;->mFocusableView:Landroid/view/View;

    return-void
.end method
