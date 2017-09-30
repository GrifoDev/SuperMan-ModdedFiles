.class public final enum Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/MultimediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MsgDeliveryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum b:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum c:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum d:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum e:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum f:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum g:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum h:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum i:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum j:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum k:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum l:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field private static n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic o:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;


# instance fields
.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_INVALID"

    const/16 v3, 0xc6

    invoke-direct {v1, v2, v0, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->a:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_UNKNOWN"

    const/16 v3, 0xc7

    invoke-direct {v1, v2, v5, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->b:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_200_SUCCESS"

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v6, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->c:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_400_UNINTELLIGIBLE"

    const/16 v3, 0x190

    invoke-direct {v1, v2, v7, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->d:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED"

    const/16 v3, 0x193

    invoke-direct {v1, v2, v8, v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->e:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_408_TRANS_TIMEOUT"

    const/4 v3, 0x5

    const/16 v4, 0x198

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->f:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG"

    const/4 v3, 0x6

    const/16 v4, 0x19d

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->g:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE"

    const/4 v3, 0x7

    const/16 v4, 0x19f

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->h:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND"

    const/16 v3, 0x8

    const/16 v4, 0x1a7

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->i:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_481_SESSION_NOT_EXIST"

    const/16 v3, 0x9

    const/16 v4, 0x1e1

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->j:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_501_UNKNOWN_METHOD"

    const/16 v3, 0xa

    const/16 v4, 0x1f5

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->k:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v2, "MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN"

    const/16 v3, 0xb

    const/16 v4, 0x1fa

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->l:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->a:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v2, v1, v0

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->b:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->c:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->d:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v2, v1, v7

    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->e:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->f:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->g:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->h:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->i:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->j:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->k:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->l:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v1, v2

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->o:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus$1;

    invoke-direct {v1}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus$1;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->n:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->values()[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->n:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->a()I

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

    iput p3, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->m:I

    return-void
.end method

.method public static final a(I)Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .locals 3

    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No enum const class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->o:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->m:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
