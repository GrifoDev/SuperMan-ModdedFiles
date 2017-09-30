.class final Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 6

    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->a(Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v4, v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->g:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    goto :goto_1
.end method

.method public a(I)[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .locals 1

    new-array v0, p1, [Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus$1;->a(Landroid/os/Parcel;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus$1;->a(I)[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v0

    return-object v0
.end method
