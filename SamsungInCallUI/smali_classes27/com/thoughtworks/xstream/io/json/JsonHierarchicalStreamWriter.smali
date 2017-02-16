.class public Lcom/thoughtworks/xstream/io/json/JsonHierarchicalStreamWriter;
.super Lcom/thoughtworks/xstream/io/json/JsonWriter;
.source "JsonHierarchicalStreamWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/JsonHierarchicalStreamWriter;-><init>(Ljava/io/Writer;[C)V

    .line 61
    return-void

    .line 60
    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/JsonHierarchicalStreamWriter;-><init>(Ljava/io/Writer;[C)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # Ljava/lang/String;
    .param p3, "newLine"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/thoughtworks/xstream/io/json/JsonHierarchicalStreamWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[C)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # [C

    .prologue
    .line 39
    const-string v0, "\n"

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/json/JsonHierarchicalStreamWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineIndenter"    # [C
    .param p3, "newLine"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;)V

    .line 33
    return-void
.end method
