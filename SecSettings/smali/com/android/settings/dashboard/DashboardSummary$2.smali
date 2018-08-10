.class Lcom/android/settings/dashboard/DashboardSummary$2;
.super Landroid/os/AsyncTask;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummary;->initDashBoardCategory()V
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
        "Ljava/util/List",
        "<",
        "Lcom/android/settingslib/drawer/DashboardCategory;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    const-string/jumbo v1, "init category doInBack"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    const-string/jumbo v1, "getDashboardFeatureProvider"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/dashboard/DashboardSummary;->-set0(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardFeatureProvider;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v1, "mDashboardFeatureProvider getAllCategories"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardSummary;->-get2(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "init category post"

    invoke-static {v0}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->-set1(Lcom/android/settings/dashboard/DashboardSummary;Z)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    new-instance v1, Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings.category.ia.homepage"

    invoke-direct {v1, v2, v3}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->-set4(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader;

    :cond_0
    const-string/jumbo v0, "mAdapter setCategory"

    invoke-static {v0}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->-get0(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Ljava/util/List;)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void
.end method
