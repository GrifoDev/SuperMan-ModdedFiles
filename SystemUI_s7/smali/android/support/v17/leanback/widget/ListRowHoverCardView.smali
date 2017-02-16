.class public final Landroid/support/v17/leanback/widget/ListRowHoverCardView;
.super Landroid/widget/LinearLayout;
.source "ListRowHoverCardView.java"


# instance fields
.field private final mDescriptionView:Landroid/widget/TextView;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ListRowHoverCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_list_row_hovercard:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v1, Landroid/support/v17/leanback/R$id;->title:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowHoverCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/ListRowHoverCardView;->mTitleView:Landroid/widget/TextView;

    sget v1, Landroid/support/v17/leanback/R$id;->description:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowHoverCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/ListRowHoverCardView;->mDescriptionView:Landroid/widget/TextView;

    return-void
.end method
