.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;
    }
.end annotation


# static fields
.field private static mDeleteClicked:Z


# instance fields
.field private final ADD_TO_ADAPTER:I

.field private final DELETE_ONE_ITEM:I

.field private final TAG:Ljava/lang/String;

.field private isEnabledShowBtnBg:Z

.field private isLand:Z

.field private mActionView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAddlistMenuItem:Landroid/view/MenuItem;

.field private mAllSelectionMode:I

.field private mAllowAll:Z

.field private mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

.field private mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

.field private mAllowedListContainer:Landroid/widget/ListView;

.field private mBubbleLandscape:Landroid/widget/RelativeLayout;

.field private mBubblePortrait:Landroid/widget/RelativeLayout;

.field private mCheckBoxMarginLeft:I

.field private mCheckBoxMarginRight:I

.field private mCheckBoxWidthForDeleteAnimation:I

.field private mClickedPos:I

.field private mCount:Landroid/widget/TextView;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeviceList:Landroid/support/v7/preference/PreferenceScreen;

.field private mDialogType:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDragSelectedUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyLandscape:Landroid/view/View;

.field private mEmptyPortrait:Landroid/view/View;

.field private mIsReset:Z

.field private mIsTablet:Z

.field private mIsZeroSelected:Z

.field private mMultiSelectionMode:Z

.field private mPrevMAC:Ljava/lang/String;

.field private mPrevName:Ljava/lang/String;

.field private mProgressCircle:Landroid/widget/ProgressBar;

.field private mSPenSelect:Z

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSelectAllFrame:Landroid/widget/FrameLayout;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchPref:Landroid/widget/LinearLayout;

.field private mSwitchPrefListener:Landroid/view/View$OnClickListener;

.field private mWifiApDeviceInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private oneItemDeleteAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDragSelectedUris:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDragSelectedUris:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeAllowPolicy()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->checkConnectedDeviceOrChangeAllowPolicy()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->handleWifiApState(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->insertLog()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showEditDialog(ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateActionBarCount(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, "WifiApAllowedList"

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->ADD_TO_ADAPTER:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->DELETE_ONE_ITEM:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isEnabledShowBtnBg:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    return-void
.end method

.method private changeActionBar()V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setCustomActionBar()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initActionBar()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private changeAllowPolicy()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x3

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getRvfMode()I

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    goto :goto_0
.end method

.method private changeScreen()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private checkConnectedDeviceOrChangeAllowPolicy()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    const-string/jumbo v2, "WifiApAllowedList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "num.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDisconnectDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeAllowPolicy()V

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method private handleWifiApState(I)V
    .locals 8

    const/16 v7, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "WifiApAllowedList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWifiApState.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "WifiApAllowedList"

    const-string/jumbo v1, "WIFI_AP_STATE_FAILED case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private initActionBar()V
    .locals 7

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v6, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v1, 0x7f0b0d48

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private initSwitch()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v1, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private insertLog()V
    .locals 4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "MHOM"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "extra"

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowAll:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ALL"

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void

    :cond_0
    const-string/jumbo v2, "ONLY"

    goto :goto_0
.end method

.method private isSupportSpen()Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, " isSupportSpen true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, " isSupportSpen false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, " isSupportSpen false - context null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private refreshAdapter(I)V
    .locals 4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeScreen()V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getDeleteMap()[Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->deleteFromListAdapter([Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsReset:Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc5

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private setCustomActionBar()V
    .locals 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v1, :cond_3

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_0
    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const-string/jumbo v1, ""

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    invoke-virtual {v7, v3, v3}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0, v1, v4, v8, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setTranslateAnimationFor(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;J)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a045e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0450

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v2, v1, v4

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v6, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method private showDisconnectDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0d80

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0d85

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v3, 0x7f0b0451

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v3, 0x7f0b1106

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showEditDialog(ILcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method private showFadeOutAnimation(Z)V
    .locals 10

    const-wide/16 v8, 0x5dc

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-string/jumbo v0, "WifiApAllowedList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showFadeOutAnimation.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private updateActionBarCount(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    const v2, 0x7f0b108d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private updateEditDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, "Updated device successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/net/wifi/WifiApWhiteList;->modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v5, v2, :cond_0

    return v4

    :cond_3
    invoke-virtual {v1, p2, p1}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    return v4
.end method

.method private updateEmptyView(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateList()V
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v6, :cond_1

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    const-string/jumbo v4, "VZW"

    sget-object v6, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showFadeOutAnimation(Z)V

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2
.end method


# virtual methods
.method public deleteFromListAdapter([Ljava/lang/Boolean;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    array-length v8, p1

    add-int/lit8 v1, v8, -0x1

    :goto_0
    if-ltz v1, :cond_2

    aget-object v8, p1, v1

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v8, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v8, v6, :cond_0

    const/4 v8, 0x4

    iput v8, v2, Landroid/os/Message;->what:I

    const-string/jumbo v8, "mac"

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->initArr()V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->clearList()V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    :goto_1
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    return-void

    :cond_4
    move v6, v7

    goto :goto_1
.end method

.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    const v11, 0x7f11072f

    const v10, 0x7f11072e

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    sput-boolean v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "show_button_background"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isEnabledShowBtnBg:Z

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v5, :cond_1

    const-string/jumbo v5, "TMO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "NEWCO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f020413

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f040323

    invoke-virtual {v3, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f110731

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    const v5, 0x7f110732

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubblePortrait:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mBubbleLandscape:Landroid/widget/RelativeLayout;

    const v5, 0x7f110730

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    const v5, 0x7f11072b

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    const v5, 0x7f11072d

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    const v5, 0x7f11072c

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mProgressCircle:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v5, "VZW"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isSupportSpen()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->semSetDragBlockEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const-string/jumbo v5, "device_list_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/support/v7/preference/PreferenceScreen;

    const v5, 0x7f040327

    invoke-virtual {v3, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f0b0d48

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f11073e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f110740

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f11073f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v8, 0x7f110742

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCount:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v5, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initActionBar()V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    new-instance v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitch:Landroid/widget/Switch;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPref:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSwitchPrefListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    :goto_1
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->isLand:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->initSwitch()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/settings/R$styleable;->AllowedListItemView:[I

    invoke-virtual {v5, v1, v6}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0x4d

    :try_start_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    const/4 v5, 0x1

    const/16 v6, 0xb

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    const/4 v5, 0x2

    const/16 v6, 0x18

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_5
    move v5, v7

    goto/16 :goto_0

    :cond_6
    move v6, v7

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v5
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v6, p1

    check-cast v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    if-ne v6, v7, :cond_1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->refreshAdapter(I)V

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v6, 0x4d

    iput v6, v3, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "feature"

    const-string/jumbo v7, "MHAD"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "extra"

    const-string/jumbo v7, "ADD"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto :goto_0

    :pswitch_3
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    packed-switch p2, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setName(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setMac(Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->removeDialog(I)V

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEditDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mClickedPos:I

    invoke-virtual {v6, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :cond_2
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->removeDialog(I)V

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/high16 v4, 0x1040000

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    if-ne p1, v0, :cond_0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    return-object v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x1040014

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0d87

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v2, 0x7f0b0429

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_1
    if-ne p1, v2, :cond_2

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mPrevMAC:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    return-object v0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0d88

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    const v1, 0x7f0b179f

    invoke-virtual {v7, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v7, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    return-object v0

    :cond_3
    return-object v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0b179f

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_4

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApDeviceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-nez v0, :cond_3

    const/4 v0, 0x2

    const v1, 0x7f0b042a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v7, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mSPenSelect:Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v4

    :goto_0
    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v4

    if-ne v4, v7, :cond_4

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return v7

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getDeleteMap()[Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->deleteFromListAdapter([Ljava/lang/Boolean;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :cond_3
    return v7

    :cond_4
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mMultiSelectionMode:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllSelectionMode:I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListAdapter:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->setSelectedItem(I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->updateActionBarCount(I)V

    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mIsZeroSelected:Z

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v3

    :cond_5
    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    :goto_2
    return v7

    :cond_7
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedListContainer:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v4, v6, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v4, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v3

    :cond_9
    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->oneItemDeleteAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_a
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_2

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const v3, 0x7f0b0d86

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDeviceReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public reloadWhiteList()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_0
    return-void
.end method

.method public setTranslateAnimationFor(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;J)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "WifiApAllowedList"

    const-string/jumbo v3, "SelectAll CheckBox Animation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I

    add-int/2addr v2, v3

    neg-int v0, v2

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v1, p3, p4}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setTranslateAnimationFor(Landroid/widget/ListView;J)V
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxWidthForDeleteAnimation:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mCheckBoxMarginRight:I

    add-int/2addr v2, v3

    neg-int v0, v2

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setTransitionGroup(Z)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v1, p2, p3}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "#ff"

    const-string/jumbo v6, "#"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<font color="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object p2, v5, v8

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const v6, 0x7f0b0d42

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method
