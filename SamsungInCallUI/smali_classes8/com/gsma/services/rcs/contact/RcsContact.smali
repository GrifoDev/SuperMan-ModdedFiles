.class public Lcom/gsma/services/rcs/contact/RcsContact;
.super Ljava/lang/Object;
.source "RcsContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

.field private mContact:Lcom/gsma/services/rcs/contact/ContactId;

.field private mDisplayName:Ljava/lang/String;

.field private mIsBlocked:Z

.field private mIsOnline:Z

.field private rcsStatusTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gsma/services/rcs/contact/RcsContact$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/contact/RcsContact$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/contact/RcsContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    iput-object v2, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsOnline:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    :goto_3
    if-eqz v0, :cond_4

    sget-object v2, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/capability/Capabilities;

    iput-object v2, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/gsma/services/rcs/contact/RcsContact;->rcsStatusTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    :goto_5
    iput-boolean v3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsBlocked:Z

    return-void

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    iput-object v5, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v0, v4

    goto :goto_3

    :cond_4
    iput-object v5, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    goto :goto_4

    :cond_5
    move v3, v4

    goto :goto_5
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/contact/ContactId;ZLcom/gsma/services/rcs/capability/Capabilities;Ljava/lang/String;JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    iput-boolean p2, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsOnline:Z

    iput-object p3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    iput-object p4, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/gsma/services/rcs/contact/RcsContact;->rcsStatusTimestamp:J

    iput-boolean p7, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsBlocked:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBlockingTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->rcsStatusTimestamp:J

    return-wide v0
.end method

.method public getCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    return-object v0
.end method

.method public getContactId()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsBlocked:Z

    return v0
.end method

.method public isOnline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsOnline:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v1, p1, p2}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-boolean v1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsOnline:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-virtual {v1, p1, p2}, Lcom/gsma/services/rcs/capability/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/gsma/services/rcs/contact/RcsContact;->rcsStatusTimestamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mIsBlocked:Z

    if-eqz v1, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3
.end method
