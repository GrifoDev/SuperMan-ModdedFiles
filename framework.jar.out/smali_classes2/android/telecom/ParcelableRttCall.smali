.class public Landroid/telecom/ParcelableRttCall;
.super Ljava/lang/Object;
.source "ParcelableRttCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableRttCall$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableRttCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mReceiveStream:Landroid/os/ParcelFileDescriptor;

.field private final mRttMode:I

.field private final mTransmitStream:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/ParcelableRttCall$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableRttCall$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableRttCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    iput-object p2, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReceiveStream()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getRttMode()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    return v0
.end method

.method public getTransmitStream()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
