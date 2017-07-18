.class public Lcom/android/settings/fuelgauge/BatteryHistoryDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatteryHistoryDetail.java"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

.field private mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mStats:Landroid/os/BatteryStats;

.field private mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f110171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryActiveView;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/BatteryActiveView;->setProvider(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateEverything()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;J)Lcom/android/settingslib/BatteryInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110175

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/graph/UsageView;

    const/16 v3, 0x8

    new-array v3, v3, [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/BatteryInfo;->bindHistory(Lcom/android/settingslib/graph/UsageView;[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V

    const v2, 0x7f110173

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f110174

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b166b

    const v4, 0x7f11017d

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b166c

    const v4, 0x7f11017c

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b166d

    const v4, 0x7f110179

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b166f

    const v4, 0x7f110178

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b166e

    const v4, 0x7f110177

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    const v3, 0x7f0b1670

    const v4, 0x7f11017a

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v3, 0x7f0b1671

    const v4, 0x7f11017b

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    const v3, 0x7f0b1672

    const v4, 0x7f110176

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "stats"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "broadcast"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010435

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v4, 0x80000

    invoke-direct {v3, v0, v5, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v4, 0x100000

    invoke-direct {v3, v0, v5, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v4, 0x20000000

    invoke-direct {v3, v0, v5, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v4, 0x8000000

    invoke-direct {v3, v0, v6, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v4, 0x200000

    invoke-direct {v3, v0, v6, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryWifiParser;

    invoke-direct {v3, v0}, Lcom/android/settings/fuelgauge/BatteryWifiParser;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v4, -0x80000000

    invoke-direct {v3, v0, v5, v4}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryCellParser;

    invoke-direct {v3}, Lcom/android/settings/fuelgauge/BatteryCellParser;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->updateEverything()V

    return-void
.end method
