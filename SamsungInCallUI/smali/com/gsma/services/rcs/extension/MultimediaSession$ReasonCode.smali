.class public final enum Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/MultimediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum B:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum C:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum D:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum E:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field private static G:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic H:[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum a:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum b:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum c:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum d:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum e:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum f:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum g:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum h:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum i:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum j:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum k:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum l:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum m:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum n:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum o:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum p:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum q:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum r:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum s:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum t:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum u:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum v:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum w:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum x:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum y:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

.field public static final enum z:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;


# instance fields
.field private F:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "UNSPECIFIED"

    invoke-direct {v1, v2, v0, v0}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->a:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "ABORTED_BY_USER"

    invoke-direct {v1, v2, v5, v5}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->b:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "ABORTED_BY_REMOTE"

    invoke-direct {v1, v2, v6, v6}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->c:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "ABORTED_BY_SYSTEM"

    invoke-direct {v1, v2, v7, v7}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->d:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "ABORTED_BY_INACTIVITY"

    invoke-direct {v1, v2, v8, v8}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->e:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECTED_BY_USER"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->f:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECTED_BY_REMOTE"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->g:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECTED_BY_TIMEOUT"

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->h:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECTED_BY_SYSTEM"

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->i:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "FAILED_INITIATION"

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->j:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "FAILED_SESSION"

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->k:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "FAILED_MEDIA"

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->l:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_NONE"

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->m:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_DEFAULT"

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->n:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_NOANS"

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->o:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_BUSY"

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->p:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_DECLINE"

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->q:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_TEMP_UNAVAILABLE"

    const/16 v3, 0x11

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->r:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_DVC_FAILED"

    const/16 v3, 0x12

    const/16 v4, 0x12

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->s:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_TEMP_NOT_ACCEPTABLE"

    const/16 v3, 0x13

    const/16 v4, 0x13

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->t:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_CS_CALL_IN_PROGRESS"

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->u:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_BAD_REQUEST"

    const/16 v3, 0x15

    const/16 v4, 0x15

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->v:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_REQ_TERMINATED"

    const/16 v3, 0x16

    const/16 v4, 0x16

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->w:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_SERVICE_UNAVAILABLE"

    const/16 v3, 0x17

    const/16 v4, 0x17

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->x:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_UNSUPPORTED_MEDIA"

    const/16 v3, 0x18

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->y:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_LOW_BATTERY"

    const/16 v3, 0x19

    const/16 v4, 0x19

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->z:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_REQUEST_PENDING"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->A:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_USER_CALL_BLOCK"

    const/16 v3, 0x1b

    const/16 v4, 0x1b

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->B:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_MAX_FILE_SIZE_REACHED"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->C:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_NOREG_INCOMCALL_RECVED"

    const/16 v3, 0x1d

    const/16 v4, 0x1d

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->D:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const-string v2, "REJECT_REASON_MAX"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->E:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    const/16 v1, 0x1f

    new-array v1, v1, [Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->a:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v2, v1, v0

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->b:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->c:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->d:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->e:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->f:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->g:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->h:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->i:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->j:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->k:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->l:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->m:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->n:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->o:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->p:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->q:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->r:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->s:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->t:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->u:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->v:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->w:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->x:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->y:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->z:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->A:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->B:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->C:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->D:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->E:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    aput-object v3, v1, v2

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->H:[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode$1;

    invoke-direct {v1}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode$1;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->G:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->values()[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->G:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->a()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    iput p3, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->F:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->H:[Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->F:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->F:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
