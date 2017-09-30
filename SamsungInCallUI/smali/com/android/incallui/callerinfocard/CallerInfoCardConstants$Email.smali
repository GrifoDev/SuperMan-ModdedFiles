.class public Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Email;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Email"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final FROM_LIST:Ljava/lang/String; = "fromList"

.field public static final MAILBOX_TYPE:Ljava/lang/String; = "mailboxType"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TIME_STAMP:Ljava/lang/String; = "timeStamp"

.field public static final TO_LIST:Ljava/lang/String; = "toList"

.field public static final TYPE_DRAFTS:I = 0x3

.field public static final TYPE_INBOX:I = 0x0

.field public static final TYPE_JUNK:I = 0x7

.field public static final TYPE_MAIL:I = 0x1

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_OUTBOX:I = 0x4

.field public static final TYPE_PARENT:I = 0x2

.field public static final TYPE_SEARCH:I = 0x8

.field public static final TYPE_SENT:I = 0x5

.field public static final TYPE_STARRED:I = 0x9

.field public static final TYPE_TRASH:I = 0x6

.field public static final TYPE_UNREAD:I = 0xa

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Email;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
