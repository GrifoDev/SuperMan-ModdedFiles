.class Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$1IntPairList;
.super Ljava/util/ArrayList;
.source "XmlFriendlyNameCoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntPairList"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method add(C)V
    .locals 1
    .param p1, "cp"    # C

    .prologue
    .line 58
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    invoke-direct {v0, p1, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;-><init>(II)V

    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method add(II)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 54
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;

    invoke-direct {v0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder$IntPair;-><init>(II)V

    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method
