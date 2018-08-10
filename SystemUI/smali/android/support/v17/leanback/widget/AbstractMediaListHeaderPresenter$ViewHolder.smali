.class public Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
.source "AbstractMediaListHeaderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mHeaderView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Landroid/support/v17/leanback/R$id;->mediaListHeader:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaListHeaderPresenter$ViewHolder;->mHeaderView:Landroid/widget/TextView;

    return-void
.end method
