.class public Lcom/sec/ims/presence/PresenceInfo;
.super Ljava/lang/Object;
.source "PresenceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/presence/PresenceInfo$1;,
        Lcom/sec/ims/presence/PresenceInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activities:Ljava/lang/String;

.field private avatar_uri:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private contactId:Ljava/lang/String;

.field private cyworld:Ljava/lang/String;

.field private display_name:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private expire_time:J

.field private facebook:Ljava/lang/String;

.field private homepage:Ljava/lang/String;

.field private hyper:I

.field private id:J

.field private isFetchSuccess:Z

.field private mDeviceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/presence/DeviceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/presence/PersonTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private min_expires:J

.field private mood_text:Ljava/lang/String;

.field private phone_number:Ljava/lang/String;

.field private pidf:Ljava/lang/String;

.field private rawContactId:Ljava/lang/String;

.field private state:I

.field private subscriptionId:Ljava/lang/String;

.field private tel_uri:Ljava/lang/String;

.field private timestamp:J

.field private twitter:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private useExtendedTimer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/presence/PresenceInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/presence/PresenceInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/presence/PresenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    iput-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/presence/PresenceInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->tel_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->avatar_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    iget v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->state:I

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    iget-wide v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->timestamp:J

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->display_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    iget v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->hyper:I

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->mood_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->homepage:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->birthday:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->phone_number:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->cyworld:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->twitter:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->facebook:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->activities:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    iget-wide v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->expire_time:J

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->pidf:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    iput-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addDevice(Lcom/sec/ims/presence/DeviceTuple;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDevice(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/presence/DeviceTuple;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addPerson(Lcom/sec/ims/presence/PersonTuple;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPerson(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/presence/PersonTuple;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addService(Lcom/sec/ims/presence/ServiceTuple;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addService(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clearDevice()V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearPerson()V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearService()V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivities()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    return-object v0
.end method

.method public getCyworld()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/presence/DeviceTuple;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    return-wide v0
.end method

.method public getExtendedTimerFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    return v0
.end method

.method public getFacebook()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getHomepage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    return-object v0
.end method

.method public getHyper()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    return-wide v0
.end method

.method public getMinExpires()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    return-wide v0
.end method

.method public getMoodText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/presence/PersonTuple;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getPidf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContactId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    return-object v0
.end method

.method public getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;
    .locals 3

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/ServiceTuple;

    iget-object v2, v0, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    return v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTelUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    return-wide v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isFetchSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    return v0
.end method

.method public removeService(Lcom/sec/ims/presence/ServiceTuple;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/presence/ServiceTuple;

    iget-object v1, v1, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setActivities(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    return-void
.end method

.method public setAvatarUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    return-void
.end method

.method public setCyworld(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setExpireTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    return-void
.end method

.method public setExtendedTimerFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    return-void
.end method

.method public setFetchState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    return-void
.end method

.method public setHomepage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    return-void
.end method

.method public setHyper(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    return-void
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    return-void
.end method

.method public setMinExpires(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    return-void
.end method

.method public setMoodText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    return-void
.end method

.method public setPidf(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    return-void
.end method

.method public setRawContactId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    return-void
.end method

.method public setSubscriptionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    return-void
.end method

.method public setTelUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", tel_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", rawContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", subscriptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", isFetchSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", avatar_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", display_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", hyper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mood_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", homepage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", birthday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", phone_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", cyworld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", twitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", facebook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", activities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", expire_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", min_expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/sec/ims/presence/PresenceInfo;)V
    .locals 1

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    :cond_0
    iget v0, p1, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
