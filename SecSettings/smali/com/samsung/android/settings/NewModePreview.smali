.class public Lcom/samsung/android/settings/NewModePreview;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "NewModePreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/NewModePreview$10;,
        Lcom/samsung/android/settings/NewModePreview$11;,
        Lcom/samsung/android/settings/NewModePreview$12;,
        Lcom/samsung/android/settings/NewModePreview$13;,
        Lcom/samsung/android/settings/NewModePreview$14;,
        Lcom/samsung/android/settings/NewModePreview$15;,
        Lcom/samsung/android/settings/NewModePreview$16;,
        Lcom/samsung/android/settings/NewModePreview$1;,
        Lcom/samsung/android/settings/NewModePreview$2;,
        Lcom/samsung/android/settings/NewModePreview$3;,
        Lcom/samsung/android/settings/NewModePreview$4;,
        Lcom/samsung/android/settings/NewModePreview$5;,
        Lcom/samsung/android/settings/NewModePreview$6;,
        Lcom/samsung/android/settings/NewModePreview$7;,
        Lcom/samsung/android/settings/NewModePreview$8;,
        Lcom/samsung/android/settings/NewModePreview$9;,
        Lcom/samsung/android/settings/NewModePreview$RadioAdapter;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mModeItem:[Ljava/lang/String;

.field private static sColorBalanceBlue:I

.field private static sColorBalanceGreen:I

.field private static sColorBalancePreset:I

.field private static sColorBalanceRed:I

.field private static sPackageName:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

.field private mAutoAdaptiveTextView:Landroid/widget/TextView;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private final mBlueLightFilterObserver:Landroid/database/ContentObserver;

.field mBluelightFilterDialog:Landroid/app/AlertDialog;

.field private mCheckboxCustom:Landroid/widget/CheckedTextView;

.field private final mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCustomSeekBarBlue:Landroid/widget/SeekBar;

.field private final mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mCustomSeekBarGreen:Landroid/widget/SeekBar;

.field private final mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mCustomSeekBarRed:Landroid/widget/SeekBar;

.field private final mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mDTBlueObserver:Landroid/database/ContentObserver;

.field private final mDTGreenObserver:Landroid/database/ContentObserver;

.field private final mDTRedObserver:Landroid/database/ContentObserver;

.field mDisplayColourFooterView:Landroid/view/View;

.field private mEdgeColorBalance:Landroid/widget/LinearLayout;

.field private mEdgeColorBalanceSubText:Landroid/widget/TextView;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private final mGrayscaleObserver:Landroid/database/ContentObserver;

.field private mIsCustomEdgeBalanceSupported:Z

.field private mIsCustomEnable:Z

.field private mIsFocusableBlue:Z

.field private mIsFocusableGreen:Z

.field private mIsFocusableRed:Z

.field private mListView:Landroid/widget/ListView;

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private mPocBatteryCheckDialog:Landroid/app/AlertDialog;

.field private mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get10()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/NewModePreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    return-object v0
.end method

.method static synthetic -get12()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceBlue:I

    return v0
.end method

.method static synthetic -get13()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceGreen:I

    return v0
.end method

.method static synthetic -get14()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/NewModePreview;->sColorBalancePreset:I

    return v0
.end method

.method static synthetic -get15()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceRed:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/NewModePreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/NewModePreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableBlue:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/NewModePreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableGreen:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/NewModePreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableRed:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/NewModePreview;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/NewModePreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableBlue:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/NewModePreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableGreen:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/NewModePreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableRed:Z

    return p1
.end method

.method static synthetic -set4(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceBlue:I

    return p0
.end method

.method static synthetic -set5(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceGreen:I

    return p0
.end method

.method static synthetic -set6(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/NewModePreview;->sColorBalancePreset:I

    return p0
.end method

.method static synthetic -set7(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceRed:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/NewModePreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->changeCustomCheckboxState()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/NewModePreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->showBluelightfilterDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/NewModePreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->startEdgeColorBalance()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.android.gallery3d"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.camera"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.everglades.video"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "tv.peel.samsung.app"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "tv.peel.smartremote"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.readershub"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.books"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/NewModePreview;->sPackageName:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/NewModePreview$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/NewModePreview;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableRed:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableGreen:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableBlue:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEdgeBalanceSupported:Z

    iput-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryLevel:I

    iput-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iput-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    iput-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$1;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$2;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mGrayscaleObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$3;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mNegativeColorObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$4;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$6;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$7;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDTRedObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$8;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDTGreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$9;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDTBlueObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$10;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$11;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$12;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$13;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$14;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$15;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$16;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private changeCustomCheckboxState()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_custom"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iput-boolean v6, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_red"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_green"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_blue"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_red_temp"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_green_temp"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_blue_temp"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_red"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_green"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_blue"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Custom off (keep) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/NewModePreview;->updateColorBalanceCustomItems(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_custom"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iput-boolean v5, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_red_temp"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_green_temp"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_blue_temp"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ge v2, v5, :cond_1

    if-ge v1, v5, :cond_1

    if-ge v0, v5, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_red"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_green"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_blue"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_red_temp"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_green_temp"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_blue_temp"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Custom on(restore) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/NewModePreview;->updateColorBalanceCustomItems(Z)V

    goto/16 :goto_0
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

.method private initColorBalance()V
    .locals 12

    const v11, 0x7f0600ea

    const/16 v10, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->initColorBalanceCustomDB()V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v8, 0x7f0a0667

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eq v3, v5, :cond_1

    iput-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    new-instance v8, Lcom/samsung/android/settings/NewModePreview$20;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/NewModePreview$20;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "sec_display_preset_index"

    const/4 v9, 0x2

    invoke-static {v5, v8, v9, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string/jumbo v5, "ModePreview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "current preset : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    rsub-int/lit8 v8, v1, 0x4

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v8, 0x7f0a01f1

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0600ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0600ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v5, -0x10000

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "sec_display_temperature_red"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v2, v5, 0xb

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v8, 0x7f0a01ef

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0600eb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0600eb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    const v5, -0xff0100

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "sec_display_temperature_green"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v2, v5, 0xb

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v8, 0x7f0a01ed

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    const v5, -0xffff01

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "sec_display_temperature_blue"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v2, v5, 0xb

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v8, 0x7f0a02b0

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v8, 0x7f0a02b1

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    const v8, 0x7f121481

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v8, 0x7f0a0665

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "sec_display_temperature_custom"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_9

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    iget-boolean v7, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setClickable(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    new-instance v7, Lcom/samsung/android/settings/NewModePreview$21;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/NewModePreview$21;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/samsung/android/settings/NewModePreview$22;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/NewModePreview$22;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v6, 0x7f0a01e8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_8
    return-void

    :cond_9
    move v5, v7

    goto :goto_0
.end method

.method private initColorBalanceCustomDB()V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_custom"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "ModePreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "init DB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v8, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_red"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_green"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_blue"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "ModePreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "init DB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_custom"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_custom"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private isTemperatureSettingEnabled()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "greyscale_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "color_blind"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "blue_light_filter"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setColorBalanceCustomItemsVisible(Landroid/view/View;Z)V
    .locals 7

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x7f0a01e4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEdgeBalanceSupported:Z

    if-eqz v3, :cond_3

    move v2, p2

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v3, 0x7f0a02a4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_5

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3
.end method

.method private setPreferenceEnable(Landroid/view/View;Z)V
    .locals 5

    const v4, 0x1020014

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x1020015

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    const v4, 0x7f0a0664

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0a0668

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v4, p2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setEnabled(Z)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, p2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_6
    if-eqz p2, :cond_7

    iget-boolean v4, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    :goto_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->updateColorBalanceCustomItems(Z)V

    return-void

    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showBluelightfilterDialog()V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$17;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    new-instance v2, Lcom/samsung/android/settings/NewModePreview$18;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/NewModePreview$18;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    new-instance v1, Lcom/samsung/android/settings/NewModePreview$19;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/NewModePreview$19;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f121725

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f121724

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f12172b

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120892

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120899

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPocBatteryCheckDialog()V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$23;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$23;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121480

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12147f

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1205fd

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startEdgeColorBalance()V
    .locals 3

    iget v1, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryLevel:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->showPocBatteryCheckDialog()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.POC_BALANCE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/NewModePreview;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateColorBalanceCustomItems(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_green"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_blue"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_red"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_green"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_blue"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/NewModePreview;->setColorBalanceCustomItemsVisible(Landroid/view/View;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1079

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f0d01a9

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "mDNIe"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    new-array v5, v11, [Ljava/lang/String;

    sput-object v5, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f121721

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    sget-object v5, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f121729

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v5, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f12171f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    sget-object v5, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f121723

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const v5, 0x7f0a00b5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const v5, 0x7f0a0544

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    sget-object v6, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    const v7, 0x7f0d0177

    invoke-direct {v5, p0, v7, v6}, Lcom/samsung/android/settings/NewModePreview$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/samsung/android/settings/NewModePreview;->mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_mode_automatic_setting"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v8, :cond_0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setOverScrollMode(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportPocSettings(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEdgeBalanceSupported:Z

    const-string/jumbo v5, "ModePreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate():  mIsCustomEdgeBalanceSupported="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEdgeBalanceSupported:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    const v7, 0x7f0d00e7

    invoke-virtual {v5, v7, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v6, 0x7f0805cd

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v6, 0x1020014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v6, 0x1020015

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f12088b

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1200fa

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f1205da

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f1205db

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->initColorBalance()V

    new-instance v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_mode_setting"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "blue_light_filter"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_4

    if-eqz p3, :cond_3

    :cond_0
    :goto_1
    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const-string/jumbo v3, "ModePreview"

    const-string/jumbo v4, "onItemClick :  footerview"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->performClick()Z

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v4, p3, -0x1

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->showBluelightfilterDialog()V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->updateTemperatureSettingsState()V

    if-eqz v1, :cond_7

    return-void

    :cond_7
    if-nez p3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x4

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b042d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const-string/jumbo v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setmDNIeUserMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    return-void

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    add-int/lit8 v0, p3, -0x1

    goto :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v5, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mGrayscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "ScreenMode"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v3, "ModePreview"

    const-string/jumbo v4, "unregisterReceiver exception"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120fe0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/NewModePreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "greyscale_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mGrayscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method updateTemperatureSettingsState()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "sec_display_temperature_custom"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    iget-boolean v3, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->isTemperatureSettingEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/NewModePreview;->setPreferenceEnable(Landroid/view/View;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/NewModePreview;->setPreferenceEnable(Landroid/view/View;Z)V

    goto :goto_1
.end method
