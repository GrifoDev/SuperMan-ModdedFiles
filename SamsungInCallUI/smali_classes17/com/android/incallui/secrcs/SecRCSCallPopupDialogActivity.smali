.class public Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;
.super Landroid/app/Activity;
.source "SecRCSCallPopupDialogActivity.java"


# static fields
.field public static final ACTION_HOME_PRESSED:Ljava/lang/String; = "com.samsung.android.action.START_DOCK_OR_HOME"

.field public static final ACTION_INCALL_FULL_SCREEN:Ljava/lang/String; = "com.android.incalllui.secservice.action.INCALL_FULL_SCREEN"

.field public static final ACTION_INCOMING_SHARE:Ljava/lang/String; = "com.samsung.rcs.contentsharing.action.INCOMING_SHARE"

.field public static final CATEGORY_ACTION_ISH:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.category.ACTION"

.field public static final CATEGORY_ACTION_VSH:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.category.ACTION"

.field public static final CATEGORY_ISH_NOTIFICATION:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

.field public static final CATEGORY_VSH_NOTIFICATION:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

.field public static final EXTRA_BLUETOOTH_AVAILABLE:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

.field public static final EXTRA_BLUETOOTH_CONNECTED:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

.field public static final EXTRA_CALL_START_TIME:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

.field public static final EXTRA_CONTACT_LABEL:Ljava/lang/String; = "contactLabel"

.field public static final EXTRA_CONTACT_NAME:Ljava/lang/String; = "contactName"

.field public static final EXTRA_CONTACT_NUMBER:Ljava/lang/String; = "contactNumber"

.field public static final EXTRA_PHONE_MUTE:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.PHONE_MUTE"

.field public static final EXTRA_PHONE_SPEAKER:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.PHONE_SPEAKER"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

.field public static final EXTRA_SHARE_ID:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

.field public static final EXTRA_SHARE_TYPE:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.extra.SHARE_TYPE"

.field public static final RCS_CSH_ACCEPT:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.action.SHARE_ACCEPT"

.field public static final RCS_POPUP_DIALOG:Ljava/lang/String; = "com.samsung.android.incalllui.secservice.action.ACTION_RCS_POP_UP"

.field public static final SHARE_CANCELED:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

.field public static final SHARE_DECLINE_ISH:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

.field public static final SHARE_DECLINE_VSH:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

.field public static final SHARE_ISH_CANCELED:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

.field public static final SHARE_ISH_INCOMING:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

.field public static final SHARE_VSH_CANCELED:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

.field public static final SHARE_VSH_INCOMING:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private indialogbuilder:Landroid/app/AlertDialog$Builder;

.field private mInComingInvitation:Landroid/app/AlertDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    .line 80
    iput-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;

    .line 296
    new-instance v0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$3;-><init>(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static acceptInvitation(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 253
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.rcs.mediatransfer.csh.action.SHARE_ACCEPT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "popupintent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.INCOMING_SHARE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    invoke-static {v0, p0, p1}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 258
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private static addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, "isSpeakerOn":Z
    const/4 v1, 0x0

    .line 272
    .local v1, "isBluetoothOn":Z
    const/4 v0, 0x0

    .line 274
    .local v0, "isBluetoothAvailable":Z
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 275
    const/4 v2, 0x1

    .line 279
    :goto_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 280
    const/4 v1, 0x1

    .line 283
    :goto_1
    const/4 v0, 0x1

    .line 285
    const-string v3, "contactNumber"

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {p2, p0}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v3, "contactName"

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {p2, p0}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v3, "contactLabel"

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    invoke-virtual {v4, p2, p0}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallerLabel(Landroid/content/Context;Lcom/android/incallui/Call;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    invoke-virtual {v4, p2, p0}, Lcom/android/incallui/secrcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/incallui/Call;)J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 289
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_MUTE"

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_SPEAKER"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    return-void

    .line 277
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 282
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 228
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 229
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_0

    .line 230
    invoke-virtual {v4, p1, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 233
    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 234
    :cond_1
    const/4 v2, 0x0

    .line 249
    :goto_0
    return-object v2

    .line 238
    :cond_2
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 239
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 240
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 241
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 247
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showRCSDialog(ILjava/lang/Long;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "sessId"    # Ljava/lang/Long;

    .prologue
    const v9, 0x7f09021e

    const v8, 0x7f09021b

    const/4 v7, 0x0

    .line 111
    sget-object v4, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SHARE TYPE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x7f0b0010

    invoke-direct {v5, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    .line 113
    move v3, p1

    .line 114
    .local v3, "sessionType":I
    move-object v2, p2

    .line 115
    .local v2, "sessionId":Ljava/lang/Long;
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, "dialogIncoming":Landroid/app/Dialog;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 117
    .local v0, "call":Lcom/android/incallui/Call;
    const v4, 0x7f040082

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 118
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 119
    packed-switch p1, :pswitch_data_0

    .line 176
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f090087

    new-instance v6, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$1;

    invoke-direct {v6, p0, v0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$1;-><init>(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;Lcom/android/incallui/Call;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    iget-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f09022f

    new-instance v6, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;

    invoke-direct {v6, p0, v3, v2}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity$2;-><init>(Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;ILjava/lang/Long;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;

    if-nez v4, :cond_1

    .line 218
    iget-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f09021f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 219
    iget-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;

    .line 220
    iget-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 221
    iget-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 223
    :cond_1
    return-void

    .line 121
    :pswitch_0
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setTitle(I)V

    .line 122
    iget-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v4, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->indialogbuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "i"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 261
    invoke-static {p2, p0, p1}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->addRcsExtras(Lcom/android/incallui/Call;Landroid/content/Intent;Landroid/content/Context;)V

    .line 263
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find RCS activity..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mInComingInvitation:Landroid/app/AlertDialog;

    .line 316
    iget-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 320
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "sessionId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 87
    .local v1, "sessionId":Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "sessionType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 88
    .local v2, "sessionType":I
    iget-object v3, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_0

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v3, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v3, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v3, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.SHARE_CANCELED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v3, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 96
    const-string v3, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 97
    const-string v3, "com.android.incalllui.secservice.action.INCALL_FULL_SCREEN"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const/16 v3, 0x3e7

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 100
    iget-object v3, p0, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 103
    :cond_1
    sget-object v3, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->TAG:Ljava/lang/String;

    const-string v4, "Not a real session should finish"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->finish()V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/incallui/secrcs/SecRCSCallPopupDialogActivity;->showRCSDialog(ILjava/lang/Long;)V

    goto :goto_0
.end method
