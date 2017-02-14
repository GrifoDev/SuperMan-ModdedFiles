.class public Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
.super Ljava/lang/Object;
.source "PresRlmiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresRlmiInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFullState:Z

.field private mListName:Ljava/lang/String;

.field private mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

.field private mRequestId:I

.field private mSubscriptionExpireTime:I

.field private mSubscriptionTerminatedReason:Ljava/lang/String;

.field private mUri:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresRlmiInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    return-object v0
.end method

.method public getPresSubscriptionState()Lcom/android/ims/internal/uce/presence/PresSubscriptionState;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    return v0
.end method

.method public getSubscriptionExpireTime()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    return v0
.end method

.method public getSubscriptionTerminatedReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    return v0
.end method

.method public isFullState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    const-class v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFullState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    return-void
.end method

.method public setListName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    return-void
.end method

.method public setPresSubscriptionState(Lcom/android/ims/internal/uce/presence/PresSubscriptionState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    return-void
.end method

.method public setRequestId(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    return-void
.end method

.method public setSubscriptionExpireTime(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    return-void
.end method

.method public setSubscriptionTerminatedReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
