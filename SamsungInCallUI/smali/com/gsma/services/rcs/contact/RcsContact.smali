.class public Lcom/gsma/services/rcs/contact/RcsContact;
.super Ljava/lang/Object;

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
.field private a:Lcom/gsma/services/rcs/capability/Capabilities;

.field private b:Lcom/gsma/services/rcs/contact/ContactId;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gsma/services/rcs/contact/RcsContact$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/contact/RcsContact$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/contact/RcsContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->b:Lcom/gsma/services/rcs/contact/ContactId;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    sget-object v0, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/capability/Capabilities;

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->a:Lcom/gsma/services/rcs/capability/Capabilities;

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/gsma/services/rcs/contact/RcsContact;->e:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->f:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->b:Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    iput-object v3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->a:Lcom/gsma/services/rcs/capability/Capabilities;

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->b:Lcom/gsma/services/rcs/contact/ContactId;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->b:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->d:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->a:Lcom/gsma/services/rcs/capability/Capabilities;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->a:Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/capability/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/gsma/services/rcs/contact/RcsContact;->e:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->f:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method
