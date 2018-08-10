.class public Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LocationTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LocationDetailAdapter"
.end annotation


# instance fields
.field private mDetailSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDetailSummary()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get2(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_QS_LOCATION_ENABLE_POPUP:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_DCM_POPUP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120897

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120899

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120898

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->getLocationModeSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1208a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocationModeSummary()Ljava/lang/String;
    .locals 10

    const v9, 0x7f1208a1

    const v8, 0x7f1208a0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "location_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1208a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "\n"

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12089e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12089f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1208a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1208a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1208a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    const-string/jumbo v4, ":\n"

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

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

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->getDetailSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x138f

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTileString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_GPS_IN_LOCATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12089d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12089c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get7(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_LocationTile$LocationDetailAdapter_13521()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->setToggleState(Z)Z

    return-void
.end method

.method public setToggleState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get7(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLocationTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-wrap0(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get5(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get5(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get5(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get6(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get4(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get0(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$VxjlUZG4eX_aACVi1_8SDQ21-ro;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$VxjlUZG4eX_aACVi1_8SDQ21-ro;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get2(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mDetailSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->getDetailSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return p1
.end method
