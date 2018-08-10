.class Lcom/android/settings/dashboard/DashboardAdapter$6;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->onBindSuggestionHeader(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;

.field final synthetic val$suggestionCategory:I


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iput p2, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->val$suggestionCategory:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-get4(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settingslib/SuggestionParser;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData;->getSuggestions()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->val$suggestionCategory:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    iget-object v1, v1, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/SuggestionParser;->markCategoryDone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v0, v1, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    new-instance v2, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v2, v0}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>(Lcom/android/settings/dashboard/DashboardData;)V

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v3}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/DashboardData$Builder;->setContext(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$6;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    return-void
.end method
