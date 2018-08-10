.class public Landroid/net/wifi/p2p/WifiP2pConfigList;
.super Ljava/lang/Object;
.source "WifiP2pConfigList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pConfigList$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfigList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlllistCount:I

.field private mDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigList$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfigList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pConfigList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    const/4 v2, 0x0

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllCount()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    return v0
.end method

.method public getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p1, :cond_1

    return-object v0

    :cond_2
    return-object v4
.end method

.method public getConfigList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    return-void

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
