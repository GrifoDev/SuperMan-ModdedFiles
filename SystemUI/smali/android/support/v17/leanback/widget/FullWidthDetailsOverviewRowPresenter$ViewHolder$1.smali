.class Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$1;
.super Ljava/lang/Object;
.source "FullWidthDetailsOverviewRowPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method
