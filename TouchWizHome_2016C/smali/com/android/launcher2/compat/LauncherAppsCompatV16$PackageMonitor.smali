.class Lcom/android/launcher2/compat/LauncherAppsCompatV16$PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "LauncherAppsCompatV16.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/compat/LauncherAppsCompatV16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/compat/LauncherAppsCompatV16;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/compat/LauncherAppsCompatV16;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher2/compat/LauncherAppsCompatV16;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/compat/LauncherAppsCompatV16;Lcom/android/launcher2/compat/LauncherAppsCompatV16$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/compat/LauncherAppsCompatV16$PackageMonitor;-><init>(Lcom/android/launcher2/compat/LauncherAppsCompatV16;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v5

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher2/compat/LauncherAppsCompatV16;

    invoke-static {v6}, Lcom/android/launcher2/compat/LauncherAppsCompatV16;->access$100(Lcom/android/launcher2/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v1, v2, v5}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    goto :goto_0

    :cond_3
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v4, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher2/compat/LauncherAppsCompatV16;

    invoke-static {v6}, Lcom/android/launcher2/compat/LauncherAppsCompatV16;->access$100(Lcom/android/launcher2/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v1, v2, v5}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageRemoved(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    goto :goto_1

    :cond_4
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v4, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher2/compat/LauncherAppsCompatV16;

    invoke-static {v6}, Lcom/android/launcher2/compat/LauncherAppsCompatV16;->access$100(Lcom/android/launcher2/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v1, v2, v5}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageAdded(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher2/compat/LauncherAppsCompatV16;

    invoke-static {v6}, Lcom/android/launcher2/compat/LauncherAppsCompatV16;->access$100(Lcom/android/launcher2/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v1, v2, v5}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    goto :goto_3

    :cond_6
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "android.intent.extra.REPLACING"

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-ge v8, v9, :cond_7

    const/4 v6, 0x1

    :cond_7
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher2/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher2/compat/LauncherAppsCompatV16;

    invoke-static {v6}, Lcom/android/launcher2/compat/LauncherAppsCompatV16;->access$100(Lcom/android/launcher2/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v1, v3, v5, v4}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesAvailable([Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Z)V

    goto :goto_4

    :cond_8
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher2/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher2/compat/LauncherAppsCompatV16;

    invoke-static {v6}, Lcom/android/launcher2/compat/LauncherAppsCompatV16;->access$100(Lcom/android/launcher2/compat/LauncherAppsCompatV16;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v1, v3, v5, v4}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnavailable([Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Z)V

    goto :goto_5
.end method
