.class Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;
.super Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
.source "PpsMoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalNode"
.end annotation


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;->mChildren:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
