.class public Landroid/telecom/ConferenceParticipant;
.super Ljava/lang/Object;
.source "ConferenceParticipant.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ConferenceParticipant$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mEndpoint:Landroid/net/Uri;

.field private final mHandle:Landroid/net/Uri;

.field private final mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/ConferenceParticipant$1;

    invoke-direct {v0}, Landroid/telecom/ConferenceParticipant$1;-><init>()V

    sput-object v0, Landroid/telecom/ConferenceParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    iput-object p2, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    iput-object p3, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    iput p4, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndpoint()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ConferenceParticipant Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " DisplayName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " Endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telecom/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telecom/ConferenceParticipant;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
