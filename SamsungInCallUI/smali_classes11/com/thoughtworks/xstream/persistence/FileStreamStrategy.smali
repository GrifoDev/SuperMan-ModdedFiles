.class public Lcom/thoughtworks/xstream/persistence/FileStreamStrategy;
.super Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;
.source "FileStreamStrategy.java"

# interfaces
.implements Lcom/thoughtworks/xstream/persistence/StreamStrategy;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/XStream;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/persistence/FileStreamStrategy;-><init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;-><init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    aget-char v2, v0, v3

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x41

    if-lt v2, v4, :cond_0

    const/16 v4, 0x5a

    if-le v2, v4, :cond_1

    :cond_0
    const/16 v4, 0x61

    if-lt v2, v4, :cond_2

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x5f

    if-ne v2, v4, :cond_3

    const-string v4, "__"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected extractKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/persistence/FileStreamStrategy;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected getName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "\u0000"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/persistence/FileStreamStrategy;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, -0x1

    const/16 v9, 0x5f

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const v5, 0xffff

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_4

    aget-char v2, v0, v4

    if-ne v2, v9, :cond_1

    if-eq v3, v10, :cond_1

    if-ne v5, v9, :cond_0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    const/4 v3, -0x1

    :goto_2
    move v5, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    int-to-char v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-ne v2, v9, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    if-eq v3, v10, :cond_3

    mul-int/lit8 v6, v3, 0x10

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    add-int v3, v6, v7

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
