.class final Landroid/app/SystemServiceRegistry$29;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/NotificationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/NotificationManager;
    .locals 9
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 511
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 512
    .local v6, "outerContext":Landroid/content/Context;
    new-instance v7, Landroid/app/NotificationManager;

    .line 513
    new-instance v8, Landroid/view/ContextThemeWrapper;

    .line 515
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 514
    const/4 v0, 0x0

    .line 516
    const v2, 0x103000b

    .line 517
    const v3, 0x103006f

    .line 518
    const v4, 0x103012e

    .line 519
    const v5, 0x1030132

    .line 514
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v0

    .line 513
    invoke-direct {v8, v6, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 520
    iget-object v0, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 512
    invoke-direct {v7, v8, v0}, Landroid/app/NotificationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v7
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$29;->createService(Landroid/app/ContextImpl;)Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method
