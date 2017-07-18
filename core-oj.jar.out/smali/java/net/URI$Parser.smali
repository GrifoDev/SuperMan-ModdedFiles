.class Ljava/net/URI$Parser;
.super Ljava/lang/Object;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parser"
.end annotation


# instance fields
.field private input:Ljava/lang/String;

.field private ipv6byteCount:I

.field private requireServerAuthority:Z

.field final synthetic this$0:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    iput v0, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    iput-object p2, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/net/URI;->-set8(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private at(IIC)Z
    .locals 2

    const/4 v0, 0x0

    if-ge p1, p2, :cond_0

    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private at(IILjava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    move v1, p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v5, p2, p1

    if-le v3, v5, :cond_0

    return v4

    :cond_0
    const/4 v0, 0x0

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_3

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v5

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    :goto_1
    if-ne v0, v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private charAt(I)C
    .locals 1

    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private checkChar(IJJLjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    add-int/lit8 v3, p1, 0x1

    move-object v1, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    return-void
.end method

.method private checkChars(IIJJLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    if-ge v0, p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal character in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private fail(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/net/URISyntaxException;

    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private fail(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/net/URISyntaxException;

    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method private failExpecting(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    return-void
.end method

.method private failExpecting(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " following "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    return-void
.end method

.method private parseAuthority(II)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move v8, p1

    move v9, p1

    const/4 v0, 0x0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "]"

    invoke-direct {p0, p1, p2, v1, v2}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-le v1, p1, :cond_5

    invoke-static {}, Ljava/net/URI;->-get22()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get9()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v1

    if-ne v1, p2, :cond_4

    const/4 v11, 0x1

    :goto_0
    invoke-static {}, Ljava/net/URI;->-get19()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get6()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v1

    if-ne v1, p2, :cond_7

    const/4 v10, 0x1

    :goto_1
    if-eqz v10, :cond_0

    if-eqz v11, :cond_8

    :cond_0
    if-eqz v11, :cond_2

    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->parseServer(II)I

    move-result v9

    if-ge v9, p2, :cond_1

    const-string/jumbo v1, "end of authority"

    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    if-ge v9, p2, :cond_3

    if-eqz v10, :cond_a

    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_3
    return p2

    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/net/URI;->-get21()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get8()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v1

    if-ne v1, p2, :cond_6

    const/4 v11, 0x1

    goto :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    :cond_8
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    return p2

    :catch_0
    move-exception v12

    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/net/URI;->-set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/net/URI;->-set4(Ljava/net/URI;I)I

    iget-boolean v1, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    if-eqz v1, :cond_9

    throw v12

    :cond_9
    move-object v0, v12

    move v9, p1

    goto :goto_2

    :cond_a
    if-eqz v0, :cond_b

    throw v0

    :cond_b
    const-string/jumbo v1, "Illegal character in authority"

    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_3
.end method

.method private parseHierarchical(II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/16 v1, 0x2f

    move v2, p1

    invoke-direct {p0, p1, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, p1, 0x2

    const-string/jumbo v0, ""

    const-string/jumbo v1, "/?#"

    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-le v3, v2, :cond_2

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->parseAuthority(II)I

    move-result v2

    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, "?#"

    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Ljava/net/URI;->-get18()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get5()J

    move-result-wide v6

    const-string/jumbo v8, "path"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    iget-object v0, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URI;->-set3(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move v2, v3

    const/16 v0, 0x3f

    invoke-direct {p0, v3, p2, v0}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v2, v3, 0x1

    const-string/jumbo v0, ""

    const-string/jumbo v1, "#"

    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Ljava/net/URI;->-get24()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get11()J

    move-result-wide v6

    const-string/jumbo v8, "query"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    iget-object v0, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URI;->-set5(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move v2, v3

    :cond_1
    return v2

    :cond_2
    if-lt v3, p2, :cond_0

    const-string/jumbo v0, "authority"

    invoke-direct {p0, v0, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private parseHostname(II)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/16 v12, 0x2e

    move v2, p1

    const/4 v0, -0x1

    :cond_0
    if-ge v2, p2, :cond_5

    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "URI "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " has empty labels in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "the hostname. This is malformed and will not be accepted"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "in future Android releases."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_0
    if-lt v2, p2, :cond_0

    :cond_1
    if-ge v2, p2, :cond_2

    const/16 v1, 0x3a

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    const-string/jumbo v1, "hostname"

    invoke-direct {p0, v1, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    :cond_3
    if-le v0, p1, :cond_4

    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    invoke-static {}, Ljava/net/URI;->-get0()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {v1, v8, v9, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_4
    :goto_2
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    return v2

    :cond_5
    invoke-static {}, Ljava/net/URI;->-get13()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get1()J

    move-result-wide v6

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v4

    if-le v4, v2, :cond_1

    move v0, v2

    if-le v4, v2, :cond_7

    move v2, v4

    invoke-static {}, Ljava/net/URI;->-get13()J

    move-result-wide v6

    invoke-static {}, Ljava/net/URI;->-get14()J

    move-result-wide v8

    or-long/2addr v6, v8

    invoke-static {}, Ljava/net/URI;->-get23()J

    move-result-wide v8

    or-long/2addr v6, v8

    invoke-static {}, Ljava/net/URI;->-get1()J

    move-result-wide v8

    invoke-static {}, Ljava/net/URI;->-get2()J

    move-result-wide v10

    or-long/2addr v8, v10

    invoke-static {}, Ljava/net/URI;->-get10()J

    move-result-wide v10

    or-long/2addr v8, v10

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v3 .. v9}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v4

    if-le v4, v2, :cond_7

    add-int/lit8 v1, v4, -0x1

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_6

    const-string/jumbo v1, "Illegal character in hostname"

    add-int/lit8 v3, v4, -0x1

    invoke-direct {p0, v1, v3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    :cond_6
    move v2, v4

    :cond_7
    invoke-direct {p0, v2, p2, v12}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v4

    if-le v4, v2, :cond_1

    move v2, v4

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "Illegal character in hostname"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_1

    :cond_9
    const-string/jumbo v1, "Illegal character in hostname"

    invoke-direct {p0, v1, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private parseIPv4Address(II)I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-le v1, p1, :cond_0

    if-ge v1, p2, :cond_0

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    const/4 v1, -0x1

    :cond_0
    if-le v1, p1, :cond_1

    iget-object v3, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v1}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return v1

    :catch_0
    move-exception v0

    return v4

    :catch_1
    move-exception v2

    return v4
.end method

.method private parseIPv6Reference(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/16 v5, 0x10

    move v1, p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    move-result v2

    if-le v2, p1, :cond_6

    move v1, v2

    const-string/jumbo v3, "::"

    invoke-direct {p0, v2, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    add-int/lit8 v3, v2, 0x2

    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    move-result v1

    :cond_0
    :goto_0
    if-ge v1, p2, :cond_1

    const-string/jumbo v3, "Malformed IPv6 address"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    :cond_1
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-le v3, v5, :cond_2

    const-string/jumbo v3, "IPv6 address too long"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    :cond_2
    if-nez v0, :cond_3

    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-ge v3, v5, :cond_3

    const-string/jumbo v3, "IPv6 address too short"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    :cond_3
    if-eqz v0, :cond_4

    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-ne v3, v5, :cond_4

    const-string/jumbo v3, "Malformed IPv6 address"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    :cond_4
    return v1

    :cond_5
    const/16 v3, 0x3a

    invoke-direct {p0, v2, p2, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    const-string/jumbo v4, "IPv4 address"

    invoke-direct {p0, v3, p2, v4}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v1

    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "::"

    invoke-direct {p0, p1, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    add-int/lit8 v3, p1, 0x2

    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    move-result v1

    goto :goto_0
.end method

.method private parseServer(II)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move v2, p1

    const-string/jumbo v1, "/?#"

    const-string/jumbo v4, "@"

    invoke-direct {p0, p1, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lt v3, p1, :cond_0

    const/16 v1, 0x40

    invoke-direct {p0, v3, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/net/URI;->-get25()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get12()J

    move-result-wide v6

    const-string/jumbo v8, "user info"

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/net/URI;->-set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    :cond_0
    const/16 v1, 0x5b

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v2, 0x1

    const-string/jumbo v1, "/?#"

    const-string/jumbo v4, "]"

    invoke-direct {p0, v0, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-le v3, v0, :cond_5

    const/16 v1, 0x5d

    invoke-direct {p0, v3, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, ""

    const-string/jumbo v4, "%"

    invoke-direct {p0, v0, v3, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-le v9, v0, :cond_4

    invoke-direct {p0, v0, v9}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    add-int/lit8 v1, v9, 0x1

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "scope id expected"

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v9, 0x1

    invoke-static {}, Ljava/net/URI;->-get13()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get1()J

    move-result-wide v6

    const-string/jumbo v8, "scope id"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    :goto_0
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v4, v5}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    :goto_1
    const/16 v1, 0x3a

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v1, ""

    const-string/jumbo v4, "/"

    invoke-direct {p0, v2, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-le v3, v2, :cond_2

    invoke-static {}, Ljava/net/URI;->-get15()J

    move-result-wide v4

    const-string/jumbo v8, "port number"

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/net/URI;->-set4(Ljava/net/URI;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v2, v3

    :cond_2
    if-ge v2, p2, :cond_3

    const-string/jumbo v1, "port number"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    :cond_3
    return v2

    :cond_4
    invoke-direct {p0, v0, v3}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "closing bracket for IPv6 address"

    invoke-direct {p0, v1, v3}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    move v2, v0

    goto :goto_1

    :cond_6
    invoke-direct {p0, v2, p2}, Ljava/net/URI$Parser;->parseIPv4Address(II)I

    move-result v3

    if-gt v3, v2, :cond_7

    invoke-direct {p0, v2, p2}, Ljava/net/URI$Parser;->parseHostname(II)I

    move-result v3

    :cond_7
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v10

    const-string/jumbo v1, "Malformed port number"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private scan(IIC)I
    .locals 1

    if-ge p1, p2, :cond_0

    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_0

    add-int/lit8 v0, p1, 0x1

    return v0

    :cond_0
    return p1
.end method

.method private scan(IIJJ)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    invoke-static {v0, p3, p4, p5, p6}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1

    and-long/2addr v4, p3

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, p2, v0}, Ljava/net/URI$Parser;->scanEscape(IIC)I

    move-result v2

    if-le v2, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private scan(IILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private scanByte(II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move v0, p1

    invoke-static {}, Ljava/net/URI;->-get15()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v8

    if-gt v8, p1, :cond_0

    return v8

    :cond_0
    invoke-direct {p0, p1, v8}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    return p1

    :cond_1
    return v8
.end method

.method private scanEscape(IIC)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move v1, p1

    move v0, p3

    const/16 v2, 0x25

    if-ne p3, v2, :cond_2

    add-int/lit8 v2, p1, 0x3

    if-gt v2, p2, :cond_0

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v2

    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, p1, 0x2

    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v2

    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, p1, 0x3

    return v2

    :cond_0
    const-string/jumbo v2, "Malformed escape pair"

    invoke-direct {p0, v2, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    :cond_1
    return p1

    :cond_2
    const/16 v2, 0x80

    if-le p3, v2, :cond_1

    invoke-static {p3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    return v2
.end method

.method private scanHexPost(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move v0, p1

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    move-result v1

    if-le v1, p1, :cond_2

    move v0, v1

    const/16 v2, 0x3a

    invoke-direct {p0, v1, p2, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    const-string/jumbo v2, "hex digits or IPv4 address"

    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v2, "hex digits or IPv4 address"

    invoke-direct {p0, p1, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    goto :goto_0
.end method

.method private scanHexSeq(II)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/16 v10, 0x3a

    const/16 v9, 0x2e

    const/4 v8, -0x1

    move v2, p1

    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    if-gt v0, p1, :cond_0

    return v8

    :cond_0
    invoke-direct {p0, v0, p2, v9}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_1

    return v8

    :cond_1
    add-int/lit8 v1, p1, 0x4

    if-le v0, v1, :cond_2

    const-string/jumbo v1, "IPv6 hexadecimal digit sequence too long"

    invoke-direct {p0, v1, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    :cond_2
    iget v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    invoke-direct {p0, v2, p2, v10}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    :goto_1
    return v2

    :cond_4
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v1, p2, v10}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    if-gt v0, v2, :cond_5

    const-string/jumbo v1, "digits for an IPv6 address"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    :cond_5
    invoke-direct {p0, v0, p2, v9}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v2, 0x4

    if-le v0, v1, :cond_7

    const-string/jumbo v1, "IPv6 hexadecimal digit sequence too long"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    :cond_7
    iget v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    move v2, v0

    goto :goto_0
.end method

.method private scanIPv4Address(IIZ)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move v8, p1

    invoke-static {}, Ljava/net/URI;->-get15()J

    move-result-wide v2

    invoke-static {}, Ljava/net/URI;->-get16()J

    move-result-wide v4

    or-long/2addr v4, v2

    invoke-static {}, Ljava/net/URI;->-get3()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    or-long/2addr v6, v2

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    if-le v0, p1, :cond_0

    if-eqz p3, :cond_1

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v1, -0x1

    return v1

    :cond_1
    invoke-direct {p0, p1, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    if-gt v9, p1, :cond_3

    :cond_2
    :goto_0
    const-string/jumbo v1, "Malformed IPv4 address"

    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    const/4 v1, -0x1

    return v1

    :cond_3
    move v8, v9

    const/16 v1, 0x2e

    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v10

    if-gt v10, v9, :cond_4

    move v9, v10

    goto :goto_0

    :cond_4
    move v8, v10

    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    if-le v9, v10, :cond_2

    move v8, v9

    const/16 v1, 0x2e

    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v10

    if-gt v10, v9, :cond_5

    move v9, v10

    goto :goto_0

    :cond_5
    move v8, v10

    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    if-le v9, v10, :cond_2

    move v8, v9

    const/16 v1, 0x2e

    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v10

    if-gt v10, v9, :cond_6

    move v9, v10

    goto :goto_0

    :cond_6
    move v8, v10

    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    if-le v9, v10, :cond_2

    move v8, v9

    if-lt v9, v0, :cond_2

    return v9
.end method

.method private substring(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private takeIPv4Address(IILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-direct {p0, p3, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    :cond_0
    return v0
.end method


# virtual methods
.method parse(Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/net/URI$Parser;->requireServerAuthority:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    const-string/jumbo v2, "/?#"

    const-string/jumbo v3, ":"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15, v2, v3}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_5

    const/16 v2, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v16, :cond_0

    const-string/jumbo v2, "scheme name"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Ljava/net/URI;->-get0()J

    move-result-wide v6

    const-string/jumbo v8, "scheme name"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Ljava/net/URI$Parser;->checkChar(IJJLjava/lang/String;)V

    invoke-static {}, Ljava/net/URI;->-get20()J

    move-result-wide v6

    invoke-static {}, Ljava/net/URI;->-get7()J

    move-result-wide v8

    const-string/jumbo v10, "scheme name"

    const/4 v4, 0x1

    move-object/from16 v3, p0

    move/from16 v5, v16

    invoke-direct/range {v3 .. v10}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URI;->-set6(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v4, v16, 0x1

    move/from16 v17, v4

    const/16 v2, 0x2f

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    move-result v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URI;->-set7(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    const/16 v2, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v8, v4, 0x1

    invoke-static {}, Ljava/net/URI;->-get24()J

    move-result-wide v10

    invoke-static {}, Ljava/net/URI;->-get11()J

    move-result-wide v12

    const-string/jumbo v14, "fragment"

    move-object/from16 v7, p0

    move v9, v15

    invoke-direct/range {v7 .. v14}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URI;->-set1(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move v4, v15

    :cond_1
    if-ge v4, v15, :cond_2

    const-string/jumbo v2, "end of URI"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, ""

    const-string/jumbo v3, "#"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15, v2, v3}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gt v5, v4, :cond_4

    const-string/jumbo v2, "scheme-specific part"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    :cond_4
    invoke-static {}, Ljava/net/URI;->-get24()J

    move-result-wide v6

    invoke-static {}, Ljava/net/URI;->-get11()J

    move-result-wide v8

    const-string/jumbo v10, "opaque part"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_5
    const/16 v17, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    move-result v4

    goto :goto_0
.end method
