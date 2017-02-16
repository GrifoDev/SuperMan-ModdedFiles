.class Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;
.super Landroid/os/AsyncTask;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lcom/android/systemui/qs/QSTile",
        "<*>;>;",
        "Ljava/lang/Void;",
        "Ljava/util/Collection",
        "<",
        "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;)V

    return-void
.end method

.method private getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile$State;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile$State;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    return-object v0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->doInBackground([Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/Collection;)Ljava/util/Collection;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v11, v0, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v10, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v6}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v13

    if-eqz v13, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    const/4 v3, 0x0

    invoke-static {v0, v1, v4, v13, v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap2(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v0, :cond_2

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0, v11, v7}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap0(Lcom/android/systemui/qs/customize/TileQueryHelper;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string/jumbo v0, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v3, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x106000b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0, v11}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v5}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap1(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v3, "null"

    goto :goto_1

    :cond_4
    return-object v14
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->onPostExecute(Ljava/util/Collection;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;->onTilesChanged(Ljava/util/List;)V

    return-void
.end method
