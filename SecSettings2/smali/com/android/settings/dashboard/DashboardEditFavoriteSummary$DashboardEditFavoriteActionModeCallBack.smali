.class Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;
.super Ljava/lang/Object;
.source "DashboardEditFavoriteSummary.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DashboardEditFavoriteActionModeCallBack"
.end annotation


# instance fields
.field private mActionBack:Landroid/widget/ImageView;

.field private mCount:Landroid/widget/TextView;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;-><init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f110244

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mActionBack:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mActionBack:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    const v2, 0x7f0b0eb6

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mActionBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack$1;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack$1;-><init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f110245

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mCount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f1100e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mTitle:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectionMenu()V
    .locals 7

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getFavoriteCount(Landroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0eb7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->mCount:Landroid/widget/TextView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
