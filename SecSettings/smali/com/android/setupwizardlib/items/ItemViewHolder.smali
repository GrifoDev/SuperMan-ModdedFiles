.class Lcom/android/setupwizardlib/items/ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ItemViewHolder.java"

# interfaces
.implements Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;


# instance fields
.field private mIsEnabled:Z

.field private mItem:Lcom/android/setupwizardlib/items/IItem;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItem()Lcom/android/setupwizardlib/items/IItem;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->mItem:Lcom/android/setupwizardlib/items/IItem;

    return-object v0
.end method

.method public isDividerAllowedAbove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->mIsEnabled:Z

    return v0
.end method

.method public isDividerAllowedBelow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->mIsEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->mIsEnabled:Z

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public setItem(Lcom/android/setupwizardlib/items/IItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->mItem:Lcom/android/setupwizardlib/items/IItem;

    return-void
.end method
