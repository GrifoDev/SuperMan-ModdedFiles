.class public final enum Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
.super Ljava/lang/Enum;
.source "FileTransfer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum ABORTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED_DATA_TRANSFER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_DELIVERY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_DISPLAY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_INITIATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_NOT_ALLOWED_TO_SEND:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum FAILED_SAVING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum PAUSED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum PAUSED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_MAX_FILE_TRANSFERS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_MEDIA_FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum REJECTED_SPAM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private reasonCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "UNSPECIFIED"

    invoke-direct {v2, v3, v1, v1}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "ABORTED_BY_USER"

    invoke-direct {v2, v3, v6, v6}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "ABORTED_BY_REMOTE"

    invoke-direct {v2, v3, v7, v7}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "ABORTED_BY_SYSTEM"

    invoke-direct {v2, v3, v8, v8}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "REJECTED_BY_SECONDARY_DEVICE"

    invoke-direct {v2, v3, v9, v9}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "REJECTED_BY_TIMEOUT"

    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "REJECTED_SPAM"

    const/4 v4, 0x6

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "REJECTED_LOW_SPACE"

    const/4 v4, 0x7

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "REJECTED_MAX_SIZE"

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "REJECTED_MAX_FILE_TRANSFERS"

    const/16 v4, 0x9

    const/16 v5, 0x9

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_FILE_TRANSFERS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "REJECTED_BY_USER"

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "REJECTED_BY_REMOTE"

    const/16 v4, 0xb

    const/16 v5, 0xb

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "REJECTED_MEDIA_FAILED"

    const/16 v4, 0xc

    const/16 v5, 0xc

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MEDIA_FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "REJECTED_BY_SYSTEM"

    const/16 v4, 0xd

    const/16 v5, 0xd

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "PAUSED_BY_SYSTEM"

    const/16 v4, 0xe

    const/16 v5, 0xe

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "PAUSED_BY_USER"

    const/16 v4, 0xf

    const/16 v5, 0xf

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "FAILED_INITIATION"

    const/16 v4, 0x10

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "FAILED_DATA_TRANSFER"

    const/16 v4, 0x11

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DATA_TRANSFER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "FAILED_SAVING"

    const/16 v4, 0x12

    const/16 v5, 0x12

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_SAVING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "FAILED_DELIVERY"

    const/16 v4, 0x13

    const/16 v5, 0x13

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DELIVERY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "FAILED_DISPLAY"

    const/16 v4, 0x14

    const/16 v5, 0x14

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DISPLAY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const-string v3, "FAILED_NOT_ALLOWED_TO_SEND"

    const/16 v4, 0x15

    const/16 v5, 0x15

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_NOT_ALLOWED_TO_SEND:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    const/16 v2, 0x16

    new-array v2, v2, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v2, v1

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v2, v6

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v2, v7

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v2, v8

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_FILE_TRANSFERS:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MEDIA_FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->PAUSED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DATA_TRANSFER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_SAVING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DELIVERY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_DISPLAY:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_NOT_ALLOWED_TO_SEND:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    aput-object v4, v2, v3

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode$1;

    invoke-direct {v1}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode$1;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->reasonCode:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->reasonCode:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 4

    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->reasonCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->reasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
