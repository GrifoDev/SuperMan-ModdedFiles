.class public Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;
.super Ljava/lang/Object;


# instance fields
.field private coreBuilder:Lcom/google/gson/GsonBuilder;

.field private final options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

.field private xmlParserCreator:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlParserCreator;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->skipRoot:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iput-boolean v2, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->namespaces:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iput-boolean v2, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->sameNameList:Z

    return-void
.end method


# virtual methods
.method public create()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->xmlParserCreator:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlParserCreator;

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;-><init>(Lcom/google/gson/Gson;Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlParserCreator;Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;)V

    return-object v0
.end method

.method public setPrimitiveArrays(Z)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->primitiveArrays:Z

    return-object p0
.end method

.method public setRootArrayPrimitive(Z)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->rootArrayPrimitive:Z

    return-object p0
.end method

.method public setSameNameLists(Z)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->sameNameList:Z

    return-object p0
.end method

.method public setSkipRoot(Z)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->skipRoot:Z

    return-object p0
.end method

.method public setTreatNamespaces(Z)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->namespaces:Z

    return-object p0
.end method

.method public setXmlParserCreator(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlParserCreator;)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->xmlParserCreator:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlParserCreator;

    return-object p0
.end method

.method public wrap(Lcom/google/gson/GsonBuilder;)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    return-object p0
.end method
