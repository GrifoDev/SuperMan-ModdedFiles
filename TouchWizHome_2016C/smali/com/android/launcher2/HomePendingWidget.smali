.class Lcom/android/launcher2/HomePendingWidget;
.super Lcom/android/launcher2/HomePendingItem;
.source "HomePendingWidget.java"


# instance fields
.field configurationData:Landroid/os/Parcelable;

.field defSpans:[I

.field mBoundWidget:Landroid/appwidget/AppWidgetHostView;

.field private mHomeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;

.field mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field mimeType:Ljava/lang/String;

.field resizeMode:I

.field resizeSpans:[I


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomePendingItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->resizeSpans:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->defSpans:[I

    iput-object p1, p0, Lcom/android/launcher2/HomePendingWidget;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->componentName:Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->mTitle:Ljava/lang/String;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v1, p0, Lcom/android/launcher2/HomePendingWidget;->resizeMode:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p2, p0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher2/HomePendingWidget;->configurationData:Landroid/os/Parcelable;

    :cond_0
    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->resizeSpans:[I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->resizeSpans:[I

    iget-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->defSpans:[I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->defSpans:[I

    iget-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomePendingWidget;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public getDefSpans()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomePendingWidget;->defSpans:[I

    return-object v0
.end method

.method public getHomeWidgetItem()Lcom/android/launcher2/HomeWidgetItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomePendingWidget;->mHomeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;

    return-object v0
.end method

.method public getResizeSpans()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomePendingWidget;->resizeSpans:[I

    return-object v0
.end method

.method public hasConfigure()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setHomeWidgetItem(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomePendingWidget;->mHomeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;

    return-void
.end method

.method public setResizeSpans(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomePendingWidget;->resizeSpans:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/launcher2/HomePendingWidget;->resizeSpans:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method
