.class public abstract Lcom/android/launcher2/compat/AppWidgetManagerCompat;
.super Ljava/lang/Object;
.source "AppWidgetManagerCompat.java"


# static fields
.field public static SEM_WIDGET_CATEGORY_SAMSUNG_HOME_SCREEN:I

.field private static sInstance:Lcom/android/launcher2/compat/AppWidgetManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    const/16 v0, 0x200

    sput v0, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->SEM_WIDGET_CATEGORY_SAMSUNG_HOME_SCREEN:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;
    .locals 3

    sget-object v1, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    monitor-exit v1

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/launcher2/compat/AppWidgetManagerCompatV16;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher2/compat/AppWidgetManagerCompatV16;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract getAllProviders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBadgeBitmap(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public abstract getUser(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher2/compat/UserHandleCompat;
.end method

.method public abstract loadLabel(Landroid/appwidget/AppWidgetProviderInfo;)Ljava/lang/String;
.end method

.method public abstract loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V
.end method
