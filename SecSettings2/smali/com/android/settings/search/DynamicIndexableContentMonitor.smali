.class public final Lcom/android/settings/search/DynamicIndexableContentMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "DynamicIndexableContentMonitor.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/DynamicIndexableContentMonitor$1;,
        Lcom/android/settings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/content/PackageMonitor;",
        "Landroid/hardware/input/InputManager$InputDeviceListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private alwaysSkip:Z

.field private final mAccessibilityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFeatureIme:Z

.field private final mImeServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistered:Z

.field private final mUserDictionaryContentObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/search/DynamicIndexableContentMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/search/DynamicIndexableContentMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->handlePackageAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/search/DynamicIndexableContentMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->handlePackageUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$1;-><init>(Lcom/android/settings/search/DynamicIndexableContentMonitor;)V

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;

    iget-object v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;-><init>(Lcom/android/settings/search/DynamicIndexableContentMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mUserDictionaryContentObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->alwaysSkip:Z

    return-void
.end method

.method private static getAccessibilityServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getIMEServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private handlePackageAvailable(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->getAccessibilityServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->getIMEServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v2

    const-class v3, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/search/SecIndex;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v2

    const-class v3, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/search/SecIndex;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method private handlePackageUnavailable(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v2

    const-class v3, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/settings/search/SecIndex;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v2

    const-class v3, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/settings/search/SecIndex;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method private postMessage(ILjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

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

.method public onInputDeviceAdded(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v0

    const-class v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/search/SecIndex;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v0

    const-class v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings/search/SecIndex;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->onInputDeviceChanged(I)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 4
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

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v0

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/search/SecIndex;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

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

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, v2, p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DynamicIndexableContentMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public register(Landroid/app/Activity;I)V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->alwaysSkip:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-class v19, Landroid/os/UserManager;

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v18

    if-nez v18, :cond_1

    const-string/jumbo v18, "DynamicIndexableContentMonitor"

    const-string/jumbo v19, "Skipping content monitoring because user is locked"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mRegistered:Z

    return-void

    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mRegistered:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string/jumbo v19, "android.software.print"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string/jumbo v19, "android.software.input_methods"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "accessibility"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_4

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "input_method"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v14, :cond_7

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v17

    if-nez v17, :cond_6

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mUserDictionaryContentObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_8
    const-string/jumbo v18, "input"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/input/InputManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v18

    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public unregister()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mRegistered:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    iget-boolean v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mUserDictionaryContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method
