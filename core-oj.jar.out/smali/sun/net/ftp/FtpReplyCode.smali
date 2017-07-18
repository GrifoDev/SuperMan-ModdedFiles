.class public final enum Lsun/net/ftp/FtpReplyCode;
.super Ljava/lang/Enum;
.source "FtpReplyCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/net/ftp/FtpReplyCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/net/ftp/FtpReplyCode;

.field public static final enum ACTION_ABORTED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum CANT_OPEN_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

.field public static final enum CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

.field public static final enum COMMAND_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum COMMAND_UNRECOGNIZED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum CONNECTION_CLOSED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum DATA_CONNECTION_ALREADY_OPEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum DATA_CONNECTION_OPEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum DIRECTORY_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum ENTERING_EXT_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum ENTERING_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum EXCEEDED_STORAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FAILED_SECURITY_CHECK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_ACTION_NOT_TAKEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_ACTION_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_ACTION_PENDING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_NAME_NOT_ALLOWED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_STATUS_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum HELP_MESSAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum INSUFFICIENT_STORAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum INVALID_PARAMETER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NAME_SYSTEM_TYPE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_ACCOUNT_FOR_STORING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_ADAT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_MORE_ADAT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NEED_SECURITY_RESOURCE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NOT_IMPLEMENTED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NOT_IMPLEMENTED_FOR_PARAMETER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum NOT_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum PAGE_TYPE_UNKNOWN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum PATHNAME_CREATED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum PROTECTED_REPLY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum PROT_LEVEL_DENIED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum REQUEST_DENIED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum RESTART_MARKER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SECURELY_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SECURITY_EXCHANGE_COMPLETE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SECURITY_EXCHANGE_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SERVICE_CLOSING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SERVICE_NOT_AVAILABLE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SERVICE_READY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SERVICE_READY_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum SYSTEM_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

.field public static final enum UNSUPPORTED_PROT_LEVEL:Lsun/net/ftp/FtpReplyCode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "RESTART_MARKER"

    const/16 v2, 0x6e

    invoke-direct {v0, v1, v4, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->RESTART_MARKER:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "SERVICE_READY_IN"

    const/16 v2, 0x78

    invoke-direct {v0, v1, v5, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY_IN:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "DATA_CONNECTION_ALREADY_OPEN"

    const/16 v2, 0x7d

    invoke-direct {v0, v1, v6, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_ALREADY_OPEN:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "FILE_STATUS_OK"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v7, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS_OK:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "COMMAND_OK"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v8, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->COMMAND_OK:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "NOT_IMPLEMENTED"

    const/4 v2, 0x5

    const/16 v3, 0xca

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "SYSTEM_STATUS"

    const/4 v2, 0x6

    const/16 v3, 0xd3

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SYSTEM_STATUS:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "DIRECTORY_STATUS"

    const/4 v2, 0x7

    const/16 v3, 0xd4

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->DIRECTORY_STATUS:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "FILE_STATUS"

    const/16 v2, 0x8

    const/16 v3, 0xd5

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "HELP_MESSAGE"

    const/16 v2, 0x9

    const/16 v3, 0xd6

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->HELP_MESSAGE:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "NAME_SYSTEM_TYPE"

    const/16 v2, 0xa

    const/16 v3, 0xd7

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NAME_SYSTEM_TYPE:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "SERVICE_READY"

    const/16 v2, 0xb

    const/16 v3, 0xdc

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "SERVICE_CLOSING"

    const/16 v2, 0xc

    const/16 v3, 0xdd

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_CLOSING:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "DATA_CONNECTION_OPEN"

    const/16 v2, 0xd

    const/16 v3, 0xe1

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_OPEN:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "CLOSING_DATA_CONNECTION"

    const/16 v2, 0xe

    const/16 v3, 0xe2

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "ENTERING_PASSIVE_MODE"

    const/16 v2, 0xf

    const/16 v3, 0xe3

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->ENTERING_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "ENTERING_EXT_PASSIVE_MODE"

    const/16 v2, 0x10

    const/16 v3, 0xe5

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->ENTERING_EXT_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "LOGGED_IN"

    const/16 v2, 0x11

    const/16 v3, 0xe6

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "SECURELY_LOGGED_IN"

    const/16 v2, 0x12

    const/16 v3, 0xe8

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SECURELY_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "SECURITY_EXCHANGE_OK"

    const/16 v2, 0x13

    const/16 v3, 0xea

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_OK:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "SECURITY_EXCHANGE_COMPLETE"

    const/16 v2, 0x14

    const/16 v3, 0xeb

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_COMPLETE:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "FILE_ACTION_OK"

    const/16 v2, 0x15

    const/16 v3, 0xfa

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_OK:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "PATHNAME_CREATED"

    const/16 v2, 0x16

    const/16 v3, 0x101

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PATHNAME_CREATED:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "NEED_PASSWORD"

    const/16 v2, 0x17

    const/16 v3, 0x14b

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "NEED_ACCOUNT"

    const/16 v2, 0x18

    const/16 v3, 0x14c

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "NEED_ADAT"

    const/16 v2, 0x19

    const/16 v3, 0x14e

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_ADAT:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "NEED_MORE_ADAT"

    const/16 v2, 0x1a

    const/16 v3, 0x14f

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_MORE_ADAT:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "FILE_ACTION_PENDING"

    const/16 v2, 0x1b

    const/16 v3, 0x15e

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_PENDING:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "SERVICE_NOT_AVAILABLE"

    const/16 v2, 0x1c

    const/16 v3, 0x1a5

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->SERVICE_NOT_AVAILABLE:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "CANT_OPEN_DATA_CONNECTION"

    const/16 v2, 0x1d

    const/16 v3, 0x1a9

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->CANT_OPEN_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "CONNECTION_CLOSED"

    const/16 v2, 0x1e

    const/16 v3, 0x1aa

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->CONNECTION_CLOSED:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "NEED_SECURITY_RESOURCE"

    const/16 v2, 0x1f

    const/16 v3, 0x1af

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_SECURITY_RESOURCE:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "FILE_ACTION_NOT_TAKEN"

    const/16 v2, 0x20

    const/16 v3, 0x1c2

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_NOT_TAKEN:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "ACTION_ABORTED"

    const/16 v2, 0x21

    const/16 v3, 0x1c3

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->ACTION_ABORTED:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "INSUFFICIENT_STORAGE"

    const/16 v2, 0x22

    const/16 v3, 0x1c4

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->INSUFFICIENT_STORAGE:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "COMMAND_UNRECOGNIZED"

    const/16 v2, 0x23

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->COMMAND_UNRECOGNIZED:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "INVALID_PARAMETER"

    const/16 v2, 0x24

    const/16 v3, 0x1f5

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->INVALID_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "BAD_SEQUENCE"

    const/16 v2, 0x25

    const/16 v3, 0x1f7

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "NOT_IMPLEMENTED_FOR_PARAMETER"

    const/16 v2, 0x26

    const/16 v3, 0x1f8

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED_FOR_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "NOT_LOGGED_IN"

    const/16 v2, 0x27

    const/16 v3, 0x212

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NOT_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "NEED_ACCOUNT_FOR_STORING"

    const/16 v2, 0x28

    const/16 v3, 0x214

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT_FOR_STORING:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "PROT_LEVEL_DENIED"

    const/16 v2, 0x29

    const/16 v3, 0x215

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_DENIED:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "REQUEST_DENIED"

    const/16 v2, 0x2a

    const/16 v3, 0x216

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->REQUEST_DENIED:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "FAILED_SECURITY_CHECK"

    const/16 v2, 0x2b

    const/16 v3, 0x217

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FAILED_SECURITY_CHECK:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "UNSUPPORTED_PROT_LEVEL"

    const/16 v2, 0x2c

    const/16 v3, 0x218

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->UNSUPPORTED_PROT_LEVEL:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY"

    const/16 v2, 0x2d

    const/16 v3, 0x219

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "FILE_UNAVAILABLE"

    const/16 v2, 0x2e

    const/16 v3, 0x226

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "PAGE_TYPE_UNKNOWN"

    const/16 v2, 0x2f

    const/16 v3, 0x227

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PAGE_TYPE_UNKNOWN:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "EXCEEDED_STORAGE"

    const/16 v2, 0x30

    const/16 v3, 0x228

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->EXCEEDED_STORAGE:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "FILE_NAME_NOT_ALLOWED"

    const/16 v2, 0x31

    const/16 v3, 0x229

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->FILE_NAME_NOT_ALLOWED:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "PROTECTED_REPLY"

    const/16 v2, 0x32

    const/16 v3, 0x277

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->PROTECTED_REPLY:Lsun/net/ftp/FtpReplyCode;

    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    const/16 v2, 0x33

    const/16 v3, 0x3e7

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

    const/16 v0, 0x34

    new-array v0, v0, [Lsun/net/ftp/FtpReplyCode;

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->RESTART_MARKER:Lsun/net/ftp/FtpReplyCode;

    aput-object v1, v0, v4

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY_IN:Lsun/net/ftp/FtpReplyCode;

    aput-object v1, v0, v5

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_ALREADY_OPEN:Lsun/net/ftp/FtpReplyCode;

    aput-object v1, v0, v6

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS_OK:Lsun/net/ftp/FtpReplyCode;

    aput-object v1, v0, v7

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->COMMAND_OK:Lsun/net/ftp/FtpReplyCode;

    aput-object v1, v0, v8

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED:Lsun/net/ftp/FtpReplyCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SYSTEM_STATUS:Lsun/net/ftp/FtpReplyCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->DIRECTORY_STATUS:Lsun/net/ftp/FtpReplyCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->HELP_MESSAGE:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NAME_SYSTEM_TYPE:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SERVICE_CLOSING:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_OPEN:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->ENTERING_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->ENTERING_EXT_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SECURELY_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_OK:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_COMPLETE:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_OK:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->PATHNAME_CREATED:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_ADAT:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_MORE_ADAT:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_PENDING:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->SERVICE_NOT_AVAILABLE:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->CANT_OPEN_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->CONNECTION_CLOSED:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_SECURITY_RESOURCE:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_NOT_TAKEN:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->ACTION_ABORTED:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->INSUFFICIENT_STORAGE:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->COMMAND_UNRECOGNIZED:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->INVALID_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED_FOR_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NOT_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT_FOR_STORING:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_DENIED:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->REQUEST_DENIED:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FAILED_SECURITY_CHECK:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->UNSUPPORTED_PROT_LEVEL:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->PAGE_TYPE_UNKNOWN:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->EXCEEDED_STORAGE:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->FILE_NAME_NOT_ALLOWED:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->PROTECTED_REPLY:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->$VALUES:[Lsun/net/ftp/FtpReplyCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    return-void
.end method

.method public static find(I)Lsun/net/ftp/FtpReplyCode;
    .locals 5

    invoke-static {}, Lsun/net/ftp/FtpReplyCode;->values()[Lsun/net/ftp/FtpReplyCode;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lsun/net/ftp/FtpReplyCode;->UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/net/ftp/FtpReplyCode;
    .locals 1

    const-class v0, Lsun/net/ftp/FtpReplyCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method

.method public static values()[Lsun/net/ftp/FtpReplyCode;
    .locals 1

    sget-object v0, Lsun/net/ftp/FtpReplyCode;->$VALUES:[Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    return v0
.end method

.method public isAuthentication()Z
    .locals 2

    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnection()Z
    .locals 2

    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFileSystem()Z
    .locals 2

    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInformation()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v1, 0xa

    iget v2, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v2, v2, 0x64

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentNegative()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPositiveCompletion()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPositiveIntermediate()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPositivePreliminary()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isProtectedReply()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0x2bc

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSyntax()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v1, 0xa

    iget v2, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v2, v2, 0x64

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTransientNegative()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUnspecified()Z
    .locals 2

    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
