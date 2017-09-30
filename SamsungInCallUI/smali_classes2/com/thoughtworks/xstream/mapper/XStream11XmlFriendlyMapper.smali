.class public Lcom/thoughtworks/xstream/mapper/XStream11XmlFriendlyMapper;
.super Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method public mapNameFromXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/XStream11XmlFriendlyMapper;->unescapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/XStream11XmlFriendlyMapper;->unescapeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/XStream11XmlFriendlyMapper;->unescapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
