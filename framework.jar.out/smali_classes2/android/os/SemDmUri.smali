.class public Landroid/os/SemDmUri;
.super Ljava/lang/Object;
.source "SemDmUri.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SemDmUri$1;,
        Landroid/os/SemDmUri$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/SemDmUri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColumnDataType:Ljava/lang/String;

.field private mColumnName:Ljava/lang/String;

.field private mMappedName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWhereColumnArg:Ljava/lang/String;

.field private mWhereColumnName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/SemDmUri$1;

    invoke-direct {v0}, Landroid/os/SemDmUri$1;-><init>()V

    sput-object v0, Landroid/os/SemDmUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/os/SemDmUri;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/os/SemDmUri;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri;->mColumnName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri;->mColumnDataType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri;->mMappedName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri;->mWhereColumnName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri;->mWhereColumnArg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/SemDmUri;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/SemDmUri;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/SemDmUri$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/SemDmUri$Builder;->-get0(Landroid/os/SemDmUri$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/os/SemDmUri$Builder;->-get2(Landroid/os/SemDmUri$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri;->mColumnName:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/SemDmUri$Builder;->-get1(Landroid/os/SemDmUri$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri;->mColumnDataType:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/SemDmUri$Builder;->-get3(Landroid/os/SemDmUri$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri;->mMappedName:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/SemDmUri$Builder;->-get5(Landroid/os/SemDmUri$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri;->mWhereColumnName:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/SemDmUri$Builder;->-get4(Landroid/os/SemDmUri$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemDmUri;->mWhereColumnArg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/SemDmUri$Builder;Landroid/os/SemDmUri;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/SemDmUri;-><init>(Landroid/os/SemDmUri$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnDataType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri;->mColumnDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri;->mColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getMappedName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri;->mMappedName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWhereColumnArg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri;->mWhereColumnArg:Ljava/lang/String;

    return-object v0
.end method

.method public getWhereColumnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri;->mWhereColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/SemDmUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMappedName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/SemDmUri;->mMappedName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/os/SemDmUri;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/os/SemDmUri;->mColumnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/SemDmUri;->mColumnDataType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/SemDmUri;->mMappedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/SemDmUri;->mWhereColumnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/SemDmUri;->mWhereColumnArg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
