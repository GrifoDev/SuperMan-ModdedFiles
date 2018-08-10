.class Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;
.super Landroid/os/AsyncTask;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settingslib/drawer/Tile;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v1, "SuggestionLoader doInBack"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/dashboard/DashboardSummary;->-set2(Lcom/android/settings/dashboard/DashboardSummary;Z)Z

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummary;->getSuggestion()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "SuggestionLoader onPost"

    invoke-static {v0}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->-get3(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->updateCategoryAndSuggestion(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary;->refreshSummaryLoader()V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->-set2(Lcom/android/settings/dashboard/DashboardSummary;Z)Z

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void
.end method
