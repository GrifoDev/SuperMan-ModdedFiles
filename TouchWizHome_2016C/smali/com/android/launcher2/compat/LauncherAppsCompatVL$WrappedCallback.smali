.class Lcom/android/launcher2/compat/LauncherAppsCompatVL$WrappedCallback;
.super Landroid/content/pm/LauncherApps$Callback;
.source "LauncherAppsCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/compat/LauncherAppsCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageAdded(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageRemoved(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesAvailable([Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Z)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesSuspended([Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnavailable([Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Z)V

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-static {p2}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnsuspended([Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    return-void
.end method
