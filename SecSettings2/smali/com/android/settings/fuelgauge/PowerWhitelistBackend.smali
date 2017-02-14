.class public Lcom/android/settings/fuelgauge/PowerWhitelistBackend;
.super Ljava/lang/Object;
.source "PowerWhitelistBackend.java"


# static fields
.field private static final INSTANCE:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;


# instance fields
.field private final mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field private final mSysWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->INSTANCE:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    const-string/jumbo v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->refreshList()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->INSTANCE:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    return-object v0
.end method

.method private refreshList()V
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v3, v5

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v4, "PowerWhitelistBackend"

    const-string/jumbo v5, "Unable to reach IDeviceIdleController"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public addApp(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PowerWhitelistBackend"

    const-string/jumbo v2, "Unable to reach IDeviceIdleController"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSysWhitelisted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWhitelisted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeApp(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PowerWhitelistBackend"

    const-string/jumbo v2, "Unable to reach IDeviceIdleController"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
