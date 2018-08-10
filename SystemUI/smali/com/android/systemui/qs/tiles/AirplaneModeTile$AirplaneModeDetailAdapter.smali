.class final Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;
.super Ljava/lang/Object;
.source "AirplaneModeTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AirplaneModeDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d014b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0331

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    const v2, 0x7f1208f6

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTileString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1208f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleEnabled()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get10(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get10(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_AirplaneModeTile$AirplaneModeDetailAdapter_37328()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->setToggleState(Z)Z

    return-void
.end method

.method public setToggleState(Z)Z
    .locals 4

    const/4 v3, 0x0

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isAirplaneModeTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap8(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SKT_POPUP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120115

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get6(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get6(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get6(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get8(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get4(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$HMTI3z33aGyMrUl2PttLvK-Iv5w;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$HMTI3z33aGyMrUl2PttLvK-Iv5w;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_OJT_POPUP:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get10(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-string/jumbo v0, "28601"

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12011a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap4(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap6(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    const v2, 0x7f1208f6

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return p1
.end method
