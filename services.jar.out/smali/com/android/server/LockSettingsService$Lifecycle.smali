.class public final Lcom/android/server/LockSettingsService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mLockSettingsService:Lcom/android/server/LockSettingsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCleanupUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/LockSettingsService;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService;->onCleanupUser(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    new-instance v0, Lcom/android/server/LockSettingsService;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/LockSettingsService;

    const-string/jumbo v0, "lock_settings"

    iget-object v1, p0, Lcom/android/server/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/LockSettingsService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/LockSettingsService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/LockSettingsService;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService;->onStartUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/LockSettingsService;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService;->onUnlockUser(I)V

    return-void
.end method
