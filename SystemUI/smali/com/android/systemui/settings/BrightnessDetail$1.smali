.class Lcom/android/systemui/settings/BrightnessDetail$1;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAutoBrightnessContainer:Landroid/view/View;

.field private mAutoBrightnessSwitch:Landroid/widget/Switch;

.field private mControlOnTopContainer:Landroid/view/View;

.field private mControlOnTopSwitch:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessDetail;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mControlOnTopSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method constructor <init>(Lcom/android/systemui/settings/BrightnessDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d012f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v6, 0x7f0a009e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    const v6, 0x7f0a009f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07048f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v7}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070490

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v8, v7, v9}, Lcom/android/systemui/settings/ToggleSliderView;->setPadding(IIII)V

    const-class v6, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v6}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/settings/ToggleSliderView;->initResources()V

    :cond_0
    const v6, 0x7f0a0059

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoBrightnessContainer:Landroid/view/View;

    const v6, 0x7f0a005b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    const v6, 0x7f0a005c

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a005a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoBrightnessContainer:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoBrightnessContainer:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/BrightnessDetail$1$1;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/BrightnessDetail$1$2;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a0129

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mControlOnTopContainer:Landroid/view/View;

    const v6, 0x7f0a012a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mControlOnTopSwitch:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mControlOnTopSwitch:Landroid/widget/Switch;

    const-class v6, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v8, "brightness_on_top"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_7

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mControlOnTopContainer:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/BrightnessDetail$1$3;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mControlOnTopSwitch:Landroid/widget/Switch;

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$4;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/BrightnessDetail$1$4;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a009c

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v6, 0x7f0a009b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6, p2}, Lcom/android/systemui/settings/BrightnessDetail;->-set1(Lcom/android/systemui/settings/BrightnessDetail;Landroid/view/View;)Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get4(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$5;

    invoke-direct {v7, p0, v5, v1}, Lcom/android/systemui/settings/BrightnessDetail$1$5;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;Lcom/android/systemui/settings/ToggleSliderView;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object p2

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120870

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v6, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f12086e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v8, "screen_brightness_mode"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v6, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f12086f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120877

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120876

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v8, "display_outdoor_mode"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v6, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_6

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1389

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120874

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 0

    return p1
.end method
