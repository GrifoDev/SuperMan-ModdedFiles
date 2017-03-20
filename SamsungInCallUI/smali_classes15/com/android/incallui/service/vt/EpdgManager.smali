.class public Lcom/android/incallui/service/vt/EpdgManager;
.super Ljava/lang/Object;
.source "EpdgManager.java"


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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "EpdgManager"

    iput-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z

    .line 65
    iput-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    .line 67
    iput-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mCurrentDisplayedPopup:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    .line 72
    invoke-direct {p0}, Lcom/android/incallui/service/vt/EpdgManager;->initBroadcastReceiver()V

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/vt/EpdgManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/vt/EpdgManager;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/service/vt/EpdgManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/vt/EpdgManager;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z

    return p1
.end method

.method private initBroadcastReceiver()V
    .locals 4

    .prologue
    .line 76
    const-string v1, "EpdgManager"

    const-string v2, "initBroadcastReceiver"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    iget-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_4

    .line 78
    new-instance v1, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;-><init>(Lcom/android/incallui/service/vt/EpdgManager;Lcom/android/incallui/service/vt/EpdgManager$1;)V

    iput-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->EPDG_ERROR_EVENT:Z

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "HANDOVER_WLAN_TO_LTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "HANDOVER_LTE_TO_WLAN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const-string v1, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    :cond_2
    const-string v1, "com.sec.epdg.SHOW_POPUP_TO_NOTIFY_CURRENT_EPDG_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_4
    return-void
.end method


# virtual methods
.method public clearDisplayFlags()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    const-string v0, "EpdgManager"

    const-string v1, "clearDisplayFlags"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z

    .line 102
    iput-object v3, p0, Lcom/android/incallui/service/vt/EpdgManager;->mCurrentDisplayedPopup:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 109
    :cond_0
    iput-object v3, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    .line 111
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 114
    const-string v0, "EpdgManager"

    const-string v1, "destroy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/EpdgManager;->clearDisplayFlags()V

    .line 116
    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mEpdgReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    :cond_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dismissCurrentDialogWithoutSettingFlag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 156
    const-string v0, "EpdgManager"

    const-string v1, "dismissCurrentDialogWithoutSettingFlag"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "EpdgManager"

    const-string v1, "dialog is showing"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 161
    iput-object v3, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    .line 162
    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mCurrentDisplayedPopup:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    return-void
.end method

.method public displayEpdgPopup(Ljava/lang/String;)V
    .locals 6
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "isAlreadyDisplayed":Z
    iget-object v2, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 132
    :cond_0
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

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    if-eqz v1, :cond_1

    .line 153
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    .line 138
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    packed-switch v2, :pswitch_data_1

    .line 147
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/EpdgManager;->dismissCurrentDialogWithoutSettingFlag()V

    .line 149
    iput-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    .line 150
    iput-object p1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mCurrentDisplayedPopup:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lcom/android/incallui/service/vt/EpdgManager;->mPopupFlags:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :pswitch_1
    const-string v4, "W36a"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :pswitch_2
    const-string v4, "W36c"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_1

    .line 140
    :pswitch_3
    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->showOnWeakWifiDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 141
    goto :goto_2

    .line 143
    :pswitch_4
    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->showLowWifiSignalDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    .line 138
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

    .prologue
    .line 256
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    return-object v0
.end method

.method public isShowingW36Popup()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 247
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

    .line 248
    iget-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/EpdgManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "EpdgManager"

    const-string v2, "w36 popup is showing now"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
