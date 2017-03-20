.class public Lcom/android/incallui/secrcs/RcsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RcsBroadcastReceiver.java"


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

.field public static final ACTION_HIDE_MINI_MODE_CALL_VIEW:Ljava/lang/String; = "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

.field public static final ACTION_INCOMING:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

.field public static final ACTION_LAUNCH_MINI_MODE_CALL_VIEW:Ljava/lang/String; = "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

.field public static final ACTION_MUTE_OFF:Ljava/lang/String; = "com.samsung.rcs.intent.action.MUTE_OFF"

.field public static final ACTION_MUTE_ON:Ljava/lang/String; = "com.samsung.rcs.intent.action.MUTE_ON"

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

.field public static final ACTION_SPEAKER_ON:Ljava/lang/String; = "com.samsung.rcs.intent.action.SPEAKER_ON"

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

    .prologue
    .line 133
    const-class v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 158
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mRegistered:Z

    .line 162
    :cond_0
    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 4

    .prologue
    .line 320
    sget-object v1, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "createIntentFilter()"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 321
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v1, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v1, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v1, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v1, "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v1, "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v1, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v1, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v1, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v1, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v1, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v1, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v1, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v1, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v1, "com.samsung.rcs.intent.action.ACTION_RCS_CALL_HOLD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v1, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v1, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v1, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v1, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v1, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v1, "com.samsung.rcs.intent.action.REBOOT_SHARING_SERVICE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v1, "com.samsung.rcs.framework.instantmessaging"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 350
    const-string v1, "com.samsung.rcs.framework.instantmessaging.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 352
    const-string v1, "com.samsung.rcs.framework.filetransfer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 353
    const-string v1, "com.samsung.rcs.framework.filetransfer.notifiation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 355
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TRANSFERING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INTERRUPTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 365
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INTERRUPTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 375
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 377
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive() "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    const-string v16, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 189
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "action":Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 192
    .local v14, "sessionId":J
    const/4 v12, -0x1

    .line 193
    .local v12, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 194
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v16, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 195
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v16

    if-nez v16, :cond_7

    .line 196
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCshTopMostActivity(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 197
    const-string v13, ""

    .line 199
    .local v13, "text":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 200
    new-instance v16, Ljava/lang/NullPointerException;

    const-string v17, "Intent.getExtras() returned with null."

    invoke-direct/range {v16 .. v17}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 202
    :cond_1
    const-string v16, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 203
    const-string v16, "com.sec.rcs.mediatransfer.csh.extra.BYTES_TOTAL"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 204
    .local v7, "bytes":I
    const v16, 0x7f090220

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 208
    .end local v7    # "bytes":I
    :goto_0
    const-string v16, "ims_crane"

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 209
    new-instance v9, Landroid/content/Intent;

    const-string v16, "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN"

    const/16 v17, 0x0

    const-class v18, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v9, "notificationIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    .end local v9    # "notificationIntent":Landroid/content/Intent;
    .end local v13    # "text":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_2

    .line 238
    const-string v16, "com.sec.rcs.mediatransfer.csh.extra.REASON"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 239
    const-string v16, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 241
    :cond_2
    const-string v16, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/content/Intent;)V

    .line 317
    :cond_3
    :goto_2
    return-void

    .line 206
    .restart local v13    # "text":Ljava/lang/String;
    :cond_4
    const v16, 0x7f090224

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 212
    :cond_5
    new-instance v9, Landroid/content/Intent;

    const-string v16, "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN"

    const/16 v17, 0x0

    const-class v18, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .restart local v9    # "notificationIntent":Landroid/content/Intent;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 215
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v5, "builder":Landroid/app/Notification$Builder;
    const/4 v8, 0x0

    .line 217
    .local v8, "notification":Landroid/app/Notification;
    const-string v16, "ims_callplus"

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 218
    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v16

    const v17, 0x7f0202a7

    .line 219
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v16

    const/16 v17, 0x1

    .line 220
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    const/16 v17, 0x0

    .line 221
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 228
    :goto_3
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 223
    :cond_6
    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v16

    const v17, 0x7f0202a5

    .line 224
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v16

    const/16 v17, 0x1

    .line 225
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    const/16 v17, 0x0

    .line 226
    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    goto :goto_3

    .line 233
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "notificationIntent":Landroid/content/Intent;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v13    # "text":Ljava/lang/String;
    :cond_7
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 243
    :cond_8
    const-string v16, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/content/Intent;)V

    goto/16 :goto_2

    .line 245
    :cond_9
    const-string v16, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INCOMING"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 246
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareIncoming sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 247
    :cond_a
    const-string v16, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_PROGRESS"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 248
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareProgress : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 249
    :cond_b
    const-string v16, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_INTERRUPTED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 250
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareInterrupted sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    .line 252
    :cond_c
    const-string v16, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_COMPLETED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 253
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareCompleted sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 254
    :cond_d
    const-string v16, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 255
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareCanceled sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    .line 257
    :cond_e
    const-string v16, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CONNECTED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 258
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareConnected sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 259
    :cond_f
    const-string v16, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_TERMINATED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 260
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareTerminated sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    const/16 v17, 0xb

    invoke-interface/range {v16 .. v17}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    .line 264
    :cond_10
    const-string v16, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_11

    const-string v16, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 265
    :cond_11
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareIncoming sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleInvitation(ZLandroid/content/Intent;)V

    goto/16 :goto_2

    .line 267
    :cond_12
    const-string v16, "com.sec.rcs.mediatransfer.ish.notification.SHARE_PROGRESS"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 268
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareProgress : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 269
    :cond_13
    const-string v16, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INTERRUPTED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 270
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareInterrupted sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    .line 272
    :cond_14
    const-string v16, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 273
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareCompleted sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 274
    :cond_15
    const-string v16, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_16

    const-string v16, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 275
    :cond_16
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareCanceled sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " reason: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    .line 277
    :cond_17
    const-string v16, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_18

    const-string v16, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 278
    :cond_18
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareConnected sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 279
    :cond_19
    const-string v16, "com.sec.rcs.mediatransfer.ish.notification.SHARE_TERMINATED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 280
    sget-object v16, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShareTerminated sessionId:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    const/16 v17, 0xb

    invoke-interface/range {v16 .. v17}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleError(I)V

    goto/16 :goto_2

    .line 282
    :cond_1a
    const-string v16, "com.samsung.rcs.intent.action.CONTACTS"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.ADD_CALL"

    .line 283
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.MANAGE_CONFERENCE_CALL"

    .line 284
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.NOTES"

    .line 285
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.SIM_SERVICES"

    .line 286
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    .line 287
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    .line 288
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.SPEAKER_ON"

    .line 289
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    .line 290
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

    .line 291
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

    .line 292
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.MUTE_ON"

    .line 293
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.MUTE_OFF"

    .line 294
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    .line 295
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    .line 296
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    .line 297
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.ACTION_RCS_CALL_HOLD"

    .line 298
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    const-string v16, "com.samsung.rcs.intent.action.END_CALL"

    .line 299
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 301
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 302
    :cond_1c
    const-string v16, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1d

    const-string v16, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    .line 303
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 304
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleIncommingIMandFT(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 305
    :cond_1e
    const-string v16, "com.samsung.rcs.contentsharing.action.CSH_INFO"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleCshInfo(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 307
    :cond_1f
    const-string v16, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_20

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 309
    :cond_20
    const-string v16, "com.samsung.rcs.intent.action.STOP_SHARING_SERVICE_DIALOG"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_21

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 311
    :cond_21
    const-string v16, "com.samsung.rcs.intent.action.REBOOT_SHARING_SERVICE_DIALOG"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mHandler:Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver$RcsActionHandler;->handleRcsAction(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public register(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mRegistered:Z

    .line 167
    invoke-static {}, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    iget-boolean v1, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->mRegistered:Z

    .line 175
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/incallui/secrcs/RcsBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
