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

    .prologue
    .line 88
    new-instance v0, Landroid/net/wifi/hs20/WifiHs20OsuIcon$1;

    invoke-direct {v0}, Landroid/net/wifi/hs20/WifiHs20OsuIcon$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->width:I

    .line 28
    iput v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->height:I

    .line 29
    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->language:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->type:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v0}, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->setFileName(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->width:I

    .line 36
    iput p2, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->height:I

    .line 37
    iput-object p3, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->language:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->type:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p5}, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->setFileName(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloaded()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->isDownloaded:Z

    return v0
.end method

.method public setDownloaded(Z)V
    .locals 0
    .param p1, "isDownloaded"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->isDownloaded:Z

    .line 62
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->fileName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->type:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/hs20/WifiHs20OsuIcon;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
