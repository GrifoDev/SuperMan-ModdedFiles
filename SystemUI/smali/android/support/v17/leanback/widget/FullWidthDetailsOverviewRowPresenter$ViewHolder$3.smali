.class Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$3;
.super Ljava/lang/Object;
.source "FullWidthDetailsOverviewRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnChildSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->dispatchItemSelection(Landroid/view/View;)V

    return-void
.end method
