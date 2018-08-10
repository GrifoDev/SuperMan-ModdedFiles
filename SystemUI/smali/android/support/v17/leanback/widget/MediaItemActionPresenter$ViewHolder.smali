.class Landroid/support/v17/leanback/widget/MediaItemActionPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "MediaItemActionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/MediaItemActionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field final mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Landroid/support/v17/leanback/R$id;->actionIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaItemActionPresenter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaItemActionPresenter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method
