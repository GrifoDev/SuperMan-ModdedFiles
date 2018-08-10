.class public final Landroid/telecom/ConnectionRequest$Builder;
.super Ljava/lang/Object;
.source "ConnectionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddress:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

.field private mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

.field private mShouldShowIncomingCallUi:Z

.field private mTelecomCallId:Ljava/lang/String;

.field private mVideoState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    iput-boolean v0, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/telecom/ConnectionRequest;
    .locals 10

    new-instance v0, Landroid/telecom/ConnectionRequest;

    iget-object v1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Landroid/telecom/ConnectionRequest$Builder;->mAddress:Landroid/net/Uri;

    iget-object v3, p0, Landroid/telecom/ConnectionRequest$Builder;->mExtras:Landroid/os/Bundle;

    iget v4, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    iget-object v5, p0, Landroid/telecom/ConnectionRequest$Builder;->mTelecomCallId:Ljava/lang/String;

    iget-boolean v6, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    iget-object v7, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    iget-object v8, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/ConnectionRequest;)V

    return-object v0
.end method

.method public setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public setAddress(Landroid/net/Uri;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAddress:Landroid/net/Uri;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setRttPipeFromInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public setRttPipeToInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public setShouldShowIncomingCallUi(Z)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    return-object p0
.end method

.method public setTelecomCallId(Ljava/lang/String;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mTelecomCallId:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoState(I)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    return-object p0
.end method
