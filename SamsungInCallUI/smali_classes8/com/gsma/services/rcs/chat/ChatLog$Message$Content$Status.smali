.class public final enum Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
.super Ljava/lang/Enum;
.source "ChatLog.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatLog$Message$Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;",
        ">;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DELIVERED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum QUEUED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum RECEIVED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum REJECTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum SENDING:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field public static final enum SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->REJECTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v1, "QUEUED"

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->QUEUED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENDING:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v7, v7}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v8, v8}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v1, "DELIVERED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DELIVERED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v1, "DISPLAY_REPORT_REQUESTED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v1, "RECEIVED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->RECEIVED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const-string v1, "DISPLAYED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->REJECTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->QUEUED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENDING:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->SENT:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DELIVERED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAY_REPORT_REQUESTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->RECEIVED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->$VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput p3, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->status:I

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

    iput v0, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->status:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->REJECTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->DISPLAYED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->ordinal()I

    move-result v0

    if-gt p0, v0, :cond_0

    invoke-static {}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->values()[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v0

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->FAILED:Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->$VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

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

    iget v0, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->status:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
