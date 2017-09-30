.class public Lcom/android/incallui/service/vt/EpdgManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_EPDG_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_AVAILABLE"

.field private static final ACTION_EPDG_ERROR_EVENT:Ljava/lang/String; = "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

.field private static final ACTION_HANDOVER_LTE_TO_WLAN:Ljava/lang/String; = "HANDOVER_LTE_TO_WLAN"

.field private static final ACTION_HANDOVER_WLAN_TO_LTE:Ljava/lang/String; = "HANDOVER_WLAN_TO_LTE"

.field private static final ACTION_SHOW_POPUP_TO_NOTIFY_CURRENT_EPDG_STATUS:Ljava/lang/String; = "com.sec.epdg.SHOW_POPUP_TO_NOTIFY_CURRENT_EPDG_STATUS"

.field public static final EPDG_POPUP_W36A:Ljava/lang/String; = "W36a"

.field public static final EPDG_POPUP_W36C:Ljava/lang/String; = "W36c"

.field private static final EXTRA_APNTYPE:Ljava/lang/String; = "apntype"

.field private static final EXTRA_COUNT:Ljava/lang/String; = "count"

.field private static final EXTRA_ERROR_REASON:Ljava/lang/String; = "ikeerror"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static final EXTRA_SHOWPOPUP:Ljava/lang/String; = "showPopup"

.field private static final EXTRA_VIDEO_HANDOVER_ALLOW:Ljava/lang/String; = "VIDEO_HANDOVER_ALLOW"

.field private static final PDN_CONNECTION_REJECTTION:I = 0x2000


# instance fields
.field private final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCurrentDisplayedPopup:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEpdgReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDisplayedEpdgError:Z

.field private mPopupFlags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EpdgManager"

    iput-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z

    iput-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mCurrentDisplayedPopup:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/incallui/service/vt/EpdgManager;->initBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/vt/EpdgManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/service/vt/EpdgManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z

    return p1
.end method

.method private initBroadcastReceiver()V
    .locals 3

    const-string v0, "EpdgManager"

    const-string v1, "initBroadcastReceiver"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;-><init>(Lcom/android/incallui/service/vt/EpdgManager;Lcom/android/incallui/service/vt/EpdgManager$1;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "HANDOVER_WLAN_TO_LTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HANDOVER_LTE_TO_WLAN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "com.sec.epdg.SHOW_POPUP_TO_NOTIFY_CURRENT_EPDG_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    return-void
.end method


# virtual methods
.method public allowVoiceCall(Ljava/lang/String;Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getHasBeenVideoCall()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "HANDOVER_LTE_TO_WLAN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearDisplayFlags()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "EpdgManager"

    const-string v1, "clearDisplayFlags"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z

    iput-object v3, p0, Lcom/android/incallui/service/vt/EpdgManager;->mCurrentDisplayedPopup:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iput-object v3, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    const-string v0, "EpdgManager"

    const-string v1, "destroy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/EpdgManager;->clearDisplayFlags()V

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dismissCurrentDialogWithoutSettingFlag()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "EpdgManager"

    const-string v1, "dismissCurrentDialogWithoutSettingFlag"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EpdgManager"

    const-string v1, "dialog is showing"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mCurrentDisplayedPopup:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public displayEpdgPopup(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    const-string v2, "EpdgManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "what : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", displayEpdgPopup isAlreadyDisplayed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v1, v2

    :goto_2
    packed-switch v1, :pswitch_data_1

    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/EpdgManager;->dismissCurrentDialogWithoutSettingFlag()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mCurrentDisplayedPopup:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    const-string v4, "W36a"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :pswitch_2
    const-string v1, "W36c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->showOnWeakWifiDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_3

    :pswitch_4
    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->showLowWifiSignalDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2852a7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getBaseInCallComponent()Lcom/android/incallui/InCallActivity;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    return-object v0
.end method

.method public isShowingW36Popup()Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "EpdgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowingW36Popup - mCurrentDisplayedPopup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/EpdgManager;->mCurrentDisplayedPopup:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDialog != null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EpdgManager"

    const-string v2, "w36 popup is showing now"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
