.class public Landroid/media/PlayerBase$PlayerIdCard;
.super Ljava/lang/Object;
.source "PlayerBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerIdCard"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlayerBase$PlayerIdCard$1;
    }
.end annotation


# static fields
.field public static final AUDIO_ATTRIBUTES_DEFINED:I = 0x1

.field public static final AUDIO_ATTRIBUTES_NONE:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/PlayerBase$PlayerIdCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAttributes:Landroid/media/AudioAttributes;

.field public final mIPlayer:Landroid/media/IPlayer;

.field public final mPlayerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/PlayerBase$PlayerIdCard$1;

    invoke-direct {v0}, Landroid/media/PlayerBase$PlayerIdCard$1;-><init>()V

    sput-object v0, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/media/AudioAttributes;Landroid/media/IPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    iput-object p2, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    iput-object p3, p0, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    return-void

    :cond_0
    invoke-static {v0}, Landroid/media/IPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;

    move-result-object v1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/PlayerBase$PlayerIdCard;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/PlayerBase$PlayerIdCard;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    instance-of v2, p1, Landroid/media/PlayerBase$PlayerIdCard;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/media/PlayerBase$PlayerIdCard;

    iget v2, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    iget v3, v0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v2, v0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    invoke-interface {v0}, Landroid/media/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
