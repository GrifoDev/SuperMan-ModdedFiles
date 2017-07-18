.class public final enum Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
.super Ljava/lang/Enum;
.source "MultimediaSession.java"

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
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

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

.field public static final enum MSRP_RESP_CODE_200_SUCCESS:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_400_UNINTELLIGIBLE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_408_TRANS_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_481_SESSION_NOT_EXIST:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_501_UNKNOWN_METHOD:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field public static final enum MSRP_RESP_CODE_UNKNOWN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMsgDeliveryStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_INVALID"

    const/16 v4, 0xc6

    invoke-direct {v2, v3, v1, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_UNKNOWN"

    const/16 v4, 0xc7

    invoke-direct {v2, v3, v6, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_UNKNOWN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_200_SUCCESS"

    const/16 v4, 0xc8

    invoke-direct {v2, v3, v7, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_200_SUCCESS:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_400_UNINTELLIGIBLE"

    const/16 v4, 0x190

    invoke-direct {v2, v3, v8, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_400_UNINTELLIGIBLE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED"

    const/16 v4, 0x193

    invoke-direct {v2, v3, v9, v4}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_408_TRANS_TIMEOUT"

    const/4 v4, 0x5

    const/16 v5, 0x198

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_408_TRANS_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG"

    const/4 v4, 0x6

    const/16 v5, 0x19d

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE"

    const/4 v4, 0x7

    const/16 v5, 0x19f

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND"

    const/16 v4, 0x8

    const/16 v5, 0x1a7

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_481_SESSION_NOT_EXIST"

    const/16 v4, 0x9

    const/16 v5, 0x1e1

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_481_SESSION_NOT_EXIST:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_501_UNKNOWN_METHOD"

    const/16 v4, 0xa

    const/16 v5, 0x1f5

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_501_UNKNOWN_METHOD:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const-string v3, "MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN"

    const/16 v4, 0xb

    const/16 v5, 0x1fa

    invoke-direct {v2, v3, v4, v5}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    const/16 v2, 0xc

    new-array v2, v2, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v2, v1

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_UNKNOWN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v2, v6

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_200_SUCCESS:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v2, v7

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_400_UNINTELLIGIBLE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v2, v8

    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_403_ACTION_NOT_ALLOWED:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_408_TRANS_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_413_DONOT_SEND_THIS_MSG:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_415_UNKNOWN_CNT_TYPE:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_423_PARAM_OUT_OF_BOUND:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_481_SESSION_NOT_EXIST:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_501_UNKNOWN_METHOD:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->MSRP_RESP_CODE_506_SESSION_ON_ANOTHER_CONN:Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    aput-object v4, v2, v3

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->$VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    new-instance v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus$1;

    invoke-direct {v2}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus$1;-><init>()V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->values()[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

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

    iput p3, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

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

    iput v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;
    .locals 4

    sget-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

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

    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->$VALUES:[Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;

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

    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSession$MsgDeliveryStatus;->mMsgDeliveryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
