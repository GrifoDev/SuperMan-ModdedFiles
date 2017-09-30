.class public Lcom/cmdm/control/bean/Suggestion;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Suggestion"
.end annotation

.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamConverter;
    strings = {
        "suggestion"
    }
    value = Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;
.end annotation


# static fields
.field public static xmlns:Ljava/lang/String;


# instance fields
.field public suggestion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    sput-object v0, Lcom/cmdm/control/bean/Suggestion;->xmlns:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmdm/control/bean/Suggestion;->setSuggestion(Ljava/lang/String;)V

    return-void
.end method

.method public static getSuggestion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/cmdm/control/bean/Suggestion;

    invoke-direct {v0, p0}, Lcom/cmdm/control/bean/Suggestion;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/thoughtworks/xstream/XStream;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/XStream;->autodetectAnnotations(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/cmdm/control/bean/Suggestion;->xmlns:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u8f6f\u4ef6\u66f4\u65b0 "

    invoke-static {v1}, Lcom/cmdm/control/bean/Suggestion;->getSuggestion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSuggestion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Suggestion;->suggestion:Ljava/lang/String;

    return-object v0
.end method

.method public setSuggestion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Suggestion;->suggestion:Ljava/lang/String;

    return-void
.end method
