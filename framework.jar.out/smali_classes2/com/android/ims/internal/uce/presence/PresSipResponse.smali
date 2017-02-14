.class public Lcom/android/ims/internal/uce/presence/PresSipResponse;
.super Ljava/lang/Object;
.source "PresSipResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresSipResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresSipResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

.field private mReasonPhrase:Ljava/lang/String;

.field private mRequestId:I

.field private mRetryAfter:I

.field private mSipResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresSipResponse$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresSipResponse$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSipResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresSipResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSipResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCmdId()Lcom/android/ims/internal/uce/presence/PresCmdId;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    return v0
.end method

.method public getRetryAfter()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    return v0
.end method

.method public getSipResponseCode()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    const-class v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    return-void
.end method

.method public setCmdId(Lcom/android/ims/internal/uce/presence/PresCmdId;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    return-void
.end method

.method public setSipResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
