.class public Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "VerticalGridPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/VerticalGridPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

.field mInitialized:Z

.field mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-void
.end method


# virtual methods
.method public getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method
