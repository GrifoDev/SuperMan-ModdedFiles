.class public Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;
.super Landroid/support/v7/preference/Preference;
.source "NavigationBarPressureGaugePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;
    }
.end annotation


# static fields
.field private static final sPressureLevel:[F

.field private static final sScale:[F


# instance fields
.field private mButtonViewHolder:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;

.field private mContainerTopPadding:I

.field private mContext:Landroid/content/Context;

.field private mDescription:Landroid/widget/TextView;

.field private mHomePressureUserLevelObserver:Landroid/database/ContentObserver;

.field private mIsBlockVibrationOfSamePressureLevel:Z

.field private mMaxPressureLevel:[I

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPreferenceContainer:Landroid/widget/LinearLayout;

.field private mUserPressureLevel:[I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;IF)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->getCurrentPressureLevel(IF)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->updatePressureLevel(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->sScale:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->sPressureLevel:[F

    return-void

    :array_0
    .array-data 4
        0x3e408312    # 0.188f
        0x3eb33333    # 0.35f
        0x3f03126f    # 0.512f
        0x3f2ccccd    # 0.675f
        0x3f5645a2    # 0.837f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x42f60000    # 123.0f
        0x43040000    # 132.0f
        0x431b0000    # 155.0f
        0x43260000    # 166.0f
        0x433a0000    # 186.0f
        0x461c4000    # 10000.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mMaxPressureLevel:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mUserPressureLevel:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mVibrator:Landroid/os/Vibrator;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->setCustomView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mMaxPressureLevel:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mUserPressureLevel:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mVibrator:Landroid/os/Vibrator;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->setCustomView()V

    return-void
.end method

.method private getCurrentPressureLevel(IF)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->sPressureLevel:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->sPressureLevel:[F

    aget v1, v1, v0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getMaxPressureLevel(I)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_pressure_user_level"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->sScale:[F

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private initButtonView()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mButtonViewHolder:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->updatePressureCircle(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->setMaxPressureLevel(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initPreference(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mPreferenceContainer:Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    iget v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mContainerTopPadding:I

    if-eqz v4, :cond_0

    const v4, 0x7f0a066c

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mPreferenceContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mPreferenceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mContainerTopPadding:I

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mPreferenceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mDescription:Landroid/widget/TextView;

    if-nez v4, :cond_1

    const v4, 0x7f0a0234

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mDescription:Landroid/widget/TextView;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060058

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mButtonViewHolder:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;

    if-nez v4, :cond_3

    new-instance v4, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;

    invoke-direct {v4, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;-><init>(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iput-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mButtonViewHolder:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->initButtonView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->registerUserLevelChangeObserver()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "font_size"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-le v0, v7, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0364

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v2, v4

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mDescription:Landroid/widget/TextView;

    mul-float v5, v2, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mVibrator:Landroid/os/Vibrator;

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mVibrator:Landroid/os/Vibrator;

    :cond_5
    return-void
.end method

.method private runVibratorIfNeed(II)V
    .locals 6

    const-string/jumbo v1, "NavigationBarPressureGaugePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runVibrator() pressureLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / mIsBlockVibrationOfSamePressureLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mIsBlockVibrationOfSamePressureLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mMaxPressureLevel:[I

    aget v1, v1, p1

    if-ne v1, p2, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mIsBlockVibrationOfSamePressureLevel:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mIsBlockVibrationOfSamePressureLevel:Z

    const-string/jumbo v1, "NavigationBarPressureGaugePreference"

    const-string/jumbo v2, "runVibrator() run"

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v3, 0xc376

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mIsBlockVibrationOfSamePressureLevel:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NavigationBarPressureGaugePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runVibrator() Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCircleScale(Landroid/widget/ImageView;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private setCustomView()V
    .locals 1

    const v0, 0x7f0d01a0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->setLayoutResource(I)V

    return-void
.end method

.method private updatePressureCircle(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mButtonViewHolder:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p1

    sget-object v1, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->sScale:[F

    aget v1, v1, p2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->setCircleScale(Landroid/widget/ImageView;F)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mButtonViewHolder:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, p1

    sget-object v1, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->sScale:[F

    aget v1, v1, p2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->setCircleScale(Landroid/widget/ImageView;F)V

    return-void
.end method

.method private updatePressureLevel(II)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "NavigationBarPressureGaugePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePressureLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / mIsBlockVibrationOfSamePressureLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mIsBlockVibrationOfSamePressureLevel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mDescription:Landroid/widget/TextView;

    if-nez p2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mMaxPressureLevel:[I

    aget v0, v0, p1

    if-ge v0, p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mMaxPressureLevel:[I

    aget p2, v0, p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->runVibratorIfNeed(II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->updatePressureCircle(II)V

    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public getRealScreenHeight()I
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->y:I

    return v2
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->initPreference(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public registerUserLevelChangeObserver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mHomePressureUserLevelObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mHomePressureUserLevelObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_pressure_user_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mHomePressureUserLevelObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setContainerTopPadding(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mContainerTopPadding:I

    return-void
.end method

.method public setMaxPressureLevel(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->getMaxPressureLevel(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mMaxPressureLevel:[I

    aput v0, v1, p1

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mUserPressureLevel:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mMaxPressureLevel:[I

    aget v2, v2, p1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mMaxPressureLevel:[I

    aget v1, v1, p1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->updatePressureLevel(II)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->mButtonViewHolder:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, p1

    sget-object v2, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->sScale:[F

    aget v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->setCircleScale(Landroid/widget/ImageView;F)V

    return-void
.end method
