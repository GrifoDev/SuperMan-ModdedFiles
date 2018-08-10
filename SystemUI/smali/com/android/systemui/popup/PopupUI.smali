.class public Lcom/android/systemui/popup/PopupUI;
.super Lcom/android/systemui/SystemUI;
.source "PopupUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/popup/PopupUI$1;
    }
.end annotation


# instance fields
.field private mHasMobileDataFeature:Z

.field private mHasVoiceCallingFeature:Z

.field private mPopupUINotificationsImpl:Lcom/android/systemui/popup/PopupUINotificationsImpl;

.field private mPopupUIReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldShowDialogAfterBoot:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/popup/PopupUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/popup/PopupUI;->mHasMobileDataFeature:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/popup/PopupUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/popup/PopupUI;->mHasVoiceCallingFeature:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/popup/PopupUINotificationsImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUINotificationsImpl:Lcom/android/systemui/popup/PopupUINotificationsImpl;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/popup/PopupUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/popup/PopupUI;->mShouldShowDialogAfterBoot:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/popup/PopupUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/popup/PopupUI;->mShouldShowDialogAfterBoot:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Lcom/android/systemui/popup/PopupUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/PopupUI$1;-><init>(Lcom/android/systemui/popup/PopupUI;)V

    iput-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/popup/PopupUINotificationsImpl;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/popup/PopupUINotificationsImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUINotificationsImpl:Lcom/android/systemui/popup/PopupUINotificationsImpl;

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/popup/PopupUI;->mHasMobileDataFeature:Z

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v8

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/popup/PopupUI;->mHasVoiceCallingFeature:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_WATER_PROTECTION_POPUP"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.samsung.systemui.POPUP_UI_PERMISSION"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v8, p0, Lcom/android/systemui/popup/PopupUI;->mShouldShowDialogAfterBoot:Z

    return-void
.end method
