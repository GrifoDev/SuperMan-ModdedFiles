.class Lcom/android/settings/fuelgauge/BatterySaverSettings$2$1;
.super Ljava/lang/Object;
.source "BatterySaverSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatterySaverSettings$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fuelgauge/BatterySaverSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverSettings$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$2$1;->this$1:Lcom/android/settings/fuelgauge/BatterySaverSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BatterySaverSettings"

    const-string/jumbo v1, "Starting low power mode from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$2$1;->this$1:Lcom/android/settings/fuelgauge/BatterySaverSettings$2;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$2;->this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->-wrap1(Lcom/android/settings/fuelgauge/BatterySaverSettings;Z)V

    return-void
.end method
