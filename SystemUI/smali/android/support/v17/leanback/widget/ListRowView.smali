.class public final Landroid/support/v17/leanback/widget/ListRowView;
.super Landroid/widget/LinearLayout;
.source "ListRowView.java"


# instance fields
.field private mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ListRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ListRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_list_row:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v1, Landroid/support/v17/leanback/R$id;->row_content:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/HorizontalGridView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/ListRowView;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowView;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setHasFixedSize(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowView;->setOrientation(I)V

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ListRowView;->setDescendantFocusability(I)V

    return-void
.end method


# virtual methods
.method public getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowView;->mGridView:Landroid/support/v17/leanback/widget/HorizontalGridView;

    return-object v0
.end method
