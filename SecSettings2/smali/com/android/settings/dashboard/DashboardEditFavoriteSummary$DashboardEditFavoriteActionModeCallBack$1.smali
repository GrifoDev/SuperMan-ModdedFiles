.class Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack$1;
.super Ljava/lang/Object;
.source "DashboardEditFavoriteSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack$1;->this$1:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack$1;->this$1:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->-get0(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
