.class public interface abstract Lcom/android/incallui/secrcs/RcsTransferConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secrcs/RcsTransferConstants$Cs;,
        Lcom/android/incallui/secrcs/RcsTransferConstants$FeatureTags;,
        Lcom/android/incallui/secrcs/RcsTransferConstants$Columns;,
        Lcom/android/incallui/secrcs/RcsTransferConstants$SessionType;,
        Lcom/android/incallui/secrcs/RcsTransferConstants$Direction;,
        Lcom/android/incallui/secrcs/RcsTransferConstants$State;
    }
.end annotation


# static fields
.field public static final ACTION_DISCONNECT_SHARE:Ljava/lang/String; = "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

.field public static final ACTION_FILE_TRANSFER:Ljava/lang/String; = "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

.field public static final ACTION_INCOMING_SHARE:Ljava/lang/String; = "com.samsung.rcs.contentsharing.action.INCOMING_SHARE"

.field public static final ACTION_RESUME_SHARE:Ljava/lang/String; = "com.samsung.rcs.contentsharing.action.RESUME_SHARE"

.field public static final ACTION_SERVICE_LIST:Ljava/lang/String; = "com.samsung.rcs.contentsharing.action.INCALL_SERVICES"

.field public static final ACTION_VIDEO_SHARE_CAMERA:Ljava/lang/String; = "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

.field public static final CATEGORY_ACTION_ISH:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.category.ACTION"

.field public static final CATEGORY_ACTION_VSH:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.category.ACTION"

.field public static final EXTRA_ATTACH_FILE:Ljava/lang/String; = "com.samsung.rcs.filetransfer.action.ATTACH_FILE"

.field public static final EXTRA_BLUETOOTH_AVAILABLE:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

.field public static final EXTRA_BLUETOOTH_CONNECTED:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

.field public static final EXTRA_CALL_START_TIME:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

.field public static final EXTRA_CONTACT_LABEL:Ljava/lang/String; = "contactLabel"

.field public static final EXTRA_CONTACT_NAME:Ljava/lang/String; = "contactName"

.field public static final EXTRA_CONTACT_NUMBER:Ljava/lang/String; = "contactNumber"

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "filePath"

.field public static final EXTRA_NOISE_FEATURE:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.NOISE_FEATURE"

.field public static final EXTRA_NOISE_ON:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.NOISE_ON"

.field public static final EXTRA_NO_PROMOTED:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.NO_PROMOTED"

.field public static final EXTRA_PHONE_MUTE:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.PHONE_MUTE"

.field public static final EXTRA_PHONE_SPEAKER:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.PHONE_SPEAKER"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

.field public static final EXTRA_SESSION_SOURCE:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.EXTRA_SESSION_SOURCE"

.field public static final EXTRA_SESSION_TYPE:Ljava/lang/String; = "sessionType"

.field public static final EXTRA_WAITING_INVITATION:Ljava/lang/String; = "com.samsung.rcs.framework.mediatransfer.extra.WAITING_INVITATION"

.field public static final FEATURE_TAG:Ljava/lang/String; = "feature_tag"

.field public static final FILETRANSFER_ACTIVITY:Ljava/lang/String; = "com.samsung.rcs.filetransfer.TransferContentActivity"

.field public static final FILE_TRANSFER_INCOMMING:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

.field public static final INCALL_PATH:Ljava/lang/String; = "incall"

.field public static final INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

.field public static final INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

.field public static final IS_ENABLED:Ljava/lang/String; = "is_enabled"

.field public static final NOTIFY_MESSAGE_RECEIVED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

.field public static final SERVICE_OWN_URI:Landroid/net/Uri;

.field public static final SHARE_DECLINE_ISH:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

.field public static final SHARE_DECLINE_VSH:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

.field public static final SIP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "feature_tag"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "icon_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "int_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "int_category"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sip_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "service_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/secrcs/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const-string v0, "content://"

    const-string v1, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "incall"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsTransferConstants;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    const-string v0, "content://"

    const-string v1, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "sip"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.rcs.serviceprovider/own"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    return-void
.end method
