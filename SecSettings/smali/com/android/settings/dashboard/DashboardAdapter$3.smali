.class Lcom/android/settings/dashboard/DashboardAdapter$3;
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

.field final synthetic val$tile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->val$tile:Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get2(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardAdapter;->-get3(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v3}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->val$tile:Lcom/android/settingslib/drawer/Tile;

    invoke-interface {v2, v3, v4}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    const/16 v4, 0x182

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$3;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iget-object v1, v1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->startSuggestion(Landroid/content/Intent;)V

    return-void
.end method
