.class public Lcom/samsung/android/settings/display/FontPreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;
    }
.end annotation


# static fields
.field private static final APK_NAME_LIST:[Ljava/lang/String;

.field private static CHANGE_MODE_FONT_SIZE:I

.field private static CHANGE_MODE_FONT_STYLE:I

.field private static CHANGE_MODE_SCREEN_SIZE:I

.field public static DEBUG:Z

.field public static REBOOT:Z

.field private static mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private static persistString:Ljava/lang/String;

.field public static sSelectedFontSizeSeekBarProgress:I


# instance fields
.field private mAccessFontOnOff:I

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

.field private mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mFontSizeStrings:[Ljava/lang/String;

.field private mFontStyleListView:Landroid/widget/ListView;

.field private mFontSwitch:Landroid/widget/Switch;

.field private mHugeString:Ljava/lang/String;

.field private mIsAccessibilitySettingsVision:Z

.field private mIsChangedFontSizeSeekBar:Z

.field private mIsChangedScreenSizeSeekBar:Z

.field private mIsCheckPlatformSignatures:Z

.field private mIsCheckReleaseSignatures:Z

.field private mIsClickSwitch:Z

.field private mIsFont11Level:Z

.field private mIsFontLargerOn:Z

.field private mIsFromSetupWizard:Z

.field mIsSelectedCurrentThemeFont:Z

.field private mListDensities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

.field private mMaxTextView:Landroid/widget/TextSwitcher;

.field private mMinTextView:Landroid/widget/TextView;

.field private mPackageName:Ljava/lang/String;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPreviewPager:Landroid/support/v4/view/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

.field private mPreviewSampleResIds:[I

.field private mPreviousFont:I

.field private mResIds_without_grid_app:[I

.field private mResIds_without_grid_app_external:[I

.field private mSavedClickedItem:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mSelectedFontSize:I

.field private mSelectedFontStyleItemIndex:I

.field private mSelectedScreenSize:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowForHugeFontTextView:Landroid/widget/TextView;

.field private mThemeFontTypeface:Landroid/graphics/Typeface;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/android/settings/PreviewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/display/FontPreviewTablet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/display/FontPreviewTablet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedScreenSizeSeekBar:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getFontNameFromSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/FontPreviewTablet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->changeFontSizeFromSeekBar(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/FontPreviewTablet;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setFontStyleList(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/display/FontPreviewTablet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->updateShowForHugeFontTextView(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.monotype.android.font.cooljazz"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.monotype.android.font.helvneuelt"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.monotype.android.font.samsungsans"

    aput-object v1, v0, v6

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

    const-string/jumbo v1, "com.monotype.android.font.samsungone"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->APK_NAME_LIST:[Ljava/lang/String;

    sput v4, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_SIZE:I

    sput v5, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_STYLE:I

    sput v6, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_SCREEN_SIZE:I

    sput-boolean v3, Lcom/samsung/android/settings/display/FontPreviewTablet;->REBOOT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0d0284

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurConfig:Landroid/content/res/Configuration;

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedScreenSizeSeekBar:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFontLargerOn:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckPlatformSignatures:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckReleaseSignatures:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsClickSwitch:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFromSetupWizard:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    iput-object v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I

    const v0, 0x7f0d0281

    filled-new-array {v0, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mResIds_without_grid_app:[I

    const v0, 0x7f0d0280

    filled-new-array {v0, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mResIds_without_grid_app_external:[I

    iput-object v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    return-void
.end method

.method private changeFontSizeFromSeekBar(I)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFloatRevisedValueList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v6, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0267

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/android/settings/PreviewPagerAdapter;->SetFontScale(IF)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v4, v0

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sput p1, Lcom/samsung/android/settings/display/FontPreviewTablet;->sSelectedFontSizeSeekBarProgress:I

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontFloatSize:F

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
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

.method private copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

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

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessiblity_font_switch"

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFontLargerOn:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->sSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    if-eq v1, v2, :cond_2

    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->sSelectedFontSizeSeekBarProgress:I

    if-ltz v1, :cond_2

    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_SIZE:I

    or-int/lit8 v0, v1, 0x0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedScreenSizeSeekBar:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedScreenSize:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    if-ltz v1, :cond_3

    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_SCREEN_SIZE:I

    or-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    if-ltz v1, :cond_4

    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_STYLE:I

    or-int/2addr v0, v1

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->finish()V

    return-void

    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->doneFontStyleOrFontSize(I)V

    return-void
.end method

.method private doneFontSize()V
    .locals 7

    const/4 v6, 0x0

    sget v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->sSelectedFontSizeSeekBarProgress:I

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "FontPreviewTablet"

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

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "large_font"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "FontPreviewTablet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.samsung.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    if-gt v2, v3, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "large_font"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v3, "FontPreviewTablet"

    const-string/jumbo v4, "com.samsung.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "large_font"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v3, "FontPreviewTablet"

    const-string/jumbo v4, "com.samsung.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doneFontStyleOrFontSize(I)V
    .locals 4

    const-string/jumbo v1, "FontPreviewTablet"

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

    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_STYLE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FontPreviewTablet"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_FONT_STYLE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->savePreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->onOkButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_SCREEN_SIZE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FontPreviewTablet"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_SCREEN_SIZE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mListDensities:Ljava/util/ArrayList;

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->ApplyForcedDisplayDensity(Landroid/content/Context;I)V

    :cond_1
    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_SIZE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FontPreviewTablet"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_FONT_SIZE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->doneFontSize()V

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontFloatSize:F

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->writeFontSizePreference(F)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->readFontSizePreference()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->finish()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getFontNameFromSystem()Ljava/lang/String;
    .locals 8

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "font_size"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "prefs"

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1211a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_0
    return-object v3

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/settings/Utils;->getFontName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setAccessiblityFontSizeView(Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0007

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0484

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAccessFontOnOff:I

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f120c2e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAccessFontOnOff:I

    if-eqz v2, :cond_2

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setDim(ZZ)V

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private setDim(ZZ)V
    .locals 3

    const v2, 0x7f060124

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f080752

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsClickSwitch:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->animationStart(Z)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsClickSwitch:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->invalidate()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f080751

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setFontStyleList(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontInstalled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v14

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v14}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mThemeFontTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v3, 0x7f070502

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0703db

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v6, v3, v4

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setReHeightFontStyleListview()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->loadPreferences()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setSelectedFontStyle()V

    if-eqz p1, :cond_2

    const-string/jumbo v3, "USER_SELECTED_FONT_STYLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const/4 v3, -0x1

    if-le v11, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v11, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/settings/display/FontPreviewTablet;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_2
    return-void

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setFontsizeLayoutSevenOrEleven(Z)V
    .locals 10

    const v9, 0x7f0a07c2

    const v7, 0x7f0a0795

    const/4 v8, 0x0

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f12176c

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v5, 0x7f0d0124

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x7f120552

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    const v5, 0x7f120899

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setupAlert()V

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060203

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    const v5, 0x7f0a08b0

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    const v5, 0x7f0a036c

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextSwitcher;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    new-instance v6, Lcom/samsung/android/settings/display/FontPreviewTablet$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/display/FontPreviewTablet$5;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    const/high16 v5, 0x10a0000

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const v5, 0x10a0001

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v3}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_2

    const v5, 0x7f0a036d

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMinTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120d39

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mHugeString:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120a8a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraHugeString:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    iget v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAccessFontOnOff:I

    if-nez v5, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f120c2d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f120c2c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    invoke-direct {p0, v5, v8}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setDim(ZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const v7, 0x7f080628

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setReHeightFontStyleListview()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-interface {v6, v1, v8, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->requestLayout()V

    const v6, 0x7f0a036a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    new-instance v6, Lcom/samsung/android/settings/display/FontPreviewTablet$6;

    invoke-direct {v6, p0, v4}, Lcom/samsung/android/settings/display/FontPreviewTablet$6;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;Landroid/widget/ScrollView;)V

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private setSelectedFontStyle()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeFontIndex()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1211a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FontPreviewTablet"

    const-string/jumbo v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "FontPreviewTablet"

    const-string/jumbo v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "default"

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    if-gez v2, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1211a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v2, "FontPreviewTablet"

    const-string/jumbo v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private update7StepFontsizeList()V
    .locals 7

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0300c2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeStrings:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03010d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFloatRevisedValueList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFloatRevisedValueList:Ljava/util/ArrayList;

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
    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCharSeqRevisedValues:Ljava/util/ArrayList;

    return-void
.end method

.method private updateShowForHugeFontTextView(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    if-le p1, v1, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5

    move-object v1, p1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1211b5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1211b4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/FontPreviewTablet$8;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet$8;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;Ljava/lang/String;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/FontPreviewTablet$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/FontPreviewTablet$9;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/display/FontPreviewTablet$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreviewTablet$10;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f08010e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f08010f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 21

    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

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

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const/4 v11, 0x0

    :goto_0
    sget-object v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->APK_NAME_LIST:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    if-eqz p1, :cond_5

    sget-object v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v18, v18, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const-string/jumbo v18, "android"

    sget-object v19, Lcom/samsung/android/settings/display/FontPreviewTablet;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v19, v19, v11

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_4

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckPlatformSignatures:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/settings/display/FontPreviewTablet;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v19, v19, v11

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckReleaseSignatures:Z

    const-string/jumbo v18, "FontPreviewTablet"

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

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckPlatformSignatures:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", mIsCheckReleaseSignatures : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckReleaseSignatures:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckPlatformSignatures:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckReleaseSignatures:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->isSharedFont(Ljava/lang/String;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_3

    :cond_2
    const-string/jumbo v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_3
    const/16 v18, 0x0

    return v18

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_6
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v18, :cond_7

    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "checkFont - check if valid certificate"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->isSharedFont(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    return v18

    :cond_8
    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

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
    if-eqz v15, :cond_e

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

    if-eqz v18, :cond_a

    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v18, :cond_9

    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Signature is correct**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v18, 0x0

    return v18

    :cond_a
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v18, :cond_b

    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Signature is incorrect**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
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
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v18, :cond_c

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

    if-eqz v3, :cond_c

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

    :cond_c
    const-string/jumbo v5, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v18, :cond_d

    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Certificate data is correct**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
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

    :cond_e
    const/16 v18, 0x1

    return v18

    :catch_3
    move-exception v10

    goto/16 :goto_2
.end method

.method protected errorDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/display/FontPreviewTablet$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/FontPreviewTablet$7;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "selectedFont"

    const-string/jumbo v3, "MONOTYPE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected isSharedFont(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v8

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v5, v5, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v5, v5, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v5, v5, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :goto_1
    if-eqz v2, :cond_3

    const-string/jumbo v5, "packageinstaller"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    :goto_2
    const-string/jumbo v5, "FontPreviewTablet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Flip font is preload : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , isSharedFont : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    return v8
.end method

.method public loadPreferences()V
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "SavedClickedItem"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "FontPreviewTablet"

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

    iput v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setDim(ZZ)V

    iput-boolean p2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFontLargerOn:Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFromSetupWizard:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1389

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setResult(I)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->doneFontPreview()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsClickSwitch:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 27

    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->getFontSize(Landroid/content/Context;)F

    move-result v23

    move/from16 v0, v23

    float-to-int v11, v0

    const-string/jumbo v23, "fontArraySize"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "fontArraySize:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0xb

    move/from16 v0, v23

    if-ne v11, v0, :cond_7

    const/16 v23, 0x1

    :goto_0
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    const/16 v23, 0x6

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "accessiblity_font_switch"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAccessFontOnOff:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAccessFontOnOff:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFontLargerOn:Z

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    if-eqz v23, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string/jumbo v24, "isAccessibilitySettingsVision"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    const v23, 0x7f12176c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    const/16 v23, 0x6

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "device_provisioned"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_9

    const/16 v23, 0x1

    :goto_2
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFromSetupWizard:Z

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setFontsizeLayoutSevenOrEleven(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setAccessiblityFontSizeView(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFromSetupWizard:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    const v23, 0x7f0a07c0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->getProperTabletDensities(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mListDensities:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mListDensities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const v23, 0x7f0a0749

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v23, 0x7f120f58

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mListDensities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v7, v0, [Landroid/content/res/Configuration;

    const-string/jumbo v23, "FontPreview onCreate"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "mDensities.length"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mListDensities:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v9

    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mListDensities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_c

    new-instance v6, Landroid/content/res/Configuration;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mListDensities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    iput v0, v6, Landroid/content/res/Configuration;->densityDpi:I

    :cond_5
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    iput v0, v6, Landroid/content/res/Configuration;->fontScale:F

    aput-object v6, v7, v13

    const-string/jumbo v23, "FontPreview onCreate"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "config.densityDpi "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v6, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mListDensities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    if-ne v9, v0, :cond_6

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFontLargerOn:Z

    const/16 v23, 0x5

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    goto/16 :goto_1

    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_2

    :cond_a
    const v23, 0x7f12176c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedScreenSize:I

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v23

    sput-object v23, Lcom/samsung/android/settings/display/FontPreviewTablet;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    sget-object v23, Lcom/samsung/android/settings/display/FontPreviewTablet;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface/range {v23 .. v23}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mResIds_without_grid_app:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    const v23, 0x7f0a0677

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f060126

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070628

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070629

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v23, 0x7f0a0676

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    new-instance v23, Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v15, v2, v7}, Lcom/android/settings/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v24, v0

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    :goto_7
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v23, v0

    new-instance v24, Lcom/samsung/android/settings/display/FontPreviewTablet$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet$1;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v23, 0x7f0a064a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "layout_inflater"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    const/4 v13, 0x0

    :goto_8
    move/from16 v0, v20

    if-ge v13, v0, :cond_f

    move v8, v13

    const v23, 0x7f0d0076

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    const v23, 0x7f1213f2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    add-int/lit8 v25, v13, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1

    aput-object v25, v24, v26

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v23, Lcom/samsung/android/settings/display/FontPreviewTablet$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/settings/display/FontPreviewTablet$2;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mResIds_without_grid_app_external:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mResIds_without_grid_app_external:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I

    goto/16 :goto_6

    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v23

    if-lez v23, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    const v24, 0x7f08010f

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_10
    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->changeColor(I)V

    const v23, 0x7f0a0796

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mListDensities:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v23, v0

    new-instance v24, Lcom/samsung/android/settings/display/FontPreviewTablet$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet$3;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->update7StepFontsizeList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "font_size"

    const/16 v25, 0x2

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->changeFontSizeFromSeekBar(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentFontIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->updateShowForHugeFontTextView(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v23, v0

    new-instance v24, Lcom/samsung/android/settings/display/FontPreviewTablet$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet$4;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(I)V

    const v23, 0x7f0a036e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ListView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    new-instance v23, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    move-object/from16 v23, v0

    sget-object v24, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/high16 v24, 0x20000

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->clearFlags(I)V

    return-void

    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_9
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v15, :cond_0

    return-void

    :cond_0
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v15, v15, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f120c2a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f1211bb

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v15, 0x14000020

    invoke-virtual {v10, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v15, v10}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f12119f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v16, "android.intent.action.VIEW"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v10

    const v15, 0x14000020

    invoke-virtual {v10, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->finish()V

    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v15}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mThemeFontTypeface:Landroid/graphics/Typeface;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    :cond_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    return-void

    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    const/4 v15, 0x1

    move/from16 v0, p3

    if-ge v0, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f1211b1

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v12, v13

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "activity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v15, 0x1

    :try_start_1
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    :goto_2
    const-string/jumbo v15, "FlipFont"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "pkgName1:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v15, :cond_8

    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v15, v15, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreviewTablet;->checkFont(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    sget-boolean v15, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v15, :cond_9

    const-string/jumbo v15, "FlipFont"

    const-string/jumbo v16, "**onOkButtonPressed - bad font**"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreviewTablet;->badFontDialog(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f1211b2

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v15}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v15}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :catch_1
    move-exception v8

    goto :goto_3

    :catch_2
    move-exception v8

    goto/16 :goto_2
.end method

.method public onOkButtonPressed()Z
    .locals 37

    const-string/jumbo v31, ""

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v32

    const/16 v2, 0x2f

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v6, 0x0

    move/from16 v0, v21

    invoke-static {v2, v6, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v2, "persist.sys.flipfontpath"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

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

    sget-boolean v2, Lcom/samsung/android/settings/display/FontPreviewTablet;->REBOOT:Z

    if-nez v2, :cond_13

    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Landroid/content/res/Configuration;->FlipFont:I

    invoke-interface {v12, v15}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "sec_container_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    return v2

    :cond_1
    const/16 v22, 0x0

    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v18

    const/4 v2, 0x0

    return v2

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    :goto_3
    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->savePreferences()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    new-instance v3, Lcom/samsung/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/samsung/android/settings/flipfont/FontWriter;-><init>()V

    if-eqz v31, :cond_5

    const-string/jumbo v2, "default"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    sput-object v31, Lcom/samsung/android/settings/display/FontPreviewTablet;->persistString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v6, " "

    invoke-virtual {v3, v2, v6}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sans.loc"

    const-string/jumbo v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v31, :cond_0

    const-string/jumbo v2, "FontPreviewTablet"

    const-string/jumbo v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/settings/flipfont/Typeface;

    move-result-object v30

    move-object/from16 v29, v31

    const-string/jumbo v2, ".xml"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const/16 v33, 0x0

    if-eqz v30, :cond_9

    const/16 v24, 0x0

    :goto_4
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_9

    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/settings/flipfont/TypefaceFile;

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "FontPreviewTablet"

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

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v13, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v25

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0, v2}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    :catch_1
    move-exception v23

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    goto :goto_5

    :cond_9
    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    new-instance v2, Landroid/app/DialogFragment;

    invoke-direct {v2}, Landroid/app/DialogFragment;-><init>()V

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/ListView;

    if-eqz v34, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->savePreferences()V

    sget-boolean v2, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "FlipFont"

    const-string/jumbo v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f121a5d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->errorDialog(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_c
    sput-object v31, Lcom/samsung/android/settings/display/FontPreviewTablet;->persistString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->savePreferences()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v35, "#"

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v20

    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    const/16 v2, 0x32

    invoke-virtual {v10, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    const/16 v24, 0x1

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v2, "com.android.settings"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.samsung.music"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.sec.android.app.music"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    const-string/jumbo v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "com.nttdocomo.android.toruca"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_11
    const-string/jumbo v2, "com.sec.android.app.camera"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "FontPreviewTablet"

    const-string/jumbo v6, "com.sec.android.app.camera == 0"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    const/4 v2, 0x1

    return v2

    :catch_4
    move-exception v17

    goto/16 :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "USER_SELECTED_FONT_STYLE"

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public readFontSizePreference()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurConfig:Landroid/content/res/Configuration;

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

    const-string/jumbo v1, "FontPreviewTablet"

    const-string/jumbo v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected savePreferences()V
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "SelectDialogIsActive"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "SavedClickedItem"

    iget v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "flip_font_style"

    iget v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

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

    const-string/jumbo v2, "FontPreviewTablet"

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

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    return-void
.end method
