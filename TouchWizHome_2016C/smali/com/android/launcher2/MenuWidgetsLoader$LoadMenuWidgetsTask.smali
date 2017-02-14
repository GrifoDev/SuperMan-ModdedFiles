.class Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;
.super Landroid/os/AsyncTask;
.source "MenuWidgetsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgetsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMenuWidgetsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/launcher2/AvailableWidget;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mTobeUpdated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateDataVersion:Z

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgetsLoader;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuWidgetsLoader;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->mUpdateDataVersion:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgetsLoader;Lcom/android/launcher2/MenuWidgetsLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;-><init>(Lcom/android/launcher2/MenuWidgetsLoader;)V

    return-void
.end method

.method private checkUpdate(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->mTobeUpdated:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->mTobeUpdated:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    const-string v1, "Launcher.MenuWidgetsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MenuWidgetLoader-start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # getter for: Lcom/android/launcher2/MenuWidgetsLoader;->mLoadCompleted:Z
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgetsLoader;->access$200(Lcom/android/launcher2/MenuWidgetsLoader;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsLoader;->getUpdatedPackages()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->mTobeUpdated:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # getter for: Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgetsLoader;->access$300(Lcom/android/launcher2/MenuWidgetsLoader;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->checkUpdate(Ljava/util/List;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->mUpdateDataVersion:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    invoke-virtual {v1, v0, p0}, Lcom/android/launcher2/MenuWidgetsLoader;->getAvailableWidgetList(Ljava/util/List;Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;)V

    return-object v0
.end method

.method public onCancelled()V
    .locals 4

    const-string v1, "Launcher.MenuWidgetsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MenuWidgetLoader-cancel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # getter for: Lcom/android/launcher2/MenuWidgetsLoader;->mLoadCompleted:Z
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgetsLoader;->access$200(Lcom/android/launcher2/MenuWidgetsLoader;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->mTobeUpdated:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->mTobeUpdated:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->mTobeUpdated:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->mTobeUpdated:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuWidgetsLoader;->packageChanged([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # getter for: Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;
    invoke-static {v5}, Lcom/android/launcher2/MenuWidgetsLoader;->access$300(Lcom/android/launcher2/MenuWidgetsLoader;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # getter for: Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;
    invoke-static {v5}, Lcom/android/launcher2/MenuWidgetsLoader;->access$300(Lcom/android/launcher2/MenuWidgetsLoader;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->mUpdateDataVersion:Z

    if-nez v5, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_4

    :cond_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # operator++ for: Lcom/android/launcher2/MenuWidgetsLoader;->mDataVersion:J
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgetsLoader;->access$408(Lcom/android/launcher2/MenuWidgetsLoader;)J

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # setter for: Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;
    invoke-static {v3, p1}, Lcom/android/launcher2/MenuWidgetsLoader;->access$302(Lcom/android/launcher2/MenuWidgetsLoader;Ljava/util/List;)Ljava/util/List;

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # setter for: Lcom/android/launcher2/MenuWidgetsLoader;->mLoadCompleted:Z
    invoke-static {v3, v4}, Lcom/android/launcher2/MenuWidgetsLoader;->access$202(Lcom/android/launcher2/MenuWidgetsLoader;Z)Z

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # getter for: Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgetsLoader;->access$300(Lcom/android/launcher2/MenuWidgetsLoader;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # getter for: Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgetsLoader;->access$300(Lcom/android/launcher2/MenuWidgetsLoader;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    const-string v3, "Launcher.MenuWidgetsLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MenuWidgetLoader-done : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , update : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # getter for: Lcom/android/launcher2/MenuWidgetsLoader;->mWidgetsLoadListener:Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgetsLoader;->access$500(Lcom/android/launcher2/MenuWidgetsLoader;)Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    # getter for: Lcom/android/launcher2/MenuWidgetsLoader;->mWidgetsLoadListener:Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgetsLoader;->access$500(Lcom/android/launcher2/MenuWidgetsLoader;)Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;->loadCompleted()V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->this$0:Lcom/android/launcher2/MenuWidgetsLoader;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgetsLoader;->checkWidgetSingleInstance()V

    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    goto :goto_2
.end method
