.class public Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;->a:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
