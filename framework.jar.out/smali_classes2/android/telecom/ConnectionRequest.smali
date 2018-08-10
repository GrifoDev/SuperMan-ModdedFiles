.class public final Landroid/telecom/ConnectionRequest;
.super Ljava/lang/Object;
.source "ConnectionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ConnectionRequest$1;,
        Landroid/telecom/ConnectionRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ConnectionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mAddress:Landroid/net/Uri;

.field private final mExtras:Landroid/os/Bundle;

.field private final mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

.field private final mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

.field private final mShouldShowIncomingCallUi:Z

.field private final mTelecomCallId:Ljava/lang/String;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/ConnectionRequest$1;

    invoke-direct {v0}, Landroid/telecom/ConnectionRequest$1;-><init>()V

    sput-object v0, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v4

    move-object v7, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;Z)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method private constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-object p2, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    iput-object p3, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    iput p4, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    iput-object p5, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    iput-object p7, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRttPipeFromInCall()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getRttPipeToInCall()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getRttTextStream()Landroid/telecom/Connection$RttTextStream;
    .locals 3

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->isRequestingRtt()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telecom/Connection$RttTextStream;

    iget-object v1, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1, v2}, Landroid/telecom/Connection$RttTextStream;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTelecomCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    iget v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    return v0
.end method

.method public isRequestingRtt()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public shouldShowIncomingCallUi()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v0, :cond_2

    const-string/jumbo v1, "ConnectionRequest %s %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_0
    aput-object v0, v2, v3

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "<MASKED>"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "ConnectionRequest %s %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    if-nez v0, :cond_3

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_2
    aput-object v0, v2, v3

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_3
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
