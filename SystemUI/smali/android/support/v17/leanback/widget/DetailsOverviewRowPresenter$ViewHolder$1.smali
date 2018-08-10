.class Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$1;
.super Ljava/lang/Object;
.source "DetailsOverviewRowPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->bindImageDrawable(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V

    return-void
.end method
