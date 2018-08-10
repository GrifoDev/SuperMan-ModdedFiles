.class Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;
.super Landroid/os/AsyncTask;
.source "SecValueTrackerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/search/SecValueTrackerActivity;->updateSearchIndexing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/SecValueTrackerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const-string/jumbo v0, "SecValueTrackerActivity"

    const-string/jumbo v1, "reload All categories"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;

    invoke-static {v0}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->getSettingPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/drawer/CategoryManager;->reloadAllCategories(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const-string/jumbo v0, "SecValueTrackerActivity"

    const-string/jumbo v1, "Set categories from FeatureProvider"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;

    invoke-virtual {v1, v2}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->-set0(Lcom/samsung/android/settings/search/SecValueTrackerActivity;Lcom/android/settings/dashboard/DashboardFeatureProvider;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->-get0(Lcom/samsung/android/settings/search/SecValueTrackerActivity;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecIndexModel;->setCategories(Ljava/util/List;)V

    const-string/jumbo v0, "SecValueTrackerActivity"

    const-string/jumbo v1, "start search indexing"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->startSearchIndexing(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->this$0:Lcom/samsung/android/settings/search/SecValueTrackerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->finish()V

    return-void
.end method
