.class final Lcom/gsma/services/rcs/chat/GroupChat$State$1;
.super Ljava/lang/Object;
.source "GroupChat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/GroupChat$State;
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
        "Lcom/gsma/services/rcs/chat/GroupChat$State;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/chat/GroupChat$State;
    .locals 6

    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$State;->values()[Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/GroupChat$State;->access$000(Lcom/gsma/services/rcs/chat/GroupChat$State;)I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v4, v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$State;->INITIATED:Lcom/gsma/services/rcs/chat/GroupChat$State;

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/GroupChat$State$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/gsma/services/rcs/chat/GroupChat$State;
    .locals 1

    new-array v0, p1, [Lcom/gsma/services/rcs/chat/GroupChat$State;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/GroupChat$State$1;->newArray(I)[Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v0

    return-object v0
.end method
