.class public final Landroid/webkit/WebViewDelegate;
.super Ljava/lang/Object;
.source "WebViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addWebViewAssetPath(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Landroid/webkit/WebViewFactory;->getLoadedPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_2

    array-length v5, v1

    :goto_0
    add-int/lit8 v4, v5, 0x1

    new-array v3, v4, [Ljava/lang/String;

    if-eqz v1, :cond_0

    array-length v5, v1

    invoke-static {v1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v5, v4, -0x1

    aput-object v2, v3, v5

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseResourcePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/ResourcesManager;->appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move v5, v6

    goto :goto_0
.end method

.method public callDrawGlFunction(Landroid/graphics/Canvas;J)V
    .locals 4

    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a DisplayList canvas"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Landroid/view/DisplayListCanvas;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/DisplayListCanvas;->drawGLFunctor2(JLjava/lang/Runnable;)V

    return-void
.end method

.method public callDrawGlFunction(Landroid/graphics/Canvas;JLjava/lang/Runnable;)V
    .locals 4

    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a DisplayList canvas"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Landroid/view/DisplayListCanvas;

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/DisplayListCanvas;->drawGLFunctor2(JLjava/lang/Runnable;)V

    return-void
.end method

.method public canInvokeDrawGlFunctor(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public detachDrawGlFunctor(Landroid/view/View;J)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewRootImpl;->detachFunctor(J)V

    :cond_0
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-static {p2, p1}, Landroid/webkit/LegacyErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public invokeDrawGlFunctor(Landroid/view/View;JZ)V
    .locals 0

    invoke-static {p2, p3, p4}, Landroid/view/ViewRootImpl;->invokeFunctor(JZ)V

    return-void
.end method

.method public isMultiProcessEnabled()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/IWebViewUpdateService;->isMultiProcessEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isTraceTagEnabled()Z
    .locals 2

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setOnTraceEnabledChangeListener(Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V
    .locals 1

    new-instance v0, Landroid/webkit/WebViewDelegate$1;

    invoke-direct {v0, p0, p1}, Landroid/webkit/WebViewDelegate$1;-><init>(Landroid/webkit/WebViewDelegate;Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method
