.class public final Landroid/telephony/CellInfoGsm;
.super Landroid/telephony/CellInfo;
.source "CellInfoGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellInfoGsm$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellInfoGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellInfoGsm"


# instance fields
.field private mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

.field private mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    new-instance v0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {v0}, Landroid/telephony/CellIdentityGsm;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/telephony/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityGsm;

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    sget-object v0, Landroid/telephony/CellSignalStrengthGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthGsm;

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfoGsm;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    iget-object v0, p1, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->copy()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    iget-object v0, p1, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->copy()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoGsm;
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoGsm;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CellInfoGsm"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoGsm;

    move-object v2, v0

    iget-object v4, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    iget-object v5, v2, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v4, v5}, Landroid/telephony/CellIdentityGsm;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    iget-object v5, v2, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v4, v5}, Landroid/telephony/CellSignalStrengthGsm;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_1
    return v3

    :catch_0
    move-exception v1

    return v3
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentityGsm;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    return-object v0
.end method

.method public getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentityGsm;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    return-void
.end method

.method public setCellSignalStrength(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "CellInfoGsm:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityGsm;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthGsm;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
