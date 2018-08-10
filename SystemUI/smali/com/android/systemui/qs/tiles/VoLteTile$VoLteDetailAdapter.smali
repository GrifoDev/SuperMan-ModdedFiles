.class final Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;
.super Ljava/lang/Object;
.source "VoLteTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VoLteDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get3(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

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

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f120939

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1393

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTileString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get5(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get5(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isVoLteTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-wrap4(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get1(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get3(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120b8d

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-wrap1(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get3(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f120b8e

    invoke-static {v0, v3, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-wrap2(Lcom/android/systemui/qs/tiles/VoLteTile;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get6(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get6(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get3(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120b90

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get5(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    return v0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-wrap0(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get3(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120b91

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get5(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    return v0

    :cond_6
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_VOLTE_CHECK_OPERATOR:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get3(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120b8f

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->setEnabled(Z)V

    return p1
.end method
