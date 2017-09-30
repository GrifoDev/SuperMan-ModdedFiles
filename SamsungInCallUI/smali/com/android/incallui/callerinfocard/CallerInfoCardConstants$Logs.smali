.class public Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Logs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logs"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "call"

.field public static final AUTOREJECTED_TYPE:I = 0x6

.field public static final CONTACTID:Ljava/lang/String; = "contactid"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final LOGTYPE:Ljava/lang/String; = "logtype"

.field public static final LOG_TYPE_CALL:I = 0x64

.field public static final LOG_TYPE_CHATON_CALL:I = 0x78

.field public static final LOG_TYPE_CHATON_VIDEO:I = 0x1fe

.field public static final LOG_TYPE_EMAIL:I = 0x190

.field public static final LOG_TYPE_HDCALL:I = 0x96

.field public static final LOG_TYPE_MMS:I = 0xc8

.field public static final LOG_TYPE_SMS:I = 0x12c

.field public static final LOG_TYPE_VIDEO:I = 0x1f4

.field public static final LOG_TYPE_VOICEMAIL:I = 0x384

.field public static final LOG_TYPE_VOIP:I = 0x320

.field public static final LOG_TYPE_VOLTE:I = 0x3e8

.field public static final LOG_TYPE_VOWIFI:I = 0x47e

.field public static final LOG_TYPE_VVM:I = 0x3b6

.field public static final MESSAGEID:Ljava/lang/String; = "messageid"

.field public static final MISSED_TYPE:I = 0x3

.field public static final M_CONTENT:Ljava/lang/String; = "m_content"

.field public static final M_SUBJECT:Ljava/lang/String; = "m_subject"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final REJECTED_TYPE:I = 0x5

.field public static final REJECT_FLAG:Ljava/lang/String; = "reject_flag"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Logs;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
