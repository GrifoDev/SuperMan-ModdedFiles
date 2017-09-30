.class public final enum Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/GroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParticipantStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
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
            "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum b:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum c:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum d:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum e:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum f:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum g:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum h:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field public static final enum i:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

.field private static k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic l:[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;


# instance fields
.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v2, "INVITE_QUEUED"

    invoke-direct {v1, v2, v0, v0}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->a:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v2, "INVITING"

    invoke-direct {v1, v2, v5, v5}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->b:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v2, "INVITED"

    invoke-direct {v1, v2, v6, v6}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->c:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v2, "CONNECTED"

    invoke-direct {v1, v2, v7, v7}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->d:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v2, "DISCONNECTED"

    invoke-direct {v1, v2, v8, v8}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->e:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v2, "DEPARTED"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->f:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v2, "FAILED"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->g:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v2, "DECLINED"

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->h:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const-string v2, "TIMEOUT"

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->i:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    sget-object v2, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->a:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v2, v1, v0

    sget-object v2, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->b:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->c:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->d:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v2, v1, v7

    sget-object v2, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->e:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->f:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->g:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->h:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->i:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    aput-object v3, v1, v2

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->l:[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->k:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->k:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->a()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput p3, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->j:I

    return-void
.end method

.method static synthetic a(Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->j:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->l:[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->j:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
