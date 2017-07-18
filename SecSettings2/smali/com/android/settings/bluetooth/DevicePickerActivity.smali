.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Landroid/app/Activity;
.source "DevicePickerActivity.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field public static canLaunchQuickBtView:Z

.field public static mMyPlacesCalled:Z


# instance fields
.field private Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

.field private alertDialog:Landroid/app/AlertDialog;

.field fromHelp:Z

.field private mActivityResultDone:Z

.field private mBTEnableDisplayed:Z

.field private mCancelBtn:Landroid/widget/Button;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mInitiateScan:Z

.field mIsTablet:Z

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mScanBtn:Landroid/widget/Button;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mCancelBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mCancelBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/bluetooth/DevicePickerActivity;Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/bluetooth/DevicePickerActivity;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    return-void
.end method

.method private initialize()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b11db

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b1074

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b1102

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f040053

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$3;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$4;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$4;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static isInLockTaskMode(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DevicePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public ScanBtnStateUpdate(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0b158b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0b1074

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 4

    const-string/jumbo v1, "DevicePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothStateChanged :: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$5;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$5;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    const-string/jumbo v4, "DevicePickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate :: mInitiateScan : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-nez v0, :cond_1

    const-string/jumbo v4, "DevicePickerActivity"

    const-string/jumbo v5, "onCreate :: Intent.getAction() is return null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "DevicePickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate :: getAction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sput-boolean v5, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v4, :cond_4

    const-string/jumbo v4, "DevicePickerActivity"

    const-string/jumbo v5, "Bluetooth is not supported on this device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v4, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sput-boolean v6, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->initialize()V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "fromHelp"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_5
    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$1;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v6, 0xa

    if-ne v4, v6, :cond_6

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/DevicePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v5, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_BT_SupportMissingPhone"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "ril.domesticOtaStart"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mDomesticOtaStart:Ljava/lang/String;

    :cond_7
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mWindowManager:Landroid/view/IWindowManager;

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "com.android.bluetooth"

    const-string/jumbo v6, "BLSM"

    const-string/jumbo v7, "BluetoothDevicePickerDialog"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const v4, 0x7f040053

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DevicePickerActivity;->setContentView(I)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "com.android.bluetooth"

    const-string/jumbo v6, "BLSM"

    const-string/jumbo v7, "BluetoothDevicePicker"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "DevicePickerActivity"

    const-string/jumbo v1, "inside onDestroy of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DevicePickerActivity"

    const-string/jumbo v1, "here unregistered receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v0, "DevicePickerActivity"

    const-string/jumbo v1, "inside onPause of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0b1074

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method

.method public onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    const-string/jumbo v0, "DevicePickerActivity"

    const-string/jumbo v1, "onPostResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "DevicePickerActivity"

    const-string/jumbo v1, "Does not start scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mInitiateScan:Z

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    const/16 v9, 0xbb

    const/16 v8, 0x1a

    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sput-boolean v5, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    const-string/jumbo v2, "DevicePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside onResume with mBTEnableDisplayed= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_BT_SupportMissingPhone"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mDomesticOtaStart:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v8, v5}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v6, v5}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v9, v5}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    const-string/jumbo v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    const-string/jumbo v2, "lock"

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "missing_phone_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v8, v5}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v6, v5}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v9, v5}, Lcom/android/settings/bluetooth/DevicePickerActivity;->requestSystemKeyEvent(IZ)Z

    const-string/jumbo v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void

    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    if-ne v2, v7, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    iput-boolean v5, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 2

    const v1, 0x7f04011a

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const v0, 0x7f0b03bb

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->showHelpDialog(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0b03bc

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->showHelpDialog(II)V

    goto :goto_0
.end method

.method public showHelpDialog(II)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    const/4 v2, 0x1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v5, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f11001c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_1

    const v4, 0x7f1103c6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    const v4, 0x7f110017

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$2;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    :cond_4
    return-void
.end method
