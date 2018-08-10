.class public Lcom/sec/ims/ImsRegistrationError;
.super Ljava/lang/Object;
.source "ImsRegistrationError.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ImsRegistrationError$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/ImsRegistrationError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDeregistrationReason:I

.field mDetailedDeregiReason:I

.field mSipErrorCode:I

.field mSipErrorReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/ImsRegistrationError$1;

    invoke-direct {v0}, Lcom/sec/ims/ImsRegistrationError$1;-><init>()V

    sput-object v0, Lcom/sec/ims/ImsRegistrationError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    iput v1, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    iput v1, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    iput-object p2, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    iput p3, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    iput p4, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/ImsRegistrationError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeregistrationReason()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    return v0
.end method

.method public getDetailedDeregiReason()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    return v0
.end method

.method public getSipErrorCode()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    return v0
.end method

.method public getSipErrorReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/ImsRegistrationError;->mSipErrorReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDetailedDeregiReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/ImsRegistrationError;->mDeregistrationReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
