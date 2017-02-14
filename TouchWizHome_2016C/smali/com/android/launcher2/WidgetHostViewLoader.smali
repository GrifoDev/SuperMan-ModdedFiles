.class public Lcom/android/launcher2/WidgetHostViewLoader;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"


# instance fields
.field private mBindWidgetRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInflateWidgetRunnable:Ljava/lang/Runnable;

.field private final mItem:Lcom/android/launcher2/HomePendingWidget;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mView:Landroid/view/View;

.field private mWidgetLoadingId:I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/HomePendingWidget;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mWidgetLoadingId:I

    iput-object p1, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher2/Launcher;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mItem:Lcom/android/launcher2/HomePendingWidget;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/HomePendingWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mItem:Lcom/android/launcher2/HomePendingWidget;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/WidgetHostViewLoader;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mWidgetLoadingId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/WidgetHostViewLoader;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mWidgetLoadingId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/WidgetHostViewLoader;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/WidgetHostViewLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/WidgetHostViewLoader;)Lcom/android/launcher2/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method public static getDefaultOptionsForWidget(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/HomePendingWidget;)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public preloadWidget()Z
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mItem:Lcom/android/launcher2/HomePendingWidget;

    invoke-virtual {v3}, Lcom/android/launcher2/HomePendingWidget;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v4, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mItem:Lcom/android/launcher2/HomePendingWidget;

    invoke-static {v3, v4}, Lcom/android/launcher2/WidgetHostViewLoader;->getDefaultOptionsForWidget(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/HomePendingWidget;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    new-instance v3, Lcom/android/launcher2/WidgetHostViewLoader$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/WidgetHostViewLoader$1;-><init>(Lcom/android/launcher2/WidgetHostViewLoader;)V

    iput-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/launcher2/WidgetHostViewLoader$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/launcher2/WidgetHostViewLoader$2;-><init>(Lcom/android/launcher2/WidgetHostViewLoader;Lcom/android/launcher2/LauncherAppWidgetHost;Landroid/appwidget/AppWidgetProviderInfo;)V

    iput-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher2/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    goto :goto_0
.end method
