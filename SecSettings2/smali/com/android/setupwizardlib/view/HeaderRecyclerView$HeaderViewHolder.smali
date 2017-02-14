.class Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HeaderRecyclerView.java"

# interfaces
.implements Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/view/HeaderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isDividerAllowedAbove()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDividerAllowedBelow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
