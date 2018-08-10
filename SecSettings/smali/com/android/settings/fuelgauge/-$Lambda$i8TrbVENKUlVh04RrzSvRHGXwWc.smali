.class final synthetic Lcom/android/settings/fuelgauge/-$Lambda$i8TrbVENKUlVh04RrzSvRHGXwWc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/-$Lambda$i8TrbVENKUlVh04RrzSvRHGXwWc;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->lambda$-com_android_settings_fuelgauge_PowerUsageSummary$SummaryProvider_30329()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/-$Lambda$i8TrbVENKUlVh04RrzSvRHGXwWc;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onBatteryChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/-$Lambda$i8TrbVENKUlVh04RrzSvRHGXwWc;->$m$0()V

    return-void
.end method
