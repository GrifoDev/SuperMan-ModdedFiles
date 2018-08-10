.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Host"
.end annotation


# instance fields
.field callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

.field id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

.field lastWidgetUpdateRequestId:J

.field tag:I

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field

.field zombie:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->hostsPackageForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>()V

    return-void
.end method

.method private hostsPackageForUser(Ljava/lang/String;I)Z
    .locals 4

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method public getPendingUpdatesForId(ILandroid/util/LongSparseArray;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;)Z"
        }
    .end annotation

    const/4 v11, 0x0

    iget-wide v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateRequestId:J

    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v10, p1, :cond_2

    invoke-virtual {p2}, Landroid/util/LongSparseArray;->clear()V

    iget-object v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateRequestIds:Landroid/util/SparseLongArray;

    invoke-virtual {v10}, Landroid/util/SparseLongArray;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_1
    if-ltz v3, :cond_1

    iget-object v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateRequestIds:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    cmp-long v10, v4, v8

    if-gtz v10, :cond_0

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    iget-object v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateRequestIds:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-static {p1, v2}, Landroid/appwidget/PendingHostUpdate;->viewDataChanged(II)Landroid/appwidget/PendingHostUpdate;

    move-result-object v6

    :goto_3
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_0
    iget-object v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p1, v10}, Landroid/appwidget/PendingHostUpdate;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/PendingHostUpdate;

    move-result-object v6

    goto :goto_3

    :pswitch_1
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap0(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v10

    invoke-static {p1, v10}, Landroid/appwidget/PendingHostUpdate;->updateAppWidget(ILandroid/widget/RemoteViews;)Landroid/appwidget/PendingHostUpdate;

    move-result-object v6

    goto :goto_3

    :cond_1
    const/4 v10, 0x1

    return v10

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUserId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public isInPackageForUser(Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Host{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " Z"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
