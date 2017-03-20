.class final Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MobileDataDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    return-void
.end method

.method private getSummary(Z)Ljava/lang/String;
    .locals 2

    const v0, 0x7f0f0433

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_MOBILE_DATA_OFF_POPUP:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0f03fe

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const v0, 0x7f0f03fd

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_ATT_POPUP:Z

    if-eqz v1, :cond_3

    const v0, 0x7f0f040a

    goto :goto_0

    :cond_3
    const v0, 0x7f0f03fc

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_MOBILE_DATA_ON_OFF_POPUP_FOR_KOR:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_6

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_LGT_POPUP:Z

    if-eqz v1, :cond_5

    const v0, 0x7f0f0400

    goto :goto_0

    :cond_5
    const v0, 0x7f0f03ff

    goto :goto_0

    :cond_6
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_LGT_POPUP:Z

    if-eqz v1, :cond_7

    const v0, 0x7f0f0402

    goto :goto_0

    :cond_7
    const v0, 0x7f0f0401

    goto :goto_0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f1301fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get3(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-wrap1(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0432

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0431

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get6(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->isMobileDataTileBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get4(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-interface {v1, v4, v3}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_MOBILE_DATA_ON_OFF_POPUP_FOR_KOR:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-wrap1(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-wrap0(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-wrap3(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V

    if-eqz v0, :cond_3

    :goto_1
    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get5(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get2(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f0405

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-get3(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getSummary(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return p1
.end method
