.class Lcom/android/internal/app/AppLockPolicy$SettingsObserver$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "AppLockPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AppLockPolicy$SettingsObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver$1;->this$1:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0

    return-void
.end method

.method public onLockedBootComplete(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onUserSwitchComplete getLockedApps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver$1;->this$1:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-static {v0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->-wrap0(Lcom/android/internal/app/AppLockPolicy$SettingsObserver;)V

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0

    return-void
.end method
