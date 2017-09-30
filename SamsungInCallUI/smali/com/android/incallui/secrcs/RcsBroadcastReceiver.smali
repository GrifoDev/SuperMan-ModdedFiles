.class public Lcom/android/incallui/secrcs/RcsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;,
        Lcom/android/incallui/secrcs/RcsBroadcastReceiver$Reason;
    }
.end annotation


# static fields
.field private static final ACTION_CALL_SHOW_SCREEN:Ljava/lang/String; = "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN"

.field public static final ACTION_CSH_INFO:Ljava/lang/String; = "com.samsung.rcs.contentsharing.action.CSH_INFO"

.field public static final ACTION_END_CALL:Ljava/lang/String; = "com.samsung.rcs.intent.action.END_CALL"

.field public static final ACTION_END_CALLL:Ljava/lang/String; = "com.samsung.rcs.intent.action.END_CALLL"

.field public static final ACTION_HIDE_MINI_MODE_CALL_VIEW:Ljava/lang/String; = "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

.field public static final ACTION_INCOMING:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

.field public static final ACTION_LAUNCH_MINI_MODE_CALL_VIEW:Ljava/lang/String; = "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

.field public static final ACTION_MUTE_OFF:Ljava/lang/String; = "com.samsung.rcs.intent.action.MUTE_OFF"

.field public static final ACTION_MUTE_OFFF:Ljava/lang/String; = "com.samsung.rcs.intent.action.MUTE_OFFF"

.field public static final ACTION_MUTE_ON:Ljava/lang/String; = "com.samsung.rcs.intent.action.MUTE_ON"

.field public static final ACTION_MUTE_ONN:Ljava/lang/String; = "com.samsung.rcs.intent.action.MUTE_ONN"

.field public static final ACTION_OPTIONS_ADD_CALL:Ljava/lang/String; = "com.samsung.rcs.intent.action.ADD_CALL"

.field public static final ACTION_OPTIONS_BLUETOOTH_HANDSET:Ljava/lang/String; = "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

.field public static final ACTION_OPTIONS_CONTACTS:Ljava/lang/String; = "com.samsung.rcs.intent.action.CONTACTS"

.field public static final ACTION_OPTIONS_INIT_SPEAKER_ON:Ljava/lang/String; = "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

.field public static final ACTION_OPTIONS_MANAGE_CONFERENCE_CALL:Ljava/lang/String; = "com.samsung.rcs.intent.action.MANAGE_CONFERENCE_CALL"

.field public static final ACTION_OPTIONS_NOISE_REDUCTION:Ljava/lang/String; = "com.samsung.rcs.intent.action.NOISE_REDUCTION"

.field public static final ACTION_OPTIONS_NOTES:Ljava/lang/String; = "com.samsung.rcs.intent.action.NOTES"

.field public static final ACTION_OPTIONS_SIM_SERVICES:Ljava/lang/String; = "com.samsung.rcs.intent.action.SIM_SERVICES"

.field public static final ACTION_RCS_SPEAKER_OFF:Ljava/lang/String; = "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

.field public static final ACTION_REBOOT_SHARING_SERVICE_DIALOG:Ljava/lang/String; = "com.samsung.rcs.intent.action.REBOOT_SHARING_SERVICE_DIALOG"

.field public static final ACTION_RESUME_SHARING_SERVICE_DIALOG:Ljava/lang/String; = "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

.field public static final ACTION_SPEAKER_OFF:Ljava/lang/String; = "com.samsung.rcs.intent.action.SPEAKER_OFF"

.field public static final ACTION_SPEAKER_OFFF:Ljava/lang/String; = "com.samsung.rcs.intent.action.SPEAKER_OFFF"

.field public static final ACTION_SPEAKER_ON:Ljava/lang/String; = "com.samsung.rcs.intent.action.SPEAKER_ON"

.field public static final ACTION_SPEAKER_ONN:Ljava/lang/String; = "com.samsung.rcs.intent.action.SPEAKER_ONN"

.field public static final ACTION_STOP_SHARING_SERVICE_DIALOG:Ljava/lang/String; = "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

.field public static final ACTION_TO_OPTIONS_CALL_HOLD:Ljava/lang/String; = "com.samsung.rcs.intent.action.ACTION_RCS_CALL_HOLD"

.field public static final ACTION_TRANSFER:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TRANSFERING"

.field public static final ACTION_UPDATE_PROXIMITY:Ljava/lang/String; = "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

.field public static final CATEGORY_CONTENT_SHARE_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

.field public static final CATEGORY_FILE_TRANSFER:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer"

.field public static final CATEGORY_FT_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notifiation"

.field static final CATEGORY_IM:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging"

.field static final CATEGORY_IM_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.notifiation"

.field public static final CATEGORY_ISH_NOTIFICATION:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

.field public static final CATEGORY_VSH_NOTIFICATION:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

.field public static final CSH_EXTRA_REASON:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.extra.REASON"

.field public static final CSH_EXTRA_SESSION_ID:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

.field public static final EXTRA_BYTES_TOTAL:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.extra.BYTES_TOTAL"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "sessionId"

.field static final FILE_TRANSFER_INCOMMING:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

.field private static final LOG_TAG:Ljava/lang/String;

.field static final NOTIFY_MESSAGE_RECEIVED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

.field public static final PHONE_ACTIVE:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_ACTIVE"

.field public static final PHONE_INACTIVE:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_INACTIVE"

.field public static final SHARE_CANCELED:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

.field public static final SHARE_COMPLETED:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_COMPLETED"

.field public static final SHARE_CONNECTED:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CONNECTED"

.field public static final SHARE_INCOMING:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

.field public static final SHARE_INTERRUPTED:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INTERRUPTED"

.field public static final SHARE_ISH_CANCELED:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

.field public static final SHARE_ISH_COMPLETED:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

.field public static final SHARE_ISH_CONNECTED:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

.field public static final SHARE_ISH_INCOMING:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

.field public static final SHARE_ISH_INTERRUPTED:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.notification.SHARE_INTERRUPTED"

.field public static final SHARE_ISH_PROGRESS:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.notification.SHARE_PROGRESS"

.field public static final SHARE_ISH_TERMINATED:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.notification.SHARE_TERMINATED"

.field public static final SHARE_PROGRESS:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_PROGRESS"

.field public static final SHARE_TERMINATED:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TERMINATED"

.field public static final SHARE_VSH_CANCELED:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

.field public static final SHARE_VSH_CONNECTED:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

.field public static final SHARE_VSH_INCOMING:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

.field private static final notificationId:I


# instance fields
.field private mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 3

    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createIntentFilter()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.ACTION_RCS_CALL_HOLD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.REBOOT_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.filetransfer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.filetransfer.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TRANSFERING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INTERRUPTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INTERRUPTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.END_CALLL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.MUTE_ONN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.MUTE_OFFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_ONN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_OFFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCshTopMostActivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ""

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Intent.getExtras() returned with null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.BYTES_TOTAL"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const v7, 0x7f09028a

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    int-to-long v10, v1

    invoke-static {p1, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v7, "ims_crane"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN"

    const/4 v7, 0x0

    const-class v8, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v7, p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    if-eqz v3, :cond_21

    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.REASON"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_2
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/content/Intent;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    const v1, 0x7f09028e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN"

    const/4 v9, 0x0

    const-class v10, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v7, v8, v9, p1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v9, "ims_callplus"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f02032f

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    :goto_4
    sget-object v7, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f02032d

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/content/Intent;)V

    goto/16 :goto_3

    :cond_8
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShareIncoming sessionId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_9
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_PROGRESS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShareProgress : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_a
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INTERRUPTED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShareInterrupted sessionId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, v0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    :cond_b
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_COMPLETED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShareCompleted sessionId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_c
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShareCanceled sessionId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, v0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    :cond_d
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CONNECTED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShareConnected sessionId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_e
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TERMINATED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShareTerminated sessionId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    :cond_f
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShareIncoming sessionId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/content/Intent;)V

    goto/16 :goto_3

    :cond_11
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_PROGRESS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShareProgress : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_12
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INTERRUPTED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShareInterrupted sessionId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, v0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    :cond_13
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShareCompleted sessionId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_14
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    sget-object v1, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShareCanceled sessionId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v1, v0}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    :cond_16
    const-string v0, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShareConnected sessionId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_18
    const-string v0, "com.sec.rcs.mediatransfer.ish.notification.SHARE_TERMINATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShareTerminated sessionId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_3

    :cond_19
    const-string v0, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.MANAGE_CONFERENCE_CALL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.ACTION_RCS_CALL_HOLD"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.END_CALLL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.SPEAKER_ONN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.SPEAKER_OFFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.MUTE_ONN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.samsung.rcs.intent.action.MUTE_OFFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v0, v6}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1b
    const-string v0, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v0, p2}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleIncommingIMandFT(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_1d
    const-string v0, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v0, p2}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleCshInfo(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_1e
    const-string v0, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v0, v6}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1f
    const-string v0, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v0, v6}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_20
    const-string v0, "com.samsung.rcs.intent.action.REBOOT_SHARING_SERVICE_DIALOG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    invoke-interface {v0, v6}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_21
    move v0, v2

    move-wide v2, v4

    goto/16 :goto_2
.end method

.method public register(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mRegistered:Z

    invoke-static {}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mRegistered:Z

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
