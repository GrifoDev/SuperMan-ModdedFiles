.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Widget"
.end annotation


# instance fields
.field appWidgetId:I

.field host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

.field includeBlackList:Z

.field lastUpdateTime:J

.field maskedViews:Landroid/widget/RemoteViews;

.field needToCheckBlackList:Z

.field options:Landroid/os/Bundle;

.field provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

.field remoteExceptionErr:Ljava/lang/String;

.field restoredId:I

.field tooLargeExceptionErr:Ljava/lang/String;

.field views:Landroid/widget/RemoteViews;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->clearMaskedViewsLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->remoteExceptionErr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->tooLargeExceptionErr:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->needToCheckBlackList:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>()V

    return-void
.end method

.method private clearMaskedViewsLocked()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->remoteExceptionErr:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->tooLargeExceptionErr:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->remoteExceptionErr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->tooLargeExceptionErr:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getEffectiveViewsLocked()Landroid/widget/RemoteViews;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->tooLargeExceptionErr:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method public semIsIncludeBlackList()Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->needToCheckBlackList:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get3()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get3()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1

    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get3()[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->needToCheckBlackList:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    const-string/jumbo v3, "AppWidgetServiceImpl"

    const-string/jumbo v4, "semIsIncludeBlackList, included in blackList so all patches will ignored"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->needToCheckBlackList:Z

    iput-boolean v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    const-string/jumbo v3, "AppWidgetServiceImpl"

    const-string/jumbo v4, "semIsIncludeBlackList, excluded in blackList so return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    return v3

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    return v3

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AppWidgetId{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
