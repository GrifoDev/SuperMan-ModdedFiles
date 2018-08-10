.class public Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.super Landroid/app/Activity;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;
    }
.end annotation


# static fields
.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

.field private mSettingsUIObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;)V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public getSettingPkg()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.android.settings"

    return-object v0
.end method

.method protected onCategoriesChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;

    invoke-interface {v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;->onCategoriesChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    sget v2, Lcom/android/settingslib/R$layout;->settings_with_drawer:I

    invoke-super {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onProfileTileOpen()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "settings_ui"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;

    invoke-direct {v1, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    sget v1, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
