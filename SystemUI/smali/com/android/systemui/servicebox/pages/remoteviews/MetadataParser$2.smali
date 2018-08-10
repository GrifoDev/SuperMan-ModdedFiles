.class Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;
.super Landroid/os/AsyncTask;
.source "MetadataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;
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
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->-get0(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "doInBackground() mPm is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->-get0(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    sget-object v4, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "doInBackground() packages is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-static {v4, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->-wrap1(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;Landroid/content/pm/ApplicationInfo;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->-wrap0(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;)Z

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->-wrap2(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V

    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->-get1(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->-get1(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->-set0(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
