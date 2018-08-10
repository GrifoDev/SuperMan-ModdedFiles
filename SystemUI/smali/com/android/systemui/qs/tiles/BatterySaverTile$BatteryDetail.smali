.class final Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;
.super Ljava/lang/Object;
.source "BatterySaverTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BatterySaverTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$1;
    }
.end annotation


# instance fields
.field private mCurrentView:Landroid/view/View;

.field private final mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;Lcom/android/settingslib/BatteryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->bindBatteryInfo(Lcom/android/settingslib/BatteryInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->bindView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->postBindView()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/BatterySaverTile;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get4(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get4(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    new-instance v0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$1;-><init>(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/BatterySaverTile;Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;-><init>(Lcom/android/systemui/qs/tiles/BatterySaverTile;)V

    return-void
.end method

.method private bindBatteryInfo(Lcom/android/settingslib/BatteryInfo;)V
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x40266666    # 2.6f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    iget-object v1, p1, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get2(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_0
    iget-object v1, p1, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v2, 0x7f0a0081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/graph/UsageView;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    invoke-virtual {p1, v1, v2}, Lcom/android/settingslib/BatteryInfo;->bindHistory(Lcom/android/settingslib/graph/UsageView;[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V

    return-void

    :cond_1
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private bindView()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const v7, 0x1020017

    const/4 v6, 0x0

    const v5, 0x7f0a050c

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBatteryLevel(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v3, v6}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setCharging(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v3, v8}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setPowerSave(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v3, v6}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setShowPercent(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get6(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get2(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$3;-><init>(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V

    invoke-static {v3, v4}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get1(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v3, 0x7f12013c

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v3, 0x7f12013e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f12013d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private postBindView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$2;-><init>(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get2(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->bindView()V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x112

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get2(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get5(Lcom/android/systemui/qs/tiles/BatterySaverTile;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12016f

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get0(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get6(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSaveMode(Z)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get3(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-set0(Lcom/android/systemui/qs/tiles/BatterySaverTile;Z)Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-get3(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatterySaverTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->-set0(Lcom/android/systemui/qs/tiles/BatterySaverTile;Z)Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public setToggleState(Z)Z
    .locals 0

    return p1
.end method
