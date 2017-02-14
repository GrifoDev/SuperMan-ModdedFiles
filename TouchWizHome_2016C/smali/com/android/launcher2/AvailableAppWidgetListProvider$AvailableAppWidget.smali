.class public Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;
.super Ljava/lang/Object;
.source "AvailableAppWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AvailableAppWidgetListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AvailableAppWidget"
.end annotation


# instance fields
.field private final mCanUninstall:Z

.field private mFolderTitle:Ljava/lang/String;

.field private final mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final synthetic this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AvailableAppWidgetListProvider;Landroid/appwidget/AppWidgetProviderInfo;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mFolderTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-boolean p3, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCanUninstall:Z

    return-void
.end method


# virtual methods
.method public canUninstall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCanUninstall:Z

    return v0
.end method

.method public createHomePendingItem()Lcom/android/launcher2/HomePendingItem;
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/android/launcher2/HomePendingWidget;

    iget-object v4, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v1, v4, v5, v5}, Lcom/android/launcher2/HomePendingWidget;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v4, 0x2

    new-array v0, v4, [I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->getCellSpan([I)V

    aget v4, v0, v3

    iput v4, v1, Lcom/android/launcher2/HomePendingWidget;->spanX:I

    aget v4, v0, v2

    iput v4, v1, Lcom/android/launcher2/HomePendingWidget;->spanY:I

    invoke-virtual {p0}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->canUninstall()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/android/launcher2/HomePendingWidget;->mSystemApp:Z

    iget-object v2, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/HomePendingWidget;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-object v1

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public getCellSpan([I)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFolderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mFolderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 8

    iget-object v1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->getCellSpan([I)V

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    # getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Landroid/content/Context;

    move-result-object v0

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/Utilities;->loadWidgetThemePreview(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_0
    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    # getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mManager:Lcom/android/launcher2/compat/AppWidgetManagerCompat;
    invoke-static {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$100(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v7, p1, p2}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getBadgeBitmap(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_0
    return-object v7

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    # getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Landroid/content/Context;

    move-result-object v0

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/Utilities;->loadWidgetPreview(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public getUser()Lcom/android/launcher2/compat/UserHandleCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method

.method public setFolderTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mFolderTitle:Ljava/lang/String;

    return-void
.end method
