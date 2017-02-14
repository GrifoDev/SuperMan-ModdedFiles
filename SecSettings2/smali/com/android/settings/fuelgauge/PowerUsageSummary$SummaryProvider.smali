.class Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)V

    invoke-static {v0, v1}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;)V

    :cond_0
    return-void
.end method
