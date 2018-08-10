.class public Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;
.super Landroid/app/Activity;
.source "PowerModeChangeProcessingActivity.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private disablePSM:Z

.field private mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

.field private mBatteryLevel:I

.field private mButtonType:I

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mCircleTextContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentTimeDelta:I

.field private mDescContainer:Landroid/view/View;

.field private mDoCheckingAnimation:Z

.field private mExtendedTimeTv:Landroid/widget/TextView;

.field private mFirstContainer:Landroid/widget/RelativeLayout;

.field private mInitBatteryTime:I

.field mListView:Landroid/widget/ListView;

.field private mProcessingDescTv:Landroid/widget/TextView;

.field private mReceivedBatteryTime:I

.field private mRemainTimeInCircleTv:Landroid/widget/TextView;

.field private mSavingAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

.field private mTotalItemsTime:I

.field private mTotalTimeDelta:I

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalItemsTime:I

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/check/DoneView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/circle/CircleContainer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCurrentTimeDelta:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalItemsTime:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->showExtendedTime()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->startCircleTextAnimation(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->startFinishAnimation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->updateEstimatedTimeView(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mReceivedBatteryTime:I

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCurrentTimeDelta:I

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalItemsTime:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mButtonType:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mBatteryLevel:I

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private buildDataFromIntent(Landroid/content/Intent;)V
    .locals 7

    const v6, 0x7f0700b3

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "key_current_battery"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mBatteryLevel:I

    const-string/jumbo v1, "key_init_battery_time"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mReceivedBatteryTime:I

    const-string/jumbo v1, "key_extended_battery_time_delta"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    const-string/jumbo v1, "key_button_type"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mButtonType:I

    const-string/jumbo v1, "key_next_psm_mode"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    const v2, 0x7f121556

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->buildAllItems(Landroid/content/Intent;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mReceivedBatteryTime:I

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    :goto_2
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    if-lez v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->setEstimatedTimeTextSize()V

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->updateEstimatedTimeView(I)V

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mBatteryLevel:I

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->setTextColorByLevel(ILandroid/widget/TextView;)V

    :goto_3
    sget-object v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received::battLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", init battTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", time delta : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", buttonType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mButtonType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    const v5, 0x7f121558

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    if-lez v1, :cond_3

    move v1, v3

    :goto_4
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v4, 0x7f12032e

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    move v1, v4

    goto :goto_4

    :cond_4
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mReceivedBatteryTime:I

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v2, 0x7f12032d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3
.end method

.method private setEstimatedTimeTextSize()V
    .locals 5

    const v4, 0x7f0700b5

    new-instance v0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;-><init>(Landroid/widget/TextView;I)V

    const/16 v1, 0xd1b

    const v2, 0x7f0700b6

    const/4 v3, -0x1

    invoke-static {p0, v1, v4, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->setMaxTextSize(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextColorByLevel(ILandroid/widget/TextView;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getColorStateByLevel(I)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private showExtendedTime()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private startCircleTextAnimation(I)V
    .locals 4

    const/4 v3, 0x0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCurrentTimeDelta:I

    aput v2, v1, v3

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCurrentTimeDelta:I

    add-int/2addr v2, p1

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/widget/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/settings/widget/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startFinishAnimation()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mFirstContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setElevation(F)V

    const v4, 0x7f070690

    invoke-static {p0, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getFloatFromDimension(Landroid/content/Context;I)F

    move-result v0

    new-instance v1, Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-direct {v1, v4, v6, v0, v6}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;-><init>(Landroid/view/View;FFF)V

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;Lcom/samsung/android/visualeffect/circle/BounceAnimation;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->setBounceListener(Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceUpDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceUpDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$4;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->startAnimation()V

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updateEstimatedTimeView(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v1, 0x7f0700b5

    const v2, 0x7f0700b6

    const/4 v3, -0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f0d01e2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->setContentView(I)V

    const v0, 0x7f0a035f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mFirstContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const v0, 0x7f0a0183

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    const v0, 0x7f0a06eb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SCORE_TEXT:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070558

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070553

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircleListener(Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;)V

    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/check/DoneView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

    const v0, 0x7f0a0684

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    const v0, 0x7f0a0686

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    const v0, 0x7f0a0685

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    const v1, 0x7f121558

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0742

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->buildDataFromIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->removeCircleListener()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setVisibility(I)V

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalItemsTime:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->startCircleTextAnimation(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRoundEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
