.class public final enum Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatLog$Message$Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

.field public static final enum b:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

.field public static final enum c:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

.field public static final enum d:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

.field public static final enum e:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

.field private static final synthetic g:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->a:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    const-string v1, "FAILED_SEND"

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->b:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    const-string v1, "FAILED_DELIVERY"

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->c:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    const-string v1, "FAILED_DISPLAY"

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->d:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    const-string v1, "REJECTED_SPAM"

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->e:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->a:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->b:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->c:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->d:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->e:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->g:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput p3, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->g:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
