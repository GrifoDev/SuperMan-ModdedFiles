.class public Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;


# instance fields
.field private a:I

.field private c:Lcom/gsma/services/rcs/extension/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->c:Lcom/gsma/services/rcs/extension/d;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->a:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
