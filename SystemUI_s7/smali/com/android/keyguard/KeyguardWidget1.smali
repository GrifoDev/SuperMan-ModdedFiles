.class public Lcom/android/keyguard/KeyguardWidget1;
.super Landroid/widget/FrameLayout;
.source "KeyguardWidget1.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardWidget1"


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mComponent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field private mWidgetClass:Ljava/lang/String;

.field mWidgetId:I

.field private mWidgetPackage:Ljava/lang/String;

.field mWidgetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardWidget1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v7, "-> KeyguardWidget1.KeyguardWidget1()"

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  context = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v7, "widget_package"

    invoke-interface {p2, v9, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetPackage:Ljava/lang/String;

    const-string v7, "widget_class"

    invoke-interface {p2, v9, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetClass:Ljava/lang/String;

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mWidgetPackage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mWidgetClass = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetClass:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidget1;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v7, "android.widget.RemoteViews$OnClickHandler"

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v7, Landroid/appwidget/AppWidgetHost;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    const/4 v9, 0x3

    const-class v10, Landroid/os/Looper;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    const v9, 0x4b455889    # 1.2933257E7f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/appwidget/AppWidgetHost;

    iput-object v7, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mAppWidgetHost = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    const-class v7, Landroid/appwidget/AppWidgetHost;

    const-string v8, "getAppWidgetIds"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v7, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    move-object v0, v7

    check-cast v0, [I

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ids = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    array-length v7, v6

    if-ge v5, v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    aget v8, v6, v5

    invoke-virtual {v7, v8}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mAppWidgetManager = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    const-string v7, "<- KeyguardWidget1.KeyguardWidget1()"

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private GetWidget()Landroid/appwidget/AppWidgetHostView;
    .locals 10

    const/4 v0, 0x0

    const/4 v8, 0x2

    const-string v5, "-> KeyguardWidget1.GetWidget()"

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetPackage:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetClass:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "KeyguardWidget1"

    const-string v6, "Error! Empty widget_package or widget_class parameters..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mWidgetId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetClass:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardWidget1;->mComponent:Landroid/content/ComponentName;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "appWidgetCategory"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    const-class v5, Landroid/appwidget/AppWidgetManager;

    const-string v6, "bindAppWidgetId"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/content/ComponentName;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Landroid/os/Bundle;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/keyguard/KeyguardWidget1;->mComponent:Landroid/content/ComponentName;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v6, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetId:I

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  appWidgetProviderInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidget1;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetId:I

    invoke-virtual {v5, v6, v7, v1}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  appWidgetHostView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  appWidgetProviderInfo.minHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  appWidgetProviderInfo.minWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetId:I

    invoke-virtual {v0, v5, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget v5, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v0, v5}, Landroid/appwidget/AppWidgetHostView;->setMinimumHeight(I)V

    iget v5, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v0, v5}, Landroid/appwidget/AppWidgetHostView;->setMinimumWidth(I)V

    :cond_2
    const-string v5, "<- KeyguardWidget1.GetWidget()\n"

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getWidgetId()I
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "-> KeyguardWidget1.getWidgetId()\n"

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    :try_start_0
    const-class v8, Landroid/appwidget/AppWidgetHost;

    const-string v9, "getAppWidgetIds"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v8, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    move-object v0, v8

    check-cast v0, [I

    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  ids = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v7, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetPackage:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetClass:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_1
    array-length v8, v7

    if-ge v5, v8, :cond_0

    :try_start_1
    iget-object v8, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v9, v7, v5

    invoke-virtual {v8, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  appWidgetProviderInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    iget-object v8, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "  Found!"

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    aget v6, v7, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    if-nez v6, :cond_1

    iget-object v8, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v6

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    const-string v8, "<- KeyguardWidget1.getWidgetId()"

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    return v6

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v8, "  Bad id... Delete it."

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    aget v9, v7, v5

    invoke-virtual {v8, v9}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private initUI()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidget1;->GetWidget()Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWidgetView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidget1;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardWidget1;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "-> KeyguardWidget1.onAttachedToWindow()\n"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidget1;->initUI()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    :cond_0
    const-string v0, "<- KeyguardWidget1.onAttachedToWindow()\n"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "-> KeyguardWidget1.onDetachedFromWindow()\n"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidget1;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_0
    const-string v0, "<- KeyguardWidget1.onDetachedFromWindow()\n"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidget1;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetView:Landroid/view/View;

    instance-of v1, v1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appWidgetCategory"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidget1;->mWidgetView:Landroid/view/View;

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
