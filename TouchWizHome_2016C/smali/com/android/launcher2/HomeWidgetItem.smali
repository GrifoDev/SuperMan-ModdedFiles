.class public Lcom/android/launcher2/HomeWidgetItem;
.super Lcom/android/launcher2/HomeItem;
.source "HomeWidgetItem.java"


# static fields
.field public static final FLAG_ID_NOT_VALID:I = 0x1

.field public static final FLAG_PROVIDER_NOT_READY:I = 0x2

.field public static final FLAG_RESTORE_STARTED:I = 0x8

.field public static final FLAG_UI_NOT_READY:I = 0x4

.field static final NO_ID:I = -0x1

.field public static final RESTORE_COMPLETED:I


# instance fields
.field public appWidgetId:I

.field public hostView:Landroid/appwidget/AppWidgetHostView;

.field installProgress:I

.field private mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field public final mComponentName:Landroid/content/ComponentName;

.field private mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

.field public resizeMode:I

.field public resizeSpans:[I

.field restoreStatus:I


# direct methods
.method constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;IZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    iput v1, p0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    iput v1, p0, Lcom/android/launcher2/HomeWidgetItem;->installProgress:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    iput-object v2, p0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    iput-object v2, p0, Lcom/android/launcher2/HomeWidgetItem;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    iput p2, p0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    iput-object p1, p0, Lcom/android/launcher2/HomeWidgetItem;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->mComponentName:Landroid/content/ComponentName;

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v0, p0, Lcom/android/launcher2/HomeWidgetItem;->resizeMode:I

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeWidgetItem;->calcResizeSpan(Landroid/appwidget/AppWidgetProviderInfo;)V

    :cond_0
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    iput v1, p0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    iput v1, p0, Lcom/android/launcher2/HomeWidgetItem;->installProgress:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    iput-object v3, p0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    iput-object v3, p0, Lcom/android/launcher2/HomeWidgetItem;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    iput p2, p0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    iput-object p1, p0, Lcom/android/launcher2/HomeWidgetItem;->mComponentName:Landroid/content/ComponentName;

    iput v2, p0, Lcom/android/launcher2/HomeWidgetItem;->resizeMode:I

    iput v2, p0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public calcResizeSpan(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v1, p0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    return-void
.end method

.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getHostView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/HomeWidgetItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeWidgetItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResizeSpans()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    return-object v0
.end method

.method public getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    return-object v0
.end method

.method public final hasRestoreFlag(I)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isWidgetIdValid()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "restored"

    iget v1, p0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/HomeItem;->unbind()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method

.method public updateSupportWidgetSize()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher2/WidgetSizes;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    iget-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    iget-object v1, p0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0
.end method
