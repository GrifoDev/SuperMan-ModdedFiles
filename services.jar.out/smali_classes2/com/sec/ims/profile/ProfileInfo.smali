.class public Lcom/sec/ims/profile/ProfileInfo;
.super Ljava/lang/Object;
.source "ProfileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/profile/ProfileInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/profile/ProfileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastUpdatedTimeStamp:J

.field private mLastVisitedTimeStamp:J

.field private mPhoneNumber:Ljava/lang/String;

.field mProfileDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/profile/ProfileData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/ims/profile/ProfileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/profile/ProfileInfo;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/sec/ims/profile/ProfileInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/profile/ProfileInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/profile/ProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    sget-object v1, Lcom/sec/ims/profile/ProfileData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public addProfileData(Lcom/sec/ims/profile/ProfileData;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/ims/profile/ProfileInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "addProfileData() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deepCopy()Lcom/sec/ims/profile/ProfileInfo;
    .locals 4

    new-instance v2, Lcom/sec/ims/profile/ProfileInfo;

    invoke-direct {v2}, Lcom/sec/ims/profile/ProfileInfo;-><init>()V

    iget-object v3, p0, Lcom/sec/ims/profile/ProfileInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/ims/profile/ProfileInfo;->setPhoneNumber(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/profile/ProfileData;

    invoke-virtual {v0}, Lcom/sec/ims/profile/ProfileData;->deepCopy()Lcom/sec/ims/profile/ProfileData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/profile/ProfileInfo;->addProfileData(Lcom/sec/ims/profile/ProfileData;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastUpdatedTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mLastUpdatedTimeStamp:J

    return-wide v0
.end method

.method public getLastVisitedTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mLastUpdatedTimeStamp:J

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/profile/ProfileData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    return-object v0
.end method

.method public getProfileData(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/profile/ProfileData;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/profile/ProfileData;

    const-string/jumbo v4, "mimetype"

    invoke-virtual {v1, v4}, Lcom/sec/ims/profile/ProfileData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    return-object v0

    :cond_3
    return-object v5
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    sget-object v1, Lcom/sec/ims/profile/ProfileData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public removeProfileData(Lcom/sec/ims/profile/ProfileData;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/ims/profile/ProfileInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeProfileData() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLastUpdatedTimeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/ims/profile/ProfileInfo;->mLastUpdatedTimeStamp:J

    return-void
.end method

.method public setLastVisitedTimeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/ims/profile/ProfileInfo;->mLastUpdatedTimeStamp:J

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/profile/ProfileInfo;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setProfileData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/profile/ProfileData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ProfileInfo: phone number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/ims/profile/ProfileInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/profile/ProfileData;

    invoke-virtual {v0}, Lcom/sec/ims/profile/ProfileData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/profile/ProfileInfo;->mProfileDataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
