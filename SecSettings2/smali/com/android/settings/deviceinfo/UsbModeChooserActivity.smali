.class public Lcom/android/settings/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;,
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;,
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;,
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;
    }
.end annotation


# static fields
.field public static final DEFAULT_MODES:[I

.field public static final DEFAULT_MODES_VZW:[I

.field private static mContainerLayout:Landroid/widget/LinearLayout;

.field private static mIsSupportPowerRole:Z


# instance fields
.field private mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

.field private mCurrent:I

.field private mCurrentConnectionMode:I

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mHandler:Landroid/os/Handler;

.field private mIsConnected:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLinkToHelp:Landroid/widget/TextView;

.field private mPortPowerRole:I

.field private mPrevConnectedState:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectionSupplyingPower:Z

.field private mThread:Ljava/lang/Thread;

.field private mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrentConnectionMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsConnected:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mSelectionSupplyingPower:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrentConnectionMode:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsConnected:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mSelectionSupplyingPower:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->checkedRadioButton(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->finishDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x1

    filled-new-array {v0, v1, v4, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    sput-boolean v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x8
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mSelectionSupplyingPower:Z

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsConnected:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    iput v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrentConnectionMode:I

    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkedRadioButton(I)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_1

    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    :goto_2
    :try_start_1
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_5

    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private finishDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private static getSummary(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b04f3

    return v0

    :cond_0
    const v0, 0x7f0b04f5

    return v0

    :pswitch_2
    const v0, 0x7f0b1a6b

    return v0

    :pswitch_3
    const v0, 0x7f0b04f7

    return v0

    :pswitch_4
    const v0, 0x7f0b1a73    # 1.8490002E38f

    return v0

    :pswitch_5
    const v0, 0x7f0b04f9

    return v0

    :pswitch_6
    const v0, 0x7f0b04fb

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getSummaryVzw(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b04f3

    return v0

    :cond_0
    const v0, 0x7f0b04f4

    return v0

    :pswitch_2
    const v0, 0x7f0b1a6b

    return v0

    :pswitch_3
    const v0, 0x7f0b04f6

    return v0

    :pswitch_4
    const v0, 0x7f0b1a72    # 1.849E38f

    return v0

    :pswitch_5
    const v0, 0x7f0b04f8

    return v0

    :pswitch_6
    const v0, 0x7f0b04fb

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getTitle(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b1a38

    return v0

    :cond_0
    const v0, 0x7f0b1a68

    return v0

    :pswitch_2
    const v0, 0x7f0b1a6a

    return v0

    :pswitch_3
    const v0, 0x7f0b1a6d    # 1.848999E38f

    return v0

    :pswitch_4
    const v0, 0x7f0b1a70    # 1.8489996E38f

    return v0

    :pswitch_5
    const v0, 0x7f0b1a75    # 1.8490006E38f

    return v0

    :pswitch_6
    const v0, 0x7f0b04fa

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getTitleVzw(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b1a38

    return v0

    :cond_0
    const v0, 0x7f0b1a68

    return v0

    :pswitch_2
    const v0, 0x7f0b1a6a

    return v0

    :pswitch_3
    const v0, 0x7f0b1a6c

    return v0

    :pswitch_4
    const v0, 0x7f0b1a6f    # 1.8489994E38f

    return v0

    :pswitch_5
    const v0, 0x7f0b1a74    # 1.8490004E38f

    return v0

    :pswitch_6
    const v0, 0x7f0b04fa

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private inflateOption(IZLandroid/widget/LinearLayout;Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040242

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getTitleVzw(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSummaryVzw(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    if-eqz p4, :cond_0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v3, :cond_2

    invoke-direct {p0, v2, v1, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_0
    new-instance v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;

    invoke-direct {v3, p0, p4, p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v2

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getTitle(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSummary(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const v1, 0x7f110456

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x7f0d0000

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkSmartSwtichTransfer()Z
    .locals 6

    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.sec.android.easyMover.service.OtgTransferStatusCheckService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "UsbModeChooserActivity"

    const-string/jumbo v5, "checkSmartSwtichTransfer - return true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_1
    const-string/jumbo v4, "UsbModeChooserActivity"

    const-string/jumbo v5, "checkSmartSwtichTransfer - return false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "helphub:category"

    const-string/jumbo v3, "USERMAN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    iget-boolean v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b1a77

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f0402ff

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$5;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$5;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$6;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$6;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    const v5, 0x7f0b1106

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v4, 0x7f110579

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {p0, v1, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    new-instance v1, Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v1

    iput v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowedBySystem(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v4, v1, v0

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v5, v5, v0

    if-ne v1, v5, :cond_2

    move v1, v2

    :goto_2
    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v7, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowed(I)Z

    move-result v6

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowedBySystem(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v1, v0

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v5, v5, v0

    if-ne v1, v5, :cond_6

    move v1, v2

    :goto_5
    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v7, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowed(I)Z

    move-result v6

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v2, 0x7f1106c5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLinkToHelp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLinkToHelp:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b042f

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLinkToHelp:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbBackend;->getSupportedPowerRole()I

    move-result v1

    iput v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbBackend;->isSupportPowerRole()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLinkToHelp:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbBackend;->isSupportPowerRole()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    sget-boolean v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    sget-boolean v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method
