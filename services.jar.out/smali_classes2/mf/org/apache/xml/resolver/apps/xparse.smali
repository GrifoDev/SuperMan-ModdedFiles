.class public Lmf/org/apache/xml/resolver/apps/xparse;
.super Ljava/lang/Object;
.source "xparse.java"


# static fields
.field private static debug:Lmf/org/apache/xml/resolver/helpers/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    sput-object v0, Lmf/org/apache/xml/resolver/apps/xparse;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_a

    aget-object v1, p0, v0

    const-string/jumbo v8, "-c"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p0, v0

    const-string/jumbo v8, "-w"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p0, v0

    const-string/jumbo v8, "-v"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p0, v0

    const-string/jumbo v8, "-n"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, p0, v0

    const-string/jumbo v8, "-N"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, p0, v0

    const-string/jumbo v8, "-d"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    aget-object v1, p0, v0

    const-string/jumbo v8, "-E"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    aget-object v1, p0, v0

    move v13, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v1

    move v1, v13

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    aget-object v1, p0, v0

    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v13, v1

    move v1, v2

    move v2, v13

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v13, v1

    move v1, v2

    move v2, v13

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move v4, v5

    move-object v5, v6

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v13

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    move v4, v5

    move-object v5, v6

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v13

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p0, v1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_6

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_1

    :cond_6
    sget-object v8, Lmf/org/apache/xml/resolver/apps/xparse;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v8, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_7

    const/4 v0, 0x0

    :goto_2
    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    aget-object v1, p0, v0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-gez v1, :cond_9

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_1

    :cond_9
    move-object v5, v6

    move v13, v3

    move v3, v4

    move v4, v1

    move v1, v2

    move v2, v13

    goto :goto_1

    :catch_1
    move-exception v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_1

    :cond_a
    if-eqz v6, :cond_b

    :goto_3
    sput-boolean v3, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->validating:Z

    sput-boolean v4, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->namespaceAware:Z

    new-instance v8, Lmf/org/apache/xml/resolver/tools/ResolvingParser;

    invoke-direct {v8}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;-><init>()V

    invoke-virtual {v8}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v9

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage: org.apache.xml.resolver.apps.xparse [opts] xmlfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    :cond_c
    new-instance v12, Lmf/org/apache/xml/resolver/apps/XParseError;

    const/4 v0, 0x1

    invoke-direct {v12, v0, v2}, Lmf/org/apache/xml/resolver/apps/XParseError;-><init>(ZZ)V

    invoke-virtual {v12, v5}, Lmf/org/apache/xml/resolver/apps/XParseError;->setMaxMessages(I)V

    invoke-virtual {v8, v12}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    if-nez v3, :cond_d

    const-string/jumbo v0, "well-formed"

    :goto_5
    if-nez v4, :cond_e

    const-string/jumbo v1, "namespace-ignorant"

    :goto_6
    if-gtz v5, :cond_f

    :goto_7
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :try_start_2
    invoke-virtual {v8, v6}, Lmf/org/apache/xml/resolver/tools/ResolvingParser;->parse(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_8
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v8, v2, v0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v10, 0x3e8

    cmp-long v4, v8, v10

    if-gtz v4, :cond_10

    const/4 v4, 0x1

    :goto_9
    if-nez v4, :cond_11

    const-wide/16 v6, 0x3e8

    div-long v6, v8, v6

    const-wide/16 v10, 0x3e8

    rem-long/2addr v8, v10

    move-wide v10, v8

    :goto_a
    const-wide/16 v8, 0x3c

    cmp-long v4, v6, v8

    if-gtz v4, :cond_12

    const/4 v4, 0x1

    :goto_b
    if-nez v4, :cond_13

    const-wide/16 v2, 0x3c

    div-long v2, v6, v2

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    move-wide v8, v6

    :goto_c
    const-wide/16 v6, 0x3c

    cmp-long v4, v2, v6

    if-gtz v4, :cond_14

    const/4 v4, 0x1

    :goto_d
    if-nez v4, :cond_15

    const-wide/16 v0, 0x3c

    div-long v0, v2, v0

    const-wide/16 v6, 0x3c

    rem-long/2addr v2, v6

    move-wide v6, v2

    move-wide v2, v0

    :goto_e
    if-gtz v5, :cond_16

    :goto_f
    invoke-virtual {v12}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v0

    if-gtz v0, :cond_22

    :goto_10
    return-void

    :cond_d
    const-string/jumbo v0, "validating"

    goto :goto_5

    :cond_e
    const-string/jumbo v1, "namespace-aware"

    goto :goto_6

    :cond_f
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Attempting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " parse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_2
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SAX Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_11
    move-wide v10, v8

    goto :goto_a

    :cond_12
    const/4 v4, 0x0

    goto :goto_b

    :cond_13
    move-wide v8, v6

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    goto :goto_d

    :cond_15
    move-wide v6, v2

    move-wide v2, v0

    goto :goto_e

    :cond_16
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Parse "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Lmf/org/apache/xml/resolver/apps/XParseError;->getFatalCount()I

    move-result v0

    if-gtz v0, :cond_1a

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "succeeded "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1b

    const/4 v0, 0x1

    :goto_11
    if-nez v0, :cond_17

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_17
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_12
    if-nez v0, :cond_18

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_1d

    const/4 v0, 0x1

    :goto_13
    if-nez v0, :cond_19

    :cond_18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_14
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "with "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v0

    invoke-virtual {v12}, Lmf/org/apache/xml/resolver/apps/XParseError;->getWarningCount()I

    move-result v1

    if-gtz v0, :cond_1e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "no errors and "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_15
    if-gtz v1, :cond_20

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "no warnings."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_16
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_1a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "failed "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_14

    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_11

    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_12

    :cond_1d
    const/4 v0, 0x0

    goto :goto_13

    :cond_1e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1f

    const-string/jumbo v0, ""

    :goto_17
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, " and "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_15

    :cond_1f
    const-string/jumbo v0, "s"

    goto :goto_17

    :cond_20
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " warning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v0, 0x1

    if-gt v1, v0, :cond_21

    const-string/jumbo v0, ""

    :goto_18
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_16

    :cond_21
    const-string/jumbo v0, "s"

    goto :goto_18

    :cond_22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_10
.end method
