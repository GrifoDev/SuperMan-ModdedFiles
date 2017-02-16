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

    .prologue
    .line 365
    new-instance v0, Landroid/net/wifi/hs20/WifiHs20OsuProvider$1;

    invoke-direct {v0}, Landroid/net/wifi/hs20/WifiHs20OsuProvider$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    .line 126
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 127
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 128
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 129
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    .line 130
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    .line 131
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    .line 136
    iget-wide v0, p1, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    iput-wide v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/net/URI;Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Long;)V
    .locals 2
    .param p1, "_ssid"    # Ljava/lang/String;
    .param p2, "_bssid"    # Ljava/lang/String;
    .param p3, "_hessid"    # Ljava/lang/String;
    .param p4, "_osuSsid"    # Ljava/lang/String;
    .param p6, "_serverUri"    # Ljava/net/URI;
    .param p7, "_methodType"    # Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;
    .param p9, "_NAI"    # Ljava/lang/String;
    .param p11, "_seen"    # Ljava/lang/Long;
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

    .prologue
    .line 104
    .local p5, "_friendlyName":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "_osuIcon":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p10, "_serviceDescription":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    .line 112
    iput-object p5, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    .line 113
    iput-object p6, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    .line 114
    iput-object p7, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    .line 115
    iput-object p8, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    .line 116
    iput-object p9, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    .line 117
    iput-object p10, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    .line 118
    invoke-virtual {p11}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    .line 107
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

    .prologue
    .line 140
    .local p1, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/hs20/WifiHs20OsuIcon;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 143
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
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public addOsuIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public addServiceDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
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
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 159
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

    .prologue
    .line 149
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHessid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodType()Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    return-object v0
.end method

.method public getNAI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    return-object v0
.end method

.method public getOsuIcon()Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    .local v0, "iconFileName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 210
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    const-string/jumbo v2, "zxx"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "iconFileName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 212
    .restart local v0    # "iconFileName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getOsuIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 217
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

    .prologue
    .line 203
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOsuNAI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    return-object v0
.end method

.method public getOsuSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getSeen()J
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    return-wide v0
.end method

.method public getServerUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    return-object v0
.end method

.method public getServiceDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 311
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

    .prologue
    .line 306
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public isHavingIcon()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_0
    return v1
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0
    .param p1, "nBssid"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    .line 261
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

    .prologue
    .line 164
    .local p1, "friendlyName":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    .line 163
    return-void
.end method

.method public setHessid(Ljava/lang/String;)V
    .locals 0
    .param p1, "nHessid"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setMethodType(Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;)V
    .locals 0
    .param p1, "methodType"    # Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    .prologue
    .line 184
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    .line 183
    return-void
.end method

.method public setNAI(Ljava/lang/String;)V
    .locals 0
    .param p1, "nAI"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    .line 241
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

    .prologue
    .line 222
    .local p1, "osuIcons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    .line 221
    return-void
.end method

.method public setOsuSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "nOsuSsid"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setSeen(J)V
    .locals 1
    .param p1, "nSeen"    # J

    .prologue
    .line 287
    iput-wide p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    .line 286
    return-void
.end method

.method public setSeen(Ljava/lang/String;)V
    .locals 4
    .param p1, "nSeen"    # Ljava/lang/String;

    .prologue
    .line 293
    const/16 v1, 0xa

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    goto :goto_0
.end method

.method public setServerUri(Ljava/net/URI;)V
    .locals 0
    .param p1, "serverUri"    # Ljava/net/URI;

    .prologue
    .line 179
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    .line 178
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

    .prologue
    .line 316
    .local p1, "serviceDescription":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    .line 315
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "nSsid"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 331
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 332
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "<none>"

    .line 333
    .local v0, "none":Ljava/lang/String;
    const-string/jumbo v2, "FriendlyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 334
    const-string/jumbo v3, ", ServerUri: "

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 334
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    if-nez v2, :cond_1

    move-object v2, v0

    .line 333
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 335
    const-string/jumbo v3, ", MethodType: "

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 335
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    if-nez v2, :cond_2

    move-object v2, v0

    .line 333
    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 336
    const-string/jumbo v3, ", Icon: "

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 336
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    if-nez v2, :cond_3

    move-object v2, v0

    .line 333
    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 336
    const-string/jumbo v3, ", ssid: "

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 337
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object v2, v0

    .line 333
    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 337
    const-string/jumbo v3, ", hessid: "

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 338
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object v2, v0

    .line 333
    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 338
    const-string/jumbo v3, ", bssid: "

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 339
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    if-nez v2, :cond_6

    move-object v2, v0

    .line 333
    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 339
    const-string/jumbo v3, ", osuSsid: "

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 340
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    if-nez v2, :cond_7

    move-object v2, v0

    .line 333
    :goto_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 340
    const-string/jumbo v3, ", NAI: "

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 341
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    if-nez v2, :cond_8

    move-object v2, v0

    .line 333
    :goto_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 341
    const-string/jumbo v3, ", ServiceDescription: "

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 342
    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    if-nez v3, :cond_9

    .line 333
    .end local v0    # "none":Ljava/lang/String;
    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 333
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 334
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    goto/16 :goto_1

    .line 335
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 336
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    goto :goto_3

    .line 337
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    goto :goto_4

    .line 338
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    goto :goto_5

    .line 339
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    goto :goto_6

    .line 340
    :cond_7
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    goto :goto_7

    .line 341
    :cond_8
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    goto :goto_8

    .line 342
    :cond_9
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    goto :goto_9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 348
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "freindly_name"

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->friendlyName:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 350
    const-string/jumbo v1, "osu_icon"

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuIcon:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 351
    const-string/jumbo v1, "service_description"

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serviceDescription:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 352
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 353
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->serverUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->methodType:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->NAI:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->hessid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->osuSsid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-wide v2, p0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->seen:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 347
    return-void
.end method
