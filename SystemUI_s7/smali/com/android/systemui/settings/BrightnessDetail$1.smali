.class Lcom/android/systemui/settings/BrightnessDetail$1;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAuto:Landroid/widget/Switch;

.field private mAutoContainer:Landroid/view/View;

.field private mQuickAccess:Landroid/widget/Switch;

.field private mQuickAccessContainer:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessDetail;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccess:Landroid/widget/Switch;

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
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f04010f

    invoke-virtual {v4, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v4, 0x7f1302ff

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f130373

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/BrightnessDetail;

    const v4, 0x7f130300

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/settings/ToggleSlider;

    const v4, 0x7f130374

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f1302fb

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoContainer:Landroid/view/View;

    const v4, 0x7f1302fc

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "screen_brightness_mode"

    const/4 v9, -0x2

    invoke-static {v4, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoContainer:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$1;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/settings/BrightnessDetail$1$1;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$2;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/settings/BrightnessDetail$1$2;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f1302fd

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccessContainer:Landroid/view/View;

    const v4, 0x7f1302fe

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccess:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccess:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v7}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v7

    const-string/jumbo v8, "brightness_on_top"

    invoke-virtual {v7, v8, v6}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccessContainer:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/settings/BrightnessDetail$1$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/settings/BrightnessDetail$1$3;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccess:Landroid/widget/Switch;

    new-instance v5, Lcom/android/systemui/settings/BrightnessDetail$1$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/settings/BrightnessDetail$1$4;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v10}, Lcom/android/systemui/settings/BrightnessDetail;->setVisibility(I)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    new-instance v5, Lcom/android/systemui/settings/BrightnessController;

    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v7}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7, v2, v3}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-static {v4, v5}, Lcom/android/systemui/settings/BrightnessDetail;->-set0(Lcom/android/systemui/settings/BrightnessDetail;Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController;

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessDetail;->-get0(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessDetail;->-get0(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v4, p2}, Lcom/android/systemui/settings/BrightnessDetail;->-set1(Lcom/android/systemui/settings/BrightnessDetail;Landroid/view/View;)Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/settings/BrightnessDetail$1$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/settings/BrightnessDetail$1$5;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v4}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v7, "QS25"

    iget-object v8, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v6, 0x3e8

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v7, v11, v6}, Lcom/android/keyguard/util/GsimLogManager;->sendStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-object p2

    :cond_3
    move v4, v6

    goto/16 :goto_0

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x259

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0373

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
