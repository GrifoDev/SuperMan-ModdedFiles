.class public Lcom/samsung/android/settings/display/FontPreview;
.super Lcom/android/settings/InstrumentedActivity;
.source "FontPreview.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/FontPreview$1;,
        Lcom/samsung/android/settings/display/FontPreview$LoadListTask;
    }
.end annotation


# static fields
.field private static final APK_NAME_LIST:[Ljava/lang/String;

.field private static CHANGE_MODE_FONT_SIZE:I

.field private static CHANGE_MODE_FONT_STYLE:I

.field private static CHANGE_MODE_SCREEN_SIZE:I

.field public static DEBUG:Z

.field private static DENSITY_BASE_PIXEL:[F

.field private static DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

.field public static REBOOT:Z

.field private static persistString:Ljava/lang/String;

.field private static sDisplayFont:I

.field private static sDisplayFontAccessibilitySwitch:I

.field private static sDisplayFontCancel:I

.field private static sDisplayFontDone:I

.field private static sDisplayFontSize:I

.field private static sDisplayFontStyle:I

.field public static sSelectedFontSizeSeekBarProgress:I


# instance fields
.field private mAccessFontOnOff:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mBixbyCurrentStatesId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChangingSizeText:Landroid/widget/TextView;

.field private mCharSeqRevisedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field mCurrentDensityIndex:I

.field mCurrentFontIndex:I

.field private mDensities:[I

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mExtraHugeString:Ljava/lang/String;

.field private mExtraLargeFontIndex:I

.field private mFloatRevisedValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mFontFloatSize:F

.field private mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

.field private mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

.field private mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mFontSizeStrings:[Ljava/lang/String;

.field private mFontStyleListView:Landroid/widget/ListView;

.field private mFontSwitch:Landroid/widget/Switch;

.field private mFontSwitchTextView:Landroid/widget/TextView;

.field private mFontWithDensityDescTextView:Landroid/widget/TextView;

.field private mHugeString:Ljava/lang/String;

.field private mIsAccessibilitySettingsVision:Z

.field private mIsChangedFontSizeSeekBar:Z

.field private mIsChangedScreenSizeSeekBar:Z

.field private mIsCheckPlatformSignatures:Z

.field private mIsCheckReleaseSignatures:Z

.field private mIsClickSwitch:Z

.field private mIsEnabledShowBtnBg:Z

.field private mIsFont11Level:Z

.field private mIsFontLargerOn:Z

.field private mIsFromSetupWizard:Z

.field private mIsRunLoadListTask:Z

.field mIsSelectedCurrentThemeFont:Z

.field private mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

.field private mMaxTextView:Landroid/widget/TextSwitcher;

.field private mMinTextView:Landroid/widget/TextView;

.field private mPackageName:Ljava/lang/String;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPreviewPager:Landroid/support/v4/view/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

.field private mPreviewSampleResIds:[I

.field private mPreviousFont:I

.field private mProgressBarLayout:Landroid/widget/RelativeLayout;

.field private mSaveButton:Landroid/widget/Button;

.field private mSavedClickedItem:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mSelectedFontSize:I

.field private mSelectedFontStyleItemIndex:I

.field private mSelectedScreenSize:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowForHugeFontTextView:Landroid/widget/TextView;

.field private mThemeFontTypeface:Landroid/graphics/Typeface;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/FontPreview;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/FontPreview;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/display/FontPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/display/FontPreview;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/display/FontPreview;)Lcom/android/settings/PreviewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/display/FontPreview;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/display/FontPreview;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get17()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontCancel:I

    return v0
.end method

.method static synthetic -get18()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontDone:I

    return v0
.end method

.method static synthetic -get19()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontSize:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/FontPreview;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/display/FontPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/display/FontPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedFontSizeSeekBar:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/display/FontPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedScreenSizeSeekBar:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/display/FontPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    return p1
.end method

.method static synthetic -set4(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontCancel:I

    return p0
.end method

.method static synthetic -set5(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontDone:I

    return p0
.end method

.method static synthetic -set6(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontSize:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/FontPreview;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->getFontNameFromSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/FontPreview;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreview;->changeFontSizeFromSeekBar(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/FontPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->doneFontPreview()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/display/FontPreview;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    const/4 v0, 0x7

    sput v0, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.monotype.android.font.cooljazz"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.monotype.android.font.helvneuelt"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.monotype.android.font.samsungsans"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.monotype.android.font.rosemary"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.applemint"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.tinkerbell"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.udrgothic"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.udmincho"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.arjpopb"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.kaiti"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.shaonv"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.miao"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/display/FontPreview;->DENSITY_BASE_PIXEL:[F

    sput v4, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_SIZE:I

    sput v5, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_STYLE:I

    sput v7, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_SCREEN_SIZE:I

    sput-boolean v3, Lcom/samsung/android/settings/display/FontPreview;->REBOOT:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    iput v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    iput v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    iput v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurConfig:Landroid/content/res/Configuration;

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedFontSizeSeekBar:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedScreenSizeSeekBar:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckPlatformSignatures:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckReleaseSignatures:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsEnabledShowBtnBg:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    const v0, 0x7f040254

    const v1, 0x7f040256

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/samsung/android/settings/display/FontPreview$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FontPreview$1;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private changeFontSizeFromSeekBar(I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v6, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10031c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-lt v2, v7, :cond_2

    if-ge p1, v7, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    int-to-float v4, v1

    mul-float/2addr v4, v0

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/android/settings/PreviewPagerAdapter;->SetFontScale(IF)V

    sput p1, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontFloatSize:F

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_2
    if-ge v2, v7, :cond_3

    if-lt p1, v7, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    int-to-float v4, v1

    mul-float/2addr v4, v0

    const v5, 0x3f947ae1    # 1.16f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    int-to-float v4, v1

    mul-float/2addr v4, v0

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private configureActionBar()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f040097

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11021c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    invoke-virtual {p1, p2, v4, p5}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return v3

    :catch_0
    move-exception v1

    return v3

    :catch_1
    move-exception v1

    const/4 v6, 0x0

    return v6

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method private doneFontPreview()V
    .locals 5

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessiblity_font_switch"

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedFontSizeSeekBar:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    if-eq v1, v2, :cond_2

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    if-ltz v1, :cond_2

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_SIZE:I

    or-int/lit8 v0, v1, 0x0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedScreenSizeSeekBar:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedScreenSize:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    if-ltz v1, :cond_3

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_SCREEN_SIZE:I

    or-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    if-ltz v1, :cond_4

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_STYLE:I

    or-int/2addr v0, v1

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->finish()V

    return-void

    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->doneFontStyleOrFontSize(I)V

    return-void
.end method

.method private doneFontSize()V
    .locals 7

    const/4 v6, 0x0

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "FontPreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "KKK onPreferenceChange fontIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "large_font"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "FontPreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-gt v2, v3, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "large_font"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "FontPreview"

    const-string/jumbo v4, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "large_font"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v3, "FontPreview"

    const-string/jumbo v4, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doneFontStyleOrFontSize(I)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doneFontStyleOrFontSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_STYLE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_FONT_STYLE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->onOkButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_SIZE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_FONT_SIZE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->doneFontSize()V

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontFloatSize:F

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FontPreview;->writeFontSizePreference(F)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->readFontSizePreference()V

    :cond_1
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_SCREEN_SIZE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_SCREEN_SIZE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->ApplyForcedDisplayDensity(Landroid/content/Context;I)V

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->finish()V

    goto :goto_1
.end method

.method private getCurrentSavedFontString()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "default"

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    :cond_0
    return-object v0
.end method

.method private getFontNameFromSystem()Ljava/lang/String;
    .locals 8

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "font_size"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "prefs"

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v4, v5

    :cond_0
    const-string/jumbo v5, "monotype"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "default"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b05c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_2
    return-object v3
.end method

.method private setAccessiblityFontSizeView(Z)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    const v3, 0x7f1103ac

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const v3, 0x7f1103af

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f1103ae

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    const v3, 0x7f1103ad

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitchTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitchTextView:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setClickable(Z)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b05d6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method private setDim(ZZ)V
    .locals 4

    const v3, 0x7f0d0159

    const v2, 0x7f0204fc

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f0204dd

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->animationStart(Z)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->invalidate()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f0204dc

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setFontStyleList(Landroid/os/Bundle;)V
    .locals 10

    const/4 v4, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->setReHeightFontStyleListview()V

    const v0, 0x7f1103b2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$7;

    invoke-direct {v2, p0, v9}, Lcom/samsung/android/settings/display/FontPreview$7;-><init>(Lcom/samsung/android/settings/display/FontPreview;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->loadPreferences()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->setSelectedFontStyle()V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "USER_SELECTED_FONT_STYLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v0, -0x1

    if-le v3, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_2
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setFontsizeLayoutSevenOrEleven(Z)V
    .locals 7

    const/4 v6, 0x0

    const v3, 0x7f04010e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setContentView(I)V

    const v3, 0x7f1103a9

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f1103ab

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f1103b8

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    const v3, 0x7f1103b7

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const v5, 0x7f0204fc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    sget v4, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    const v3, 0x7f1103b1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    const v3, 0x7f1103b9

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontWithDensityDescTextView:Landroid/widget/TextView;

    const v3, 0x7f1103b6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextSwitcher;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/FontPreview$6;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    const/high16 v3, 0x10a0000

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v3, 0x10a0001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_0

    const v3, 0x7f1103b5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMinTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mHugeString:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b05d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontWithDensityDescTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b05d5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3, v6}, Lcom/samsung/android/settings/display/FontPreview;->setDim(ZZ)V

    goto :goto_0
.end method

.method private setReHeightFontStyleListview()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-interface {v6, v2, v9, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "font_size"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v5, v5, 0x5

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->requestLayout()V

    :cond_2
    return-void
.end method

.method private setSelectedFontStyle()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->getCurrentSavedFontString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeFontIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const-string/jumbo v0, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : Current Theme Font index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    :cond_1
    const-string/jumbo v0, "default"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const-string/jumbo v0, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : selectedFont index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private update3StepFontsizeList()V
    .locals 7

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c009e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeStrings:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mCharSeqRevisedValues:Ljava/util/ArrayList;

    return-void
.end method

.method private update7StepFontsizeList()V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mCharSeqRevisedValues:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5

    move-object v1, p1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b05c4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$11;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/display/FontPreview$11;-><init>(Lcom/samsung/android/settings/display/FontPreview;Ljava/lang/String;)V

    const v4, 0x7f0b179b

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/FontPreview$12;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreview$13;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200c9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 21

    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_0

    const-string/jumbo v18, "FlipFont"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "checkFont - checking apkname"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v18, "com.monotype.android.font.foundation"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v18, 0x0

    return v18

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const/4 v11, 0x0

    :goto_0
    sget-object v18, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_5

    if-eqz p1, :cond_4

    sget-object v18, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v18, v18, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const-string/jumbo v18, "android"

    sget-object v19, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v19, v19, v11

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckPlatformSignatures:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v19, v19, v11

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckReleaseSignatures:Z

    const-string/jumbo v18, "FontPreview"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "apkname : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", mIsCheckPlatformSignatures : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckPlatformSignatures:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", mIsCheckReleaseSignatures : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckReleaseSignatures:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckPlatformSignatures:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckReleaseSignatures:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    const-string/jumbo v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_2
    const/16 v18, 0x0

    return v18

    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_5
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_6

    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "checkFont - check if valid certificate"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x40

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v15

    :goto_2
    if-eqz v15, :cond_c

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    :try_start_1
    const-string/jumbo v18, "SHA"

    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v18, "T84drf8v3ZMOLvt2SFG/K7ODXgI="

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_7

    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Signature is correct**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v18, 0x0

    return v18

    :cond_8
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_9

    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Signature is incorrect**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    const/16 v18, 0x1

    return v18

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v6, 0x0

    :try_start_2
    const-string/jumbo v18, "X509"

    invoke-static/range {v18 .. v18}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    :goto_3
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v6, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_a

    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "APK name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a

    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Certificate for: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Certificate issued by: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "The certificate is valid from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Certificate SN# "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Generated with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string/jumbo v5, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_b

    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Certificate data is correct**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/16 v18, 0x0

    return v18

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_3

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_4

    :cond_c
    const/16 v18, 0x1

    return v18

    :catch_3
    move-exception v10

    goto/16 :goto_2
.end method

.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFont:I

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFont:I

    return v0
.end method

.method public loadPreferences()V
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "SavedClickedItem"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "FontPreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/settings/display/FontPreview;->setDim(ZZ)V

    iput-boolean p2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontAccessibilitySwitch:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v2

    sget v3, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontAccessibilitySwitch:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 27

    invoke-super/range {p0 .. p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/HashSet;

    const-string/jumbo v4, "Font"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/HashSet;

    const-string/jumbo v4, "FontSize"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getFontSize(Landroid/content/Context;)F

    move-result v3

    float-to-int v15, v3

    const-string/jumbo v3, "fontArraySize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fontArraySize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xb

    if-ne v15, v3, :cond_6

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsEnabledShowBtnBg:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessiblity_font_switch"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "isAccessibilitySettingsVision"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0b05a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->configureActionBar()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setFontsizeLayoutSevenOrEleven(Z)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setAccessiblityFontSizeView(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    if-eqz v3, :cond_3

    const v3, 0x7f1103ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v4, "elite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->update7StepFontsizeList()V

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/settings/display/FontPreview;->DENSITY_BASE_PIXEL:[F

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v3, v3

    new-array v11, v3, [Landroid/content/res/Configuration;

    const-string/jumbo v3, "FontPreview onCreate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDensities.length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v13

    const/16 v17, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v3, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_d

    new-instance v10, Landroid/content/res/Configuration;

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    aget v3, v3, v17

    iput v3, v10, Landroid/content/res/Configuration;->densityDpi:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v10, Landroid/content/res/Configuration;->fontScale:F

    aput-object v10, v11, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    aget v3, v3, v17

    if-ne v13, v3, :cond_5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    goto/16 :goto_2

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_a
    const v3, 0x7f0b05a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    const v3, 0x7f1103b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    const v3, 0x7f0b0444

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f1103b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextSwitcher;

    const v3, 0x7f0b0443

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->update3StepFontsizeList()V

    goto/16 :goto_5

    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedScreenSize:I

    const v3, 0x7f110593

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    move/from16 v0, v20

    invoke-direct {v3, v4, v0, v5, v11}, Lcom/android/settings/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_8
    invoke-virtual {v4, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/display/FontPreview$2;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v3, 0x7f1103c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    array-length v0, v3

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    const/16 v17, 0x0

    :goto_9
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_f

    move/from16 v12, v17

    const v3, 0x7f04006e

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    const v3, 0x7f0b0917

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v17, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/samsung/android/settings/display/FontPreview$3;-><init>(Lcom/samsung/android/settings/display/FontPreview;I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0200c9

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_10
    const v3, 0x7f1103b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/display/FontPreview$4;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_13

    const/16 v19, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v19, :cond_14

    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentFontIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-le v3, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/display/FontPreview$5;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    invoke-virtual {v3, v4}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->changeFontSizeFromSeekBar(I)V

    :cond_12
    return-void

    :cond_13
    const/16 v19, 0x0

    goto :goto_a

    :cond_14
    const/4 v3, 0x1

    goto :goto_b

    :cond_15
    const v3, 0x7f1103bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v3, 0x7f0a0468

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0a045e

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f0a046d

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v6, v3, v4

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_c
    new-instance v26, Landroid/widget/TextView;

    invoke-direct/range {v26 .. v27}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    if-nez v3, :cond_16

    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/display/FontPreview$LoadListTask;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_16
    :goto_d
    const-string/jumbo v3, "FontPreview onCreate"

    const-string/jumbo v4, "called onCreate()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/display/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V

    goto :goto_d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const v3, 0x7f020508

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f11021d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreview$8;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f11021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0b042b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreview$9;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsEnabledShowBtnBg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    :cond_1
    const-string/jumbo v0, "FontPreview destroy"

    const-string/jumbo v1, "called onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string/jumbo v20, "FlipFont"

    const-string/jumbo v21, "onItemClick:()"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    return-void

    :cond_0
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f10014e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    sput v20, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b05d8

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b05be

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v20, 0x14000020

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b05bd

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v21, "android.intent.action.VIEW"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v13

    const v20, 0x14000020

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v21

    sget v22, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v20 .. v23}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->finish()V

    return-void

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    return-void

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    :cond_4
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v21

    sget v22, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v20 .. v23}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b05ba

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v16, v17

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "activity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const/16 v20, 0x3

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    const/16 v20, 0x1

    :try_start_2
    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RecentTaskInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_6
    :goto_2
    const-string/jumbo v20, "FlipFont"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "pkgName1:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string/jumbo v21, "USER_SELECTED_FONT_STYLE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    if-eqz v18, :cond_d

    const-string/jumbo v20, "default"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v22

    sget v23, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    if-eqz v14, :cond_e

    const/16 v20, 0x0

    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b05bc

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v12

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_d
    const/4 v14, 0x1

    goto/16 :goto_4

    :cond_e
    const/16 v20, 0x1

    goto/16 :goto_5

    :catch_2
    move-exception v11

    goto/16 :goto_3

    :catch_3
    move-exception v11

    goto/16 :goto_2
.end method

.method public onOkButtonPressed()Z
    .locals 35

    const-string/jumbo v30, ""

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v31

    const/16 v2, 0x2f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v6, 0x0

    move/from16 v0, v20

    invoke-static {v2, v6, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v2, "persist.sys.flipfontpath"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#Theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    sget-boolean v2, Lcom/samsung/android/settings/display/FontPreview;->REBOOT:Z

    if-nez v2, :cond_12

    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Landroid/content/res/Configuration;->FlipFont:I

    invoke-interface {v12, v15}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "sec_container_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    return v2

    :cond_1
    const/16 v21, 0x0

    const-string/jumbo v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/FontPreview;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/FontPreview;->badFontDialog(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v17

    const/4 v2, 0x0

    return v2

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    :goto_3
    const-string/jumbo v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreview;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/samsung/android/settings/flipfont/FontWriter;-><init>()V

    if-eqz v30, :cond_5

    const-string/jumbo v2, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    sput-object v30, Lcom/samsung/android/settings/display/FontPreview;->persistString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, " "

    invoke-virtual {v3, v2, v6}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->savePreferences()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sans.loc"

    const-string/jumbo v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v30, :cond_0

    const-string/jumbo v2, "FontPreview"

    const-string/jumbo v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/settings/flipfont/Typeface;

    move-result-object v29

    move-object/from16 v28, v30

    const-string/jumbo v2, ".xml"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-lez v25, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const/16 v32, 0x0

    if-eqz v29, :cond_9

    const/16 v23, 0x0

    :goto_4
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_9

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/settings/flipfont/TypefaceFile;

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : Application name, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v13, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    const-string/jumbo v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tpf.getFileName(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0, v2}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    :catch_1
    move-exception v22

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/display/FontPreview;->copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    goto :goto_5

    :cond_9
    if-eqz v21, :cond_b

    sget-boolean v2, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "FlipFont"

    const-string/jumbo v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/FontPreview;->badFontDialog(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_b
    sput-object v30, Lcom/samsung/android/settings/display/FontPreview;->persistString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->savePreferences()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v33, "#"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v19

    const-string/jumbo v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    const/16 v2, 0x32

    invoke-virtual {v10, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    const/16 v23, 0x1

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v2, "com.android.settings"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "com.samsung.music"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "com.sec.android.app.music"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    const-string/jumbo v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "com.nttdocomo.android.toruca"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    const-string/jumbo v2, "com.sec.android.app.camera"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "FontPreview"

    const-string/jumbo v6, "com.sec.android.app.camera == 0"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_12
    const/4 v2, 0x1

    return v2

    :catch_4
    move-exception v16

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/display/FontPreview$LoadListTask;)V

    iput-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    new-array v5, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string/jumbo v4, "FontPreview onResume"

    const-string/jumbo v5, "called onResume()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopDockConnected(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "easy_mode_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    const/4 v1, 0x1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-nez v0, :cond_1

    if-eqz v1, :cond_6

    :cond_1
    :goto_2
    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "USER_SELECTED_FONT_STYLE"

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public readFontSizePreference()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected savePreferences()V
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "SelectDialogIsActive"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "SavedClickedItem"

    iget v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "flip_font_style"

    iget v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public writeFontSizePreference(F)V
    .locals 5

    move v0, p1

    const-string/jumbo v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    return-void
.end method
