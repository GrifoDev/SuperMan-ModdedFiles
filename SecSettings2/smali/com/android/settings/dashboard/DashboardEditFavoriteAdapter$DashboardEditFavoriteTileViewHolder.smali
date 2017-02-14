.class public Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DashboardEditFavoriteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DashboardEditFavoriteTileViewHolder"
.end annotation


# instance fields
.field public final checkbox:Landroid/widget/CheckBox;

.field public final icon:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f1100f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->checkbox:Landroid/widget/CheckBox;

    return-void
.end method
