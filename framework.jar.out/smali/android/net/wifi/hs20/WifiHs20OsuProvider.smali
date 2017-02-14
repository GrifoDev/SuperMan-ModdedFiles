.class public Landroid/net/wifi/hs20/WifiHs20OsuProvider;
.super Ljava/lang/Object;
.source "WifiHs20OsuProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hs20/WifiHs20OsuProvider$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/hs20/WifiHs20OsuProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "Hs20OsuProvider"


# instance fields
.field private NAI:Ljava/lang/String;

.field private bssid:Ljava/lang/String;

.field private friendlyName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hessid:Ljava/lang/String;

.field private methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

.field private osuIcon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private osuSsid:Ljava/lang/String;

.field private seen:J

.field private serverUri:Ljava/net/URI;

.field private serviceDescription:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20OsuProvider$1;

    invoke-direct {v0}, Landroid/net/wifi/hs20/WifiHs20OsuProvider$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    iget-wide v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    iput-wide v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/net/URI;Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    iput-object p6, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    iput-object p7, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    iput-object p8, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    iput-object p9, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    iput-object p10, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    invoke-virtual {p11}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    return-void
.end method

.method private getBestIcon(Ljava/util/ArrayList;)Landroid/net/wifi/hs20/WifiHs20OsuIcon;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/hs20/WifiHs20OsuIcon;",
            ">;)",
            "Landroid/net/wifi/hs20/WifiHs20OsuIcon;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;

    return-object v0
.end method


# virtual methods
.method public addFriendlyName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addOsuIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addServiceDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyNames()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHessid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodType()Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    return-object v0
.end method

.method public getNAI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    return-object v0
.end method

.method public getOsuIcon()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    const-string/jumbo v2, "zxx"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getOsuIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOsuIcons()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOsuNAI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    return-object v0
.end method

.method public getOsuSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getSeen()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    return-wide v0
.end method

.method public getServerUri()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    return-object v0
.end method

.method public getServiceDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceDescription()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public isHavingIcon()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    return-void
.end method

.method public setFriendlyName(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    return-void
.end method

.method public setHessid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    return-void
.end method

.method public setMethodType(Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    return-void
.end method

.method public setNAI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    return-void
.end method

.method public setOsuIcon(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    return-void
.end method

.method public setOsuSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    return-void
.end method

.method public setSeen(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    return-void
.end method

.method public setSeen(Ljava/lang/String;)V
    .locals 4

    const/16 v1, 0xa

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    goto :goto_0
.end method

.method public setServerUri(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    return-void
.end method

.method public setServiceDescription(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "<none>"

    const-string/jumbo v2, "FriendlyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", ServerUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", MethodType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    if-nez v2, :cond_2

    move-object v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", Icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    if-nez v2, :cond_3

    move-object v2, v0

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", ssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object v2, v0

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", hessid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object v2, v0

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", bssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    if-nez v2, :cond_6

    move-object v2, v0

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", osuSsid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    if-nez v2, :cond_7

    move-object v2, v0

    :goto_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", NAI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    if-nez v2, :cond_8

    move-object v2, v0

    :goto_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", ServiceDescription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    if-nez v3, :cond_9

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    goto :goto_7

    :cond_8
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    goto :goto_8

    :cond_9
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    goto :goto_9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "freindly_name"

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "osu_icon"

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "service_description"

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
