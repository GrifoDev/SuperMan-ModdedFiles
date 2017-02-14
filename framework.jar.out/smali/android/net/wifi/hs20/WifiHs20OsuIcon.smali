.class public Landroid/net/wifi/hs20/WifiHs20OsuIcon;
.super Ljava/lang/Object;
.source "WifiHs20OsuIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hs20/WifiHs20OsuIcon$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/hs20/WifiHs20OsuIcon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileName:Ljava/lang/String;

.field height:I

.field iconHash:Ljava/lang/String;

.field private isDownloaded:Z

.field language:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20OsuIcon$1;

    invoke-direct {v0}, Landroid/net/wifi/hs20/WifiHs20OsuIcon$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->width:I

    iput v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->height:I

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->language:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->width:I

    iput p2, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->height:I

    iput-object p3, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->language:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->type:Ljava/lang/String;

    invoke-virtual {p0, p5}, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->setFileName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloaded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->isDownloaded:Z

    return v0
.end method

.method public setDownloaded(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->isDownloaded:Z

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->type:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
