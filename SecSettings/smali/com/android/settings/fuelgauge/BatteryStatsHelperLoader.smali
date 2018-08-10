.class public Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;
.super Lcom/android/settings/utils/AsyncLoader;
.source "BatteryStatsHelperLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/utils/AsyncLoader",
        "<",
        "Lcom/android/internal/os/BatteryStatsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field mUserManager:Landroid/os/UserManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method initBatteryStatsHelper(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    return-void
.end method

.method public loadInBackground()Lcom/android/internal/os/BatteryStatsHelper;
    .locals 3

    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->initBatteryStatsHelper(Lcom/android/internal/os/BatteryStatsHelper;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->loadInBackground()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->onDiscardResult(Lcom/android/internal/os/BatteryStatsHelper;)V

    return-void
.end method
