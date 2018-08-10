.class final Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;
.super Ljava/lang/Object;
.source "ScreenCaptureTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenCaptureTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenCaptureDetailAdapter"
.end annotation


# instance fields
.field private mCaptureModeDescriptionText:Landroid/widget/TextView;

.field private mPalmCaptureGroup:Landroid/widget/LinearLayout;

.field private mPalmCaptureSwitch:Landroid/widget/Switch;

.field private mRadioButton:[Landroid/widget/RadioButton;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSelectCaptureModeText:Landroid/widget/TextView;

.field private mSmartCaptureGroup:Landroid/widget/LinearLayout;

.field private mSmartCaptureSwitch:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;)[Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mRadioButton:[Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;)Landroid/widget/RadioGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mRadioButton:[Landroid/widget/RadioButton;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "createDetailView"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0d0140

    invoke-virtual {v2, v5, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0a00c6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0a00c3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mSelectCaptureModeText:Landroid/widget/TextView;

    const v2, 0x7f0a04e0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mSmartCaptureGroup:Landroid/widget/LinearLayout;

    const v2, 0x7f0a03c1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mPalmCaptureGroup:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mRadioButton:[Landroid/widget/RadioButton;

    const v2, 0x7f0a00c4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    aput-object v2, v5, v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mRadioButton:[Landroid/widget/RadioButton;

    const v2, 0x7f0a00c5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    aput-object v2, v5, v3

    const v2, 0x7f0a00c2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mCaptureModeDescriptionText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get7(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mSelectCaptureModeText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mRadioButton:[Landroid/widget/RadioButton;

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mRadioButton:[Landroid/widget/RadioButton;

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_2
    :goto_0
    return-object p2

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mSmartCaptureGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0a04e1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mSmartCaptureSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mSmartCaptureSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "enable_smart_capture"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mSmartCaptureSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mPalmCaptureGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0a04f7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mPalmCaptureSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mPalmCaptureSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "surface_palm_swipe"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mPalmCaptureSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$3;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mCaptureModeDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->mCaptureModeDescriptionText:Landroid/widget/TextView;

    const v3, 0x7f120882

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_6
    move v2, v4

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTileString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get7(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12087e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get2(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120880

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_ScreenCaptureTile$ScreenCaptureDetailAdapter_15649()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get5(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onClickSettingButton()Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClickSettingButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get1(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-wrap0(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get4(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get3(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$_E1rAHwyP0TLOkh6IPgQPZ4S2Mo;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$_E1rAHwyP0TLOkh6IPgQPZ4S2Mo;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$ScreenCaptureDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->-get5(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setToggleState(Z)Z
    .locals 0

    return p1
.end method
