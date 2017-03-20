.class public Lcom/thoughtworks/xstream/io/xml/CompactWriter;
.super Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;
.source "CompactWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I
    .param p3, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "mode"    # I
    .param p3, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected endOfLine()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
