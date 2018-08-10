.class Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;
.super Ljava/lang/Object;
.source "DetailsOverviewSharedElementHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->onBindToDrawable(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelWidth:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    return-void
.end method
