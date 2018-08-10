.class Lcom/android/settings/dashboard/SummaryLoader$1;
.super Ljava/lang/Object;
.source "SummaryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SummaryLoader;

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$summary:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    iput-object p2, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$component:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$summary:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v4, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v4}, Lcom/android/settings/dashboard/SummaryLoader;->-get1(Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$component:Landroid/content/ComponentName;

    invoke-static {v3, v4, v5}, Lcom/android/settings/dashboard/SummaryLoader;->-wrap0(Lcom/android/settings/dashboard/SummaryLoader;Ljava/util/List;Landroid/content/ComponentName;)Lcom/android/settingslib/drawer/Tile;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "SummaryLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find tile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v3, "SummaryLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSummary "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$summary:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "bo"

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v3}, Lcom/android/settings/dashboard/SummaryLoader;->-get0(Lcom/android/settings/dashboard/SummaryLoader;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v3}, Lcom/android/settings/dashboard/SummaryLoader;->-get0(Lcom/android/settings/dashboard/SummaryLoader;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v4, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$summary:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ","

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/settings/dashboard/SummaryLoader;->updateSummaryIfNeeded(Lcom/android/settingslib/drawer/Tile;Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v4, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$summary:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2, v4}, Lcom/android/settings/dashboard/SummaryLoader;->updateSummaryIfNeeded(Lcom/android/settingslib/drawer/Tile;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
