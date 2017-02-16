.class public Lcom/android/systemui/statusbar/policy/MinitBattery;
.super Landroid/widget/RelativeLayout;
.source "MinitBattery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
    }
.end annotation


# instance fields
.field private mBattery:Landroid/widget/ImageView;

.field private mBatteryColor:I

.field private mBatteryIconsLoaction:Ljava/lang/String;

.field private mBatteryLowColor:I

.field private mBatteryMidColor:I

.field private mBatteryType:I

.field private mChargeAnim:I

.field private mDownloadBatteryIconsLoaction:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field private mIsColorable:Z

.field private mLevel:I

.field private mLowLevel:I

.field private mMidLevel:I

.field private mPercent:Landroid/widget/TextView;

.field private mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatus:I

.field private mTextColor:I

.field private mTextSize:I

.field private mWorkingType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    const/16 v0, -0x3c00

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    const v0, -0x21d6fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/MinitBattery$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MinitBattery$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    const/16 v0, -0x3c00

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    const v0, -0x21d6fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/MinitBattery$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MinitBattery$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    const/16 v0, -0x3c00

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    const v0, -0x21d6fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/MinitBattery$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MinitBattery$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/MinitBattery;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/MinitBattery;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MinitBattery;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MinitBattery;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->updateImageView()V

    return-void
.end method

.method private applyColorFilter()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBattery:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBattery:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBattery:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBattery:Landroid/widget/ImageView;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private getChargingAnimation(I)Landroid/graphics/drawable/AnimationDrawable;
    .locals 9

    const/16 v8, 0x1f4

    const/16 v7, 0xfa

    const/16 v6, 0x65

    const/16 v5, 0x14

    const/16 v4, 0x64

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x5dc

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    :goto_1
    if-ge v1, v4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x9c4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    move v1, p1

    :goto_2
    if-ge v1, v6, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_3
    move v2, p1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x9c4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_4

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getChargingDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "stat_sys_battery_charge_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v1, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stat_sys_battery_charge_anim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v2, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "battery_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_charge_anim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "battery_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getNormalDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "stat_sys_battery_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v1, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stat_sys_battery_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v2, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSaveLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "save_loc"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/3Minit Downloads/BatteryIcons/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/3Minit Downloads/BatteryIcons/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSettings()V
    .locals 9

    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSaveLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    const-string v3, "minit_anim_type"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    const-string v3, "minit_battery_type"

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    const-string v3, "minit_working_type"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    const-string v3, "minit_colorable"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    const-string v3, "minit_battery_color"

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    const-string v3, "minit_battery_mid_color"

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    const-string v3, "minit_battery_low_color"

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    const-string v3, "minit_mid_level"

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    const-string v3, "minit_low_level"

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    const-string v3, "minit_battery_text_size"

    const/16 v6, 0xf

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    const-string v3, "minit_battery_text_color"

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "minit_battery_font_dir"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v2, "/system/fonts/Roboto-Thin.ttf"

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPercent:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    if-le v3, v8, :cond_2

    iput v8, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPercent:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPercent:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPercent:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const-string v3, "minit_battery_visible"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setVisibility(I)V

    :goto_3
    return-void

    :cond_3
    move v3, v5

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPercent:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setVisibility(I)V

    goto :goto_3
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mStatus:I

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "3MinitBatteryIcons"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mFile:Ljava/io/File;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSaveLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->removeAllViews()V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBattery:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBattery:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBattery:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MinitBattery;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPercent:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPercent:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPercent:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MinitBattery;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSettings()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "minit_battery_size"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    sub-int v7, v1, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    sub-int v7, v5, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    if-lez v3, :cond_3

    move v4, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    add-int v7, v1, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    add-int v7, v5, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateImageView()V
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mStatus:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBattery:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->applyColorFilter()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPercent:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingAnimation(I)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBattery:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBattery:Landroid/widget/ImageView;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.three.minit.BATTERY_TYPE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
