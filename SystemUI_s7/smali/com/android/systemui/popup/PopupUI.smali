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
    .locals 7

    const/4 v3, 0x0

    new-instance v4, Lcom/android/systemui/popup/PopupUINotificationsImpl;

    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/popup/PopupUINotificationsImpl;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUINotificationsImpl:Lcom/android/systemui/popup/PopupUINotificationsImpl;

    iget-object v4, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/popup/PopupUI;->mHasMobileDataFeature:Z

    iget-object v4, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/popup/PopupUI;->mHasVoiceCallingFeature:Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.intent.action.MCC_SET_TIME"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_WATER_PROTECTION_POPUP"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/popup/PopupUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v5, "com.samsung.systemui.POPUP_UI_PERMISSION"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
