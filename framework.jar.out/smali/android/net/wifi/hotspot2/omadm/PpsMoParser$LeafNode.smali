.class Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;
.super Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
.source "PpsMoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeafNode"
.end annotation


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;->mValue:Ljava/lang/String;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
