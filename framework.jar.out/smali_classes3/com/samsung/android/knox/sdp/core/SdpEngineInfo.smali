.class public Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
.super Ljava/lang/Object;
.source "SdpEngineInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/sdp/core/SdpEngineInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

.field private static PWD_RESET_TOKEN:Ljava/lang/String;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mFlags:I

.field private mId:I

.field private mIsMigrating:Z

.field private mPackageName:Ljava/lang/String;

.field private mState:I

.field private mType:I

.field private mUserId:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "PersonaPwdResetToken"

    sput-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    const-string/jumbo v0, "PwdResetToken"

    sput-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->PWD_RESET_TOKEN:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    iput-boolean v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    if-nez p1, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x3e7

    if-gt p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    :goto_1
    iput p2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    iput p3, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    iput p4, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    iput p5, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    iput p6, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    :goto_3
    iput-boolean p7, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResetTokenTimaAlias()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->PWD_RESET_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    return v0
.end method

.method public isAndroidDefaultEngine()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomEngine()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMdfpp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMigrating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    return v0
.end method

.method public isMinor()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    return-void
.end method

.method public setIsMigrating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SdpEngineInfo { alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " userid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->mIsMigrating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
