.class final Lcom/google/android/gms/games/multiplayer/ParticipantEntity$a;
.super Lcom/google/android/gms/games/multiplayer/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity$a;->q(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    move-result-object v0

    return-object v0
.end method

.method public q(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
    .locals 11

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->au()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->b(Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->s(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/games/multiplayer/c;->q(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v0

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-lez v8, :cond_5

    move v8, v1

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-lez v10, :cond_2

    move v9, v1

    :cond_2
    const/4 v10, 0x7

    if-eqz v9, :cond_6

    sget-object v0, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    move-object v9, v0

    :goto_4
    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLcom/google/android/gms/games/PlayerEntity;I)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    :cond_5
    move v8, v9

    goto :goto_3

    :cond_6
    move-object v9, v0

    goto :goto_4
.end method
