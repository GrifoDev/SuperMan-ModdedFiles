.class Lcom/android/settings/fuelgauge/BatterySaverPreference$1;
.super Landroid/database/ContentObserver;
.source "BatterySaverPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatterySaverPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatterySaverPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverPreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference$1;->this$0:Lcom/android/settings/fuelgauge/BatterySaverPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference$1;->this$0:Lcom/android/settings/fuelgauge/BatterySaverPreference;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->-wrap0(Lcom/android/settings/fuelgauge/BatterySaverPreference;)V

    return-void
.end method
