.class public Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;
.super Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "_-"

    const-string v1, "__"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public escapeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unescapeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
