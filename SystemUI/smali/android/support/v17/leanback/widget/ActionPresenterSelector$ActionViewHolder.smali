.class Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "ActionPresenterSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ActionPresenterSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionViewHolder"
.end annotation


# instance fields
.field mAction:Landroid/support/v17/leanback/widget/Action;

.field mButton:Landroid/widget/Button;

.field mLayoutDirection:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Landroid/support/v17/leanback/R$id;->lb_action_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mButton:Landroid/widget/Button;

    iput p2, p0, Landroid/support/v17/leanback/widget/ActionPresenterSelector$ActionViewHolder;->mLayoutDirection:I

    return-void
.end method
