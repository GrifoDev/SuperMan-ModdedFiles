.class public final Lcom/android/settings/search/DynamicIndexableContentMonitor;
.super Ljava/lang/Object;
.source "DynamicIndexableContentMonitor.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;,
        Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;,
        Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;,
        Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final PACKAGE_CHANGE_MONITOR:Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasFeaturePrinting:Z

.field private mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;-><init>(Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;)V

    sput-object v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->PACKAGE_CHANGE_MONITOR:Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAccessibilityServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static getIMEServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static resetForTesting()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->resetForTesting()V

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->resetForTesting()V

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->resetForTesting()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Landroid/print/PrintServicesLoader;

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "print"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Landroid/print/PrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-object v1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateFromClassNameResource(Ljava/lang/String;Z)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public register(Landroid/app/Activity;I)V
    .locals 2

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search2/SearchFeatureProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/settings/search2/SearchFeatureProvider;->getIndexingManager(Landroid/content/Context;)Lcom/android/settings/search2/DatabaseIndexingManager;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->register(Landroid/app/Activity;ILcom/android/settings/search2/DatabaseIndexingManager;Z)V

    return-void
.end method

.method register(Landroid/app/Activity;ILcom/android/settings/search2/DatabaseIndexingManager;Z)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    if-nez p4, :cond_0

    const-string/jumbo v1, "DynamicContentMonitor"

    const-string/jumbo v2, "Skipping content monitoring because user is locked"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    sget-object v1, Lcom/android/settings/search/DynamicIndexableContentMonitor;->PACKAGE_CHANGE_MONITOR:Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;

    invoke-virtual {v1, v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->registerMonitor(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.software.print"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHasFeaturePrinting:Z

    iget-boolean v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHasFeaturePrinting:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_1
    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->initialize(Landroid/content/Context;Lcom/android/settings/search2/DatabaseIndexingManager;)V

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->initialize(Landroid/content/Context;Lcom/android/settings/search2/DatabaseIndexingManager;)V

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->initialize(Landroid/content/Context;Lcom/android/settings/search2/DatabaseIndexingManager;)V

    return-void
.end method

.method public unregister(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->PACKAGE_CHANGE_MONITOR:Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;

    invoke-virtual {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->unregisterMonitor()V

    iget-boolean v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHasFeaturePrinting:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :cond_1
    return-void
.end method
