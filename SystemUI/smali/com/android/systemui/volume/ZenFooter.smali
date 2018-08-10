.class public Lcom/android/systemui/volume/ZenFooter;
.super Landroid/widget/LinearLayout;
.source "ZenFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenFooter$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mEndNowButton:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mSummaryLine1:Landroid/widget/TextView;

.field private mSummaryLine2:Landroid/widget/TextView;

.field private mZen:I

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private mZenIntroduction:Landroid/view/View;

.field private mZenIntroductionConfirm:Landroid/view/View;

.field private mZenIntroductionMessage:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/ZenFooter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->confirmZenIntroduction()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/ZenFooter;Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setConfig(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/ZenFooter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setZen(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$1;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private confirmZenIntroduction()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DndConfirmedAlarmIntroduction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->updateIntroduction()V

    return-void
.end method

.method private isZenAlarms()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenNone()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenPriority()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setConfig(Landroid/service/notification/ZenModeConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    return-void
.end method

.method private setZen(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->updateIntroduction()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/ZenFooter$3;-><init>(Lcom/android/systemui/volume/ZenFooter;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->updateIntroduction()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0586

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0587

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    const v0, 0x7f0a0588

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    const v0, 0x7f0a0584

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    const v0, 0x7f0a05a6

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroduction:Landroid/view/View;

    const v0, 0x7f0a05a9

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionMessage:Landroid/widget/TextView;

    const v2, 0x7f120c19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    const v0, 0x7f0a05a7

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionConfirm:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroductionConfirm:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenFooter$2;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroduction:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->shouldShowIntroduction()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    const v2, 0x7f120ba9

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    return-void
.end method

.method public shouldShowIntroduction()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "DndConfirmedAlarmIntroduction"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public update()V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0801b6

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f120428

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/service/notification/ZenModeConfig;->getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    return-void

    :cond_0
    const v2, 0x7f0801b3

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f120423

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f120425

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateIntroduction()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZenIntroduction:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->shouldShowIntroduction()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void
.end method
