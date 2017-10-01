.class public Lcom/samsung/android/settings/display/DisplayScalingActivity;
.super Lcom/android/settings/InstrumentedActivity;
.source "DisplayScalingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/DisplayScalingActivity$1;,
        Lcom/samsung/android/settings/display/DisplayScalingActivity$2;
    }
.end annotation


# static fields
.field private static DISPLAY_SCALING:I

.field private static DISPLAY_SCALING_BUTTON:I

.field private static DISPLAY_SCALING_CANCEL:I

.field private static DISPLAY_SCALING_DONE:I

.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private condensedDensity:I

.field private dynamicDensities:[Ljava/lang/String;

.field private isCondensed:Z

.field private isEnabledShowBtnBg:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mCalendarIcon:Landroid/widget/ImageView;

.field private mCalendarIcon1:Landroid/widget/ImageView;

.field private mCalendarIcon2:Landroid/widget/ImageView;

.field private mCalendarLayout:Landroid/widget/LinearLayout;

.field private mCalendarLayout1:Landroid/widget/LinearLayout;

.field private mCalendarLayout2:Landroid/widget/LinearLayout;

.field private mCalendarTitle:Landroid/widget/TextView;

.field private mCalendarTitle1:Landroid/widget/TextView;

.field private mCalendarTitle2:Landroid/widget/TextView;

.field private mCameraIcon:Landroid/widget/ImageView;

.field private mCameraIcon1:Landroid/widget/ImageView;

.field private mCameraIcon2:Landroid/widget/ImageView;

.field private mCameraLayout:Landroid/widget/LinearLayout;

.field private mCameraLayout1:Landroid/widget/LinearLayout;

.field private mCameraLayout2:Landroid/widget/LinearLayout;

.field private mCameraTitle:Landroid/widget/TextView;

.field private mCameraTitle1:Landroid/widget/TextView;

.field private mCameraTitle2:Landroid/widget/TextView;

.field private mCondensedClickListener:Landroid/view/View$OnClickListener;

.field private mCondensedLayout:Landroid/widget/LinearLayout;

.field private mCondensedList:Landroid/widget/LinearLayout;

.field private mCondensedRadio:Landroid/widget/RadioButton;

.field private mCondensedStandardList:Landroid/widget/LinearLayout;

.field private mContactsIcon:Landroid/widget/ImageView;

.field private mContactsIcon1:Landroid/widget/ImageView;

.field private mContactsIcon2:Landroid/widget/ImageView;

.field private mContactsLayout:Landroid/widget/LinearLayout;

.field private mContactsLayout1:Landroid/widget/LinearLayout;

.field private mContactsLayout2:Landroid/widget/LinearLayout;

.field private mContactsTitle:Landroid/widget/TextView;

.field private mContactsTitle1:Landroid/widget/TextView;

.field private mContactsTitle2:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mEmilIcon:Landroid/widget/ImageView;

.field private mEmilIcon1:Landroid/widget/ImageView;

.field private mEmilIcon2:Landroid/widget/ImageView;

.field private mEmilLayout:Landroid/widget/LinearLayout;

.field private mEmilLayout1:Landroid/widget/LinearLayout;

.field private mEmilLayout2:Landroid/widget/LinearLayout;

.field private mEmilTitle:Landroid/widget/TextView;

.field private mEmilTitle1:Landroid/widget/TextView;

.field private mEmilTitle2:Landroid/widget/TextView;

.field private mGalleryIcon:Landroid/widget/ImageView;

.field private mGalleryIcon1:Landroid/widget/ImageView;

.field private mGalleryIcon2:Landroid/widget/ImageView;

.field private mGalleryLayout:Landroid/widget/LinearLayout;

.field private mGalleryLayout1:Landroid/widget/LinearLayout;

.field private mGalleryLayout2:Landroid/widget/LinearLayout;

.field private mGalleryTitle:Landroid/widget/TextView;

.field private mGalleryTitle1:Landroid/widget/TextView;

.field private mGalleryTitle2:Landroid/widget/TextView;

.field private mInternetIcon:Landroid/widget/ImageView;

.field private mInternetIcon1:Landroid/widget/ImageView;

.field private mInternetIcon2:Landroid/widget/ImageView;

.field private mInternetLayout:Landroid/widget/LinearLayout;

.field private mInternetLayout1:Landroid/widget/LinearLayout;

.field private mInternetLayout2:Landroid/widget/LinearLayout;

.field private mInternetTitle:Landroid/widget/TextView;

.field private mInternetTitle1:Landroid/widget/TextView;

.field private mInternetTitle2:Landroid/widget/TextView;

.field private mMessagesIcon:Landroid/widget/ImageView;

.field private mMessagesIcon1:Landroid/widget/ImageView;

.field private mMessagesIcon2:Landroid/widget/ImageView;

.field private mMessagesLayout:Landroid/widget/LinearLayout;

.field private mMessagesLayout1:Landroid/widget/LinearLayout;

.field private mMessagesLayout2:Landroid/widget/LinearLayout;

.field private mMessagesTitle:Landroid/widget/TextView;

.field private mMessagesTitle1:Landroid/widget/TextView;

.field private mMessagesTitle2:Landroid/widget/TextView;

.field private mMusicIcon:Landroid/widget/ImageView;

.field private mMusicIcon1:Landroid/widget/ImageView;

.field private mMusicIcon2:Landroid/widget/ImageView;

.field private mMusicLayout:Landroid/widget/LinearLayout;

.field private mMusicLayout1:Landroid/widget/LinearLayout;

.field private mMusicLayout2:Landroid/widget/LinearLayout;

.field private mMusicTitle:Landroid/widget/TextView;

.field private mMusicTitle1:Landroid/widget/TextView;

.field private mMusicTitle2:Landroid/widget/TextView;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSVoiceIcon:Landroid/widget/ImageView;

.field private mSVoiceIcon1:Landroid/widget/ImageView;

.field private mSVoiceIcon2:Landroid/widget/ImageView;

.field private mSVoiceLayout:Landroid/widget/LinearLayout;

.field private mSVoiceLayout1:Landroid/widget/LinearLayout;

.field private mSVoiceLayout2:Landroid/widget/LinearLayout;

.field private mSVoiceTitle:Landroid/widget/TextView;

.field private mSVoiceTitle1:Landroid/widget/TextView;

.field private mSVoiceTitle2:Landroid/widget/TextView;

.field private mSaveButton:Landroid/widget/Button;

.field private mStandardClickListener:Landroid/view/View$OnClickListener;

.field private mStandardLayout:Landroid/widget/LinearLayout;

.field private mStandardList:Landroid/widget/LinearLayout;

.field private mStandardRadio:Landroid/widget/RadioButton;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherIcon1:Landroid/widget/ImageView;

.field private mWeatherIcon2:Landroid/widget/ImageView;

.field private mWeatherLayout:Landroid/widget/LinearLayout;

.field private mWeatherLayout1:Landroid/widget/LinearLayout;

.field private mWeatherLayout2:Landroid/widget/LinearLayout;

.field private mWeatherTitle:Landroid/widget/TextView;

.field private mWeatherTitle1:Landroid/widget/TextView;

.field private mWeatherTitle2:Landroid/widget/TextView;

.field private mWindowmanager:Landroid/view/IWindowManager;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->DISPLAY_SCALING_BUTTON:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->DISPLAY_SCALING_CANCEL:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/view/IWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWindowmanager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->DISPLAY_SCALING_DONE:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/DisplayScalingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->condensedDensity:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/DisplayScalingActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->dynamicDensities:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->isCondensed:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCondensedList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCondensedRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCondensedStandardList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->DISPLAY_SCALING_BUTTON:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->DISPLAY_SCALING_CANCEL:I

    return p0
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->DISPLAY_SCALING_DONE:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/DisplayScalingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperenceStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/android/settingslib/Utils;->getCallPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.camera"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.email.provider"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.gallery3d"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.messaging"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.music"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {}, Lcom/android/settingslib/Utils;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.voiceserviceplatform"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.weather"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->isCondensed:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->isEnabledShowBtnBg:Z

    const-string/jumbo v0, "NONE"

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->dynamicDensities:[Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->dynamicDensities:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->condensedDensity:I

    new-instance v0, Lcom/samsung/android/settings/display/DisplayScalingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity$1;-><init>(Lcom/samsung/android/settings/display/DisplayScalingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity$2;-><init>(Lcom/samsung/android/settings/display/DisplayScalingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCondensedClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040097

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    return-void
.end method

.method private updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "condensed"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0a0284

    :goto_0
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    return-void

    :cond_0
    const v4, 0x7f0a027b

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0a05d3

    :goto_3
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    :cond_2
    const v4, 0x7f0a05d0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2
.end method

.method private updatePreperenceStatus()V
    .locals 8

    const/16 v7, 0x8

    sget-object v4, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_15

    :try_start_0
    sget-object v4, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string/jumbo v4, "com.sec.android.app.camera"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraIcon1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraTitle1:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraIcon2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraTitle2:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    const-string/jumbo v5, "com.samsung.android.app.music.chn"

    aput-object v5, v4, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v4, "com.sec.android.app.camera"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/Utils;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsIcon1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsTitle1:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsIcon2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsTitle2:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "com.samsung.android.email.provider"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilIcon1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilTitle1:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilIcon2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilTitle2:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v4, "com.sec.android.gallery3d"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryIcon1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryTitle1:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryIcon2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryTitle2:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v4, "com.sec.android.app.sbrowser"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetIcon1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetTitle1:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetIcon2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetTitle2:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetTitle:Landroid/widget/TextView;

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetTitle1:Landroid/widget/TextView;

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetTitle2:Landroid/widget/TextView;

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesIcon1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesTitle1:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesIcon2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesTitle2:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    sget-object v4, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicIcon1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicTitle1:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicIcon2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicTitle2:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicTitle:Landroid/widget/TextView;

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicTitle1:Landroid/widget/TextView;

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicTitle2:Landroid/widget/TextView;

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/android/settingslib/Utils;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarIcon1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarTitle1:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarIcon2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarTitle2:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarTitle:Landroid/widget/TextView;

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarTitle1:Landroid/widget/TextView;

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarTitle2:Landroid/widget/TextView;

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v4, "com.samsung.voiceserviceplatform"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceIcon1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceTitle1:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceIcon2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceTitle2:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v4, "com.samsung.android.weather"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherIcon1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherTitle1:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherIcon2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherTitle2:Landroid/widget/TextView;

    sget-object v6, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/Utils;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v4, "com.samsung.android.email.provider"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v4, "com.sec.android.gallery3d"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v4, "com.sec.android.app.sbrowser"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_10
    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_11
    sget-object v4, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string/jumbo v5, "music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v4, "com.android.calendar"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v4, "com.samsung.voiceserviceplatform"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v4, "com.samsung.android.weather"

    sget-object v5, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_15
    return-void
.end method

.method private updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->DISPLAY_SCALING:I

    sget v0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->DISPLAY_SCALING:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "DisplayScalingActivity"

    const-string/jumbo v4, "KKK onCreate"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.DISPLAY_SCALING_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->sendBroadcast(Landroid/content/Intent;)V

    const v1, 0x7f0400d3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWindowmanager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_button_background"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->isEnabledShowBtnBg:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->configureActionBar()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mPm:Landroid/content/pm/PackageManager;

    const v1, 0x7f1102d1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f1102d4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCondensedLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f1102d2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardRadio:Landroid/widget/RadioButton;

    const v1, 0x7f1102d5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCondensedRadio:Landroid/widget/RadioButton;

    const v1, 0x7f110315

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f110318

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f11031b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f11031e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f110321

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f110324

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f110327

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f11032a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f11032d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f110330

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f1102d9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraLayout1:Landroid/widget/LinearLayout;

    const v1, 0x7f1102dc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsLayout1:Landroid/widget/LinearLayout;

    const v1, 0x7f1102df

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilLayout1:Landroid/widget/LinearLayout;

    const v1, 0x7f1102e2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryLayout1:Landroid/widget/LinearLayout;

    const v1, 0x7f1102e5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetLayout1:Landroid/widget/LinearLayout;

    const v1, 0x7f1102e8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesLayout1:Landroid/widget/LinearLayout;

    const v1, 0x7f1102eb

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicLayout1:Landroid/widget/LinearLayout;

    const v1, 0x7f1102ee

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarLayout1:Landroid/widget/LinearLayout;

    const v1, 0x7f1102f1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceLayout1:Landroid/widget/LinearLayout;

    const v1, 0x7f1102f4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherLayout1:Landroid/widget/LinearLayout;

    const v1, 0x7f1102f7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraLayout2:Landroid/widget/LinearLayout;

    const v1, 0x7f1102fa

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsLayout2:Landroid/widget/LinearLayout;

    const v1, 0x7f1102fd

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilLayout2:Landroid/widget/LinearLayout;

    const v1, 0x7f110300

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryLayout2:Landroid/widget/LinearLayout;

    const v1, 0x7f110303

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetLayout2:Landroid/widget/LinearLayout;

    const v1, 0x7f110306

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesLayout2:Landroid/widget/LinearLayout;

    const v1, 0x7f110309

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicLayout2:Landroid/widget/LinearLayout;

    const v1, 0x7f11030c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarLayout2:Landroid/widget/LinearLayout;

    const v1, 0x7f11030f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceLayout2:Landroid/widget/LinearLayout;

    const v1, 0x7f110312

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherLayout2:Landroid/widget/LinearLayout;

    const v1, 0x7f110316

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraIcon:Landroid/widget/ImageView;

    const v1, 0x7f110319

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsIcon:Landroid/widget/ImageView;

    const v1, 0x7f11031c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilIcon:Landroid/widget/ImageView;

    const v1, 0x7f11031f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryIcon:Landroid/widget/ImageView;

    const v1, 0x7f110322

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetIcon:Landroid/widget/ImageView;

    const v1, 0x7f110325

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesIcon:Landroid/widget/ImageView;

    const v1, 0x7f110328

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicIcon:Landroid/widget/ImageView;

    const v1, 0x7f11032b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarIcon:Landroid/widget/ImageView;

    const v1, 0x7f11032e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceIcon:Landroid/widget/ImageView;

    const v1, 0x7f110331

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherIcon:Landroid/widget/ImageView;

    const v1, 0x7f1102da

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraIcon1:Landroid/widget/ImageView;

    const v1, 0x7f1102dd

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsIcon1:Landroid/widget/ImageView;

    const v1, 0x7f1102e0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilIcon1:Landroid/widget/ImageView;

    const v1, 0x7f1102e3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryIcon1:Landroid/widget/ImageView;

    const v1, 0x7f1102e6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetIcon1:Landroid/widget/ImageView;

    const v1, 0x7f1102e9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesIcon1:Landroid/widget/ImageView;

    const v1, 0x7f1102ec

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicIcon1:Landroid/widget/ImageView;

    const v1, 0x7f1102ef

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarIcon1:Landroid/widget/ImageView;

    const v1, 0x7f1102f2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceIcon1:Landroid/widget/ImageView;

    const v1, 0x7f1102f5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherIcon1:Landroid/widget/ImageView;

    const v1, 0x7f1102f8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraIcon2:Landroid/widget/ImageView;

    const v1, 0x7f1102fb

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsIcon2:Landroid/widget/ImageView;

    const v1, 0x7f1102fe

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilIcon2:Landroid/widget/ImageView;

    const v1, 0x7f110301

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryIcon2:Landroid/widget/ImageView;

    const v1, 0x7f110304

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetIcon2:Landroid/widget/ImageView;

    const v1, 0x7f110307

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesIcon2:Landroid/widget/ImageView;

    const v1, 0x7f11030a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicIcon2:Landroid/widget/ImageView;

    const v1, 0x7f11030d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarIcon2:Landroid/widget/ImageView;

    const v1, 0x7f110310

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceIcon2:Landroid/widget/ImageView;

    const v1, 0x7f110313

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherIcon2:Landroid/widget/ImageView;

    const v1, 0x7f110317

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraTitle:Landroid/widget/TextView;

    const v1, 0x7f11031a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsTitle:Landroid/widget/TextView;

    const v1, 0x7f11031d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilTitle:Landroid/widget/TextView;

    const v1, 0x7f110320

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryTitle:Landroid/widget/TextView;

    const v1, 0x7f110323

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetTitle:Landroid/widget/TextView;

    const v1, 0x7f110326

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesTitle:Landroid/widget/TextView;

    const v1, 0x7f110329

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicTitle:Landroid/widget/TextView;

    const v1, 0x7f11032c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarTitle:Landroid/widget/TextView;

    const v1, 0x7f11032f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceTitle:Landroid/widget/TextView;

    const v1, 0x7f110332

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherTitle:Landroid/widget/TextView;

    const v1, 0x7f1102db

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraTitle1:Landroid/widget/TextView;

    const v1, 0x7f1102de

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsTitle1:Landroid/widget/TextView;

    const v1, 0x7f1102e1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilTitle1:Landroid/widget/TextView;

    const v1, 0x7f1102e4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryTitle1:Landroid/widget/TextView;

    const v1, 0x7f1102e7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetTitle1:Landroid/widget/TextView;

    const v1, 0x7f1102ea

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesTitle1:Landroid/widget/TextView;

    const v1, 0x7f1102ed

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicTitle1:Landroid/widget/TextView;

    const v1, 0x7f1102f0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarTitle1:Landroid/widget/TextView;

    const v1, 0x7f1102f3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceTitle1:Landroid/widget/TextView;

    const v1, 0x7f1102f6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherTitle1:Landroid/widget/TextView;

    const v1, 0x7f1102f9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCameraTitle2:Landroid/widget/TextView;

    const v1, 0x7f1102fc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContactsTitle2:Landroid/widget/TextView;

    const v1, 0x7f1102ff

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mEmilTitle2:Landroid/widget/TextView;

    const v1, 0x7f110302

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mGalleryTitle2:Landroid/widget/TextView;

    const v1, 0x7f110305

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mInternetTitle2:Landroid/widget/TextView;

    const v1, 0x7f110308

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMessagesTitle2:Landroid/widget/TextView;

    const v1, 0x7f11030b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mMusicTitle2:Landroid/widget/TextView;

    const v1, 0x7f11030e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCalendarTitle2:Landroid/widget/TextView;

    const v1, 0x7f110311

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSVoiceTitle2:Landroid/widget/TextView;

    const v1, 0x7f110314

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mWeatherTitle2:Landroid/widget/TextView;

    const v1, 0x7f1102d6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardList:Landroid/widget/LinearLayout;

    const v1, 0x7f1102d7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCondensedList:Landroid/widget/LinearLayout;

    const v1, 0x7f1102d8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCondensedStandardList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCondensedLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCondensedClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "condensed"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->isCondensed:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->isCondensed:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mCondensedRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->updatePreperenceStatus()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    move v1, v3

    goto/16 :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mStandardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const v3, 0x7f020506

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f11021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mcancelButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/display/DisplayScalingActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity$3;-><init>(Lcom/samsung/android/settings/display/DisplayScalingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f11021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0b183c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSaveButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;-><init>(Lcom/samsung/android/settings/display/DisplayScalingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->isEnabledShowBtnBg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method
