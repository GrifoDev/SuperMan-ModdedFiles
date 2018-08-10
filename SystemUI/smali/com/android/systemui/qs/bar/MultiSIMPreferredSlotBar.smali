.class public Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.super Lcom/android/systemui/qs/bar/QSBarItem;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;,
        Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;,
        Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;,
        Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$4;,
        Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;,
        Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$6;,
        Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;,
        Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-qs-bar-MultiSIMPreferredSlotBar$ButtonTypeSwitchesValues:[I = null

.field private static final MESSAGE_CHANGE_NETWORK_MODE:I = 0x3e9

.field private static final MESSAGE_DELAY_DATASERVICE_SET:I = 0x3eb

.field private static final MESSAGE_DELAY_DATASERVICE_TIMEOUT:I = 0x3ec

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x3ea

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE_IN_THREAD:I = 0x3ee

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE_ONESLOT:I = 0x3ed

.field private static final MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON:I = 0x3e8

.field private static final NETOWRKMODECHANGE_MAX_TIMEOUT:I = 0x2710

.field private static final QsPrefferedBtnImage:[I

.field private static final TAG:Ljava/lang/String; = "MultiSIMPreferredSlotBar"


# instance fields
.field private Netchangefinished:Z

.field private SimImageIdx:[I

.field private SimName:[Ljava/lang/String;

.field private SimState_1:Ljava/lang/String;

.field private SimState_2:Ljava/lang/String;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAirplaneMode:Z

.field private mCTCforceoff:Z

.field private mChangedByDataButton:Z

.field private mContext:Landroid/content/Context;

.field mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

.field private mDefaultDataSimId:I

.field mDefaultSmsButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

.field private mDefaultSmsSimId:I

.field mDefaultVoiceButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

.field private mDefaultVoiceSimId:I

.field private mDimTextColor:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInCallState:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileDataChanging:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobileDataSettingEnabled:Z

.field private mNetworkTypeHandler:Landroid/os/Handler;

.field private mNormalTextColor:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowEndMargin:I

.field private mPopupWindowStartMargin:I

.field private mPopupWindowTopMargin:I

.field private mPreferedVoice:I

.field private mPreferedVoiceObserver:Landroid/database/ContentObserver;

.field private mSelectedTextColor:I

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field mSlotButtonGroup:Landroid/widget/LinearLayout;

.field private mSlotButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotListAskButtonGroup:Landroid/view/ViewGroup;

.field private mSlotListAskButtonText:Landroid/widget/TextView;

.field private mSlotListButton1Group:Landroid/view/ViewGroup;

.field private mSlotListButton2Group:Landroid/view/ViewGroup;

.field private mSlotListButtonImage1:Landroid/widget/ImageView;

.field private mSlotListButtonImage2:Landroid/widget/ImageView;

.field private mSlotListButtonText1:Landroid/widget/TextView;

.field private mSlotListButtonText2:Landroid/widget/TextView;

.field private mSlotView:Landroid/view/View;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUIHandler:Landroid/os/Handler;

.field private simSlotIndex:I

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDimTextColor:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mInCallState:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataChanging:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataSettingEnabled:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoice:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mAirplaneMode:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCTCforceoff:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    return v0
.end method

.method private static synthetic -getcom-android-systemui-qs-bar-MultiSIMPreferredSlotBar$ButtonTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-com-android-systemui-qs-bar-MultiSIMPreferredSlotBar$ButtonTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-com-android-systemui-qs-bar-MultiSIMPreferredSlotBar$ButtonTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->values()[Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-com-android-systemui-qs-bar-MultiSIMPreferredSlotBar$ButtonTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoice:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCTCforceoff:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mInCallState:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataChanging:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataSettingEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->changeNetworkMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->dimissSlotListPopupWindow()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->launchDataSlotChoice()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->launchSimManager()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setDefaultMobileData(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->showSlotListPopupWindow(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateSlotListPopupContents()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    return-void

    :array_0
    .array-data 4
        0x7f080526
        0x7f080527
        0x7f080528
        0x7f08052e
        0x7f08052c
        0x7f08052b
        0x7f08052a
        0x7f08052d
        0x7f080529
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mAirplaneMode:Z

    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mInCallState:Z

    iput v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    iput v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    iput v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    filled-new-array {v4, v5}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "SIM 1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "SIM 2"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCTCforceoff:Z

    new-instance v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$4;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-array v1, v3, [Landroid/net/Uri;

    const-string/jumbo v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$6;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->initBarViews()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_QS_MULTISIM_SWITCH_MANAGER:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getPhoneId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getPhoneId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "select_icon_1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "select_name_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "select_icon_2"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "select_name_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "prefered_voice_call"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsValueList:[Landroid/net/Uri;

    aget-object v2, v2, v5

    invoke-interface {v1, v2}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->telephonyManager:Landroid/telephony/TelephonyManager;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_QS_MULTISIM_SWITCH_MANAGER:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "SysUiNetworkType"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$7;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$7;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private calculatePopupWindowPos(Landroid/view/View;Landroid/view/View;)[I
    .locals 15

    const/4 v13, 0x2

    new-array v11, v13, [I

    const/4 v13, 0x2

    new-array v2, v13, [I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget-object v13, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v7, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v13, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v8, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindowTopMargin:I

    iget v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindowEndMargin:I

    const/4 v13, 0x1

    aget v13, v2, v13

    sub-int v13, v7, v13

    sub-int/2addr v13, v9

    if-ge v13, v10, :cond_0

    const/4 v5, 0x1

    :goto_0
    const/4 v13, 0x0

    aget v13, v2, v13

    sub-int v13, v8, v13

    sub-int/2addr v13, v6

    if-ge v13, v12, :cond_1

    const/4 v4, 0x1

    :goto_1
    if-eqz v5, :cond_3

    if-eqz v4, :cond_2

    const/4 v13, 0x0

    aget v13, v2, v13

    add-int/2addr v13, v3

    sub-int/2addr v13, v12

    sub-int/2addr v13, v6

    :goto_2
    const/4 v14, 0x0

    aput v13, v11, v14

    const/4 v13, 0x1

    aget v13, v2, v13

    add-int/2addr v13, v1

    sub-int/2addr v13, v10

    const/4 v14, 0x1

    aput v13, v11, v14

    :goto_3
    if-eqz v4, :cond_5

    iget-object v13, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const v14, 0x7f13000a

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_4
    return-object v11

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    aget v13, v2, v13

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    const/4 v13, 0x0

    aget v13, v2, v13

    add-int/2addr v13, v3

    sub-int/2addr v13, v12

    sub-int/2addr v13, v6

    :goto_5
    const/4 v14, 0x0

    aput v13, v11, v14

    const/4 v13, 0x1

    aget v13, v2, v13

    add-int/2addr v13, v9

    const/4 v14, 0x1

    aput v13, v11, v14

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    aget v13, v2, v13

    goto :goto_5

    :cond_5
    iget-object v13, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const v14, 0x7f130009

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_4
.end method

.method private changeNetworkMode(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "MultiSIMPreferredSlotBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "changeNetworkMode: slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", networkType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isLTESupportSim(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x9

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-nez v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    const-string/jumbo v3, "MultiSIMPreferredSlotBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showChangeToNetworkModePopup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/systemui/util/MultiSimMgrUtils;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->restrictNetworkModeChange(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    invoke-static {v1, v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->checkSimCoverage(II)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "MultiSIMPreferredSlotBar"

    const-string/jumbo v4, "showChangeToNetworkModePopup NetworkType Change"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->selectNetworkMode(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSlaveNetworkMode(I)I

    move-result v3

    if-ne v3, v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->restrictNetworkModeChange(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v3

    if-eq v0, v3, :cond_5

    const-string/jumbo v3, "MultiSIMPreferredSlotBar"

    const-string/jumbo v4, "showChangeToNetworkModeAlramPopup Slave Network Change"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->selectNetworkMode(I)V

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private createSlotListPopupWindow()V
    .locals 5

    const/4 v4, -0x2

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0158

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    const v1, 0x7f0a04d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    const v1, 0x7f0a04d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage1:Landroid/widget/ImageView;

    const v1, 0x7f0a04d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    const v1, 0x7f0a04d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    const v1, 0x7f0a04d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage2:Landroid/widget/ImageView;

    const v1, 0x7f0a0054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v4, v4, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateSlotListPopupContents()V

    return-void
.end method

.method private dimissSlotListPopupWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private getPhoneId(I)I
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 11

    const/16 v10, 0x3ee

    const/16 v9, 0x3ea

    const/16 v8, 0x3ec

    const/4 v7, 0x0

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "MultiSIMPreferredSlotBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network change finish return!!:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "MultiSIMPreferredSlotBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSetPreferredNetworkTypeResponse ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->selectNetworkModeByMTK()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "MultiSIMPreferredSlotBar"

    const-string/jumbo v2, "Mojito set N/W mode for support L+W mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v3

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {v5, v9, v7, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v3

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, v7, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initBarViews()V
    .locals 10

    const/16 v5, 0x8

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f0d0156

    invoke-virtual {v3, v6, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mBarItemView:Landroid/view/View;

    const v3, 0x7f0a0401

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotView:Landroid/view/View;

    const v3, 0x7f0a04d7

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    const v3, 0x7f0a03e4

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    sget-object v6, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    iget-object v7, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v6, v7, v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0a03e3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    sget-object v6, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    iget-object v7, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v6, v7, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0a03e1

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    sget-object v6, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    iget-object v7, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v6, v7, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_CTC_SIM_CARD_MANAGER:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->isCTCUpgradeSimCardManager()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-get0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$8;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$9;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_QS_MULTISIM_SWITCH_MANAGER:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getBarVisibility()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v3, "ril.ICC_TYPE"

    const-string/jumbo v6, "0"

    invoke-static {v4, v3, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_1:Ljava/lang/String;

    const-string/jumbo v3, "ril.ICC_TYPE"

    const-string/jumbo v6, "0"

    invoke-static {v9, v3, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0704f6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindowStartMargin:I

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0704ee

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindowEndMargin:I

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0704f7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindowTopMargin:I

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f060179

    invoke-virtual {v3, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f06017a

    invoke-virtual {v3, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDimTextColor:I

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f06017b

    invoke-virtual {v3, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSelectedTextColor:I

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->createSlotListPopupWindow()V

    goto/16 :goto_0

    :cond_2
    move v3, v5

    goto/16 :goto_1
.end method

.method private isCTCUpgradeSimCardManager()Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.app.simcardmanagement"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private launchDataSlotChoice()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "MultiSIMPreferredSlotBar"

    const-string/jumbo v3, "onClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$DataSlotChoice"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MultiSIMPreferredSlotBar"

    const-string/jumbo v3, "activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchSimManager()V
    .locals 5

    const-string/jumbo v3, "ril.firstlock"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "MultiSIMPreferredSlotBar"

    const-string/jumbo v4, "onClick()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v3, "com.sec.android.app.simsettingmgr"

    const-string/jumbo v4, "com.sec.android.app.simsettingmgr.NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "extra_up_button"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "com.sec.android.app.simcardmgr"

    const-string/jumbo v4, "com.sec.android.app.simcardmgr.NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "MultiSIMPreferredSlotBar"

    const-string/jumbo v4, "activity not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private selectNetworkMode(I)V
    .locals 10

    const/16 v9, 0x3ec

    const/16 v6, 0x3ea

    const/16 v8, 0x3ee

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string/jumbo v0, "ril.ICC_TYPE"

    const-string/jumbo v1, "0"

    invoke-static {v7, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_1:Ljava/lang/String;

    const-string/jumbo v0, "ril.ICC_TYPE"

    const-string/jumbo v1, "0"

    invoke-static {v5, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_2:Ljava/lang/String;

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SimState_1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "SimState_2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "isEnabledSim : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v2, v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportChangeNetworkModeForSlotNoActiveSim:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v0, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Combination"

    const-string/jumbo v1, "Strawberry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const-string/jumbo v0, "Sangria"

    const-string/jumbo v1, "Strawberry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const-string/jumbo v0, "Mojito"

    const-string/jumbo v1, "Strawberry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportCrossMapping()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSuport75Mode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "CTC card set to GSM only so need force off , except CTC + CTC"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCTCforceoff:Z

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isImsNonDDS()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "4G+4G set N/W mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " simSlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v2

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v7, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSlaveNetworkMode(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSlaveNetworkMode(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v7, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->selectNetworkModeByMTK()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v0, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSetPreferredNetworkTypeResponse set slave slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " by Mojito conditoin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSlaveNetworkMode(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v2}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSlaveNetworkMode(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v7, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "Qcom/Sangria/Mojito set one slot!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSuport75Mode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "CTC card set to GSM only so need force off , except CTC + CTC"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCTCforceoff:Z

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSlaveNetworkMode(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setPreferredNetworkMode(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v2

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getPreferredNetworkType(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->simSlotIndex:I

    const/16 v6, 0x3ed

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private setDefaultMobileData(I)V
    .locals 6

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string/jumbo v3, "MultiSIMPreferredSlotBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ChangeData:prefSubId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", DataSlotId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, p1, :cond_1

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->setDefualtDataSlot(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private showSlotListPopupWindow(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->createSlotListPopupWindow()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-getcom-android-systemui-qs-bar-MultiSIMPreferredSlotBar$ButtonTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    sget-object v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne p1, v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->calculatePopupWindowPos(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne p1, v2, :cond_2

    aget v2, v1, v5

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindowStartMargin:I

    add-int/2addr v2, v3

    aput v2, v1, v5

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    aget v3, v1, v5

    aget v4, v1, v6

    const v5, 0x800033

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_3
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getButtonTypeGroup()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$10;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$12;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$12;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoice:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonText:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonText:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonText:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getButtonTypeGroup()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$13;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$13;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$14;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getButtonTypeGroup()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$16;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$16;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataSettingEnabled:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateBarVisibilities()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/bar/QSBarItem$Callback;->onHeightChanged()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateSlotListPopupContents()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage1:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage2:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    aget v2, v2, v4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_QS_MULTISIM_SWITCH_MANAGER:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->remove_remainMessage()V

    :cond_0
    return-void
.end method

.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getBarHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBarVisibility()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCoverViewShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->launchSimManager()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/QSBarItem;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_QS_MULTISIM_SWITCH_MANAGER:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->dimissSlotListPopupWindow()V

    :cond_0
    return-void
.end method

.method public onFragmentCreated()V
    .locals 2

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "onFragmentCreated() : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->initBarViews()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "onLongClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->launchSimManager()V

    const/4 v0, 0x0

    return v0
.end method

.method public onQsClosed()V
    .locals 2

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "onQsClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_QS_MULTISIM_SWITCH_MANAGER:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->dimissSlotListPopupWindow()V

    :cond_0
    return-void
.end method

.method public remove_remainMessage()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "remove_remainMessage!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mNetworkTypeHandler:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_3
    return-void
.end method

.method public setPreferredNetworkMode(II)V
    .locals 3

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferredNetworkMode DB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/util/MultiSimMgrUtils;->isLTESupportSim(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "MultiSIMPreferredSlotBar"

    const-string/jumbo v1, "CMCC SIM card but it\'s 2g Sim, so set DB 3/2 auto"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, p2, p1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public updateSlotButtonState()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    goto :goto_0

    :cond_0
    return-void
.end method
