.class final synthetic Lcom/android/settings/fuelgauge/-$Lambda$T3nasRkyg_XBN0ZYOgLm2mm6fNM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/-$Lambda$T3nasRkyg_XBN0ZYOgLm2mm6fNM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->lambda$-com_android_settings_fuelgauge_PowerUsageBase_2114()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/-$Lambda$T3nasRkyg_XBN0ZYOgLm2mm6fNM;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onBatteryChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/-$Lambda$T3nasRkyg_XBN0ZYOgLm2mm6fNM;->$m$0()V

    return-void
.end method
