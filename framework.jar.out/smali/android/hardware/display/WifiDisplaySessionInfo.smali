.class public final Landroid/hardware/display/WifiDisplaySessionInfo;
.super Ljava/lang/Object;
.source "WifiDisplaySessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/WifiDisplaySessionInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/WifiDisplaySessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClient:Z

.field private final mGroupId:Ljava/lang/String;

.field private final mIP:Ljava/lang/String;

.field private final mPassphrase:Ljava/lang/String;

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplaySessionInfo$1;-><init>()V

    .line 39
    sput-object v0, Landroid/hardware/display/WifiDisplaySessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 59
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Z
    .param p2, "session"    # I
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "pp"    # Ljava/lang/String;
    .param p5, "ip"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    .line 65
    iput p2, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    .line 66
    iput-object p3, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    return v0
.end method

.method public isClient()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiDisplaySessionInfo: Client/Owner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Client"

    .line 109
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string/jumbo v1, " GroupId: "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string/jumbo v1, " Passphrase: "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string/jumbo v1, " SessionId: "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    iget v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    const-string/jumbo v1, " IP Address: "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    const-string/jumbo v0, "Owner"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
