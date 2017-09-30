.class public Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlParser;
.super Ljava/lang/Object;


# static fields
.field public static final PARSER_CREATOR:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlParserCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlParser$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlParser$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlParser;->PARSER_CREATOR:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlParserCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGson()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlParser;->createGson(Z)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;

    move-result-object v0

    return-object v0
.end method

.method public static createGson(Z)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlParser;->PARSER_CREATOR:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlParserCreator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlParserCreator;)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->setTreatNamespaces(Z)Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXmlBuilder;->create()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/GsonXml;

    move-result-object v0

    return-object v0
.end method
