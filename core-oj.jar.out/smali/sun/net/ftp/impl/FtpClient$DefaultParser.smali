.class Lsun/net/ftp/impl/FtpClient$DefaultParser;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Lsun/net/ftp/FtpDirParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/impl/FtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultParser"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method private constructor <init>(Lsun/net/ftp/impl/FtpClient;)V
    .locals 0

    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$DefaultParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$DefaultParser;)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient$DefaultParser;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    return-void
.end method


# virtual methods
.method public parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .locals 24

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    const/4 v13, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get3()[Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_7

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get3()[Ljava/util/regex/Pattern;

    move-result-object v21

    aget-object v21, v21, v12

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x0

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x2

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x4

    aget v21, v21, v22

    if-lez v21, :cond_6

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v22

    aget-object v22, v22, v12

    const/16 v23, 0x4

    aget v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x3

    aget v21, v21, v22

    if-lez v21, :cond_1

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x3

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    :cond_1
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x5

    aget v21, v21, v22

    if-lez v21, :cond_2

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x5

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v21, "d"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    :cond_2
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x6

    aget v21, v21, v22

    if-lez v21, :cond_3

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x6

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    :cond_3
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x7

    aget v21, v21, v22

    if-lez v21, :cond_4

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x7

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    :cond_4
    const-string/jumbo v21, "<DIR>"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    const/4 v4, 0x1

    const/4 v9, 0x0

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    move-result-object v21

    aget-object v21, v21, v12

    const/16 v22, 0x3

    aget v21, v21, v22

    if-lez v21, :cond_0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_7
    if-eqz v8, :cond_f

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/ftp/impl/FtpClient$DefaultParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsun/net/ftp/impl/FtpClient;->-get0(Lsun/net/ftp/impl/FtpClient;)Ljava/text/DateFormat;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_8

    if-eqz v18, :cond_8

    const-string/jumbo v21, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v21, v2, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0xc

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    :cond_8
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get1()Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    :cond_9
    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v22, 0x3

    const/16 v23, 0x3

    filled-new-array/range {v22 .. v23}, [I

    move-result-object v22

    invoke-static/range {v21 .. v22}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[Z

    const/4 v11, 0x0

    :goto_3
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v11, v0, :cond_c

    const/4 v12, 0x0

    :goto_4
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v12, v0, :cond_b

    aget-object v22, v16, v11

    mul-int/lit8 v21, v11, 0x3

    add-int v21, v21, v12

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v23, 0x2d

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    const/16 v21, 0x1

    :goto_5
    aput-boolean v21, v22, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :catch_0
    move-exception v5

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v21, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_c
    new-instance v7, Lsun/net/ftp/FtpDirEntry;

    invoke-direct {v7, v8}, Lsun/net/ftp/FtpDirEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lsun/net/ftp/FtpDirEntry;->setUser(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lsun/net/ftp/FtpDirEntry;->setGroup(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Lsun/net/ftp/FtpDirEntry;->setSize(J)Lsun/net/ftp/FtpDirEntry;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lsun/net/ftp/FtpDirEntry;->setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lsun/net/ftp/FtpDirEntry;->setPermissions([[Z)Lsun/net/ftp/FtpDirEntry;

    if-eqz v4, :cond_d

    sget-object v21, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    :goto_6
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    return-object v7

    :cond_d
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x6c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    sget-object v21, Lsun/net/ftp/FtpDirEntry$Type;->LINK:Lsun/net/ftp/FtpDirEntry$Type;

    goto :goto_6

    :cond_e
    sget-object v21, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    goto :goto_6

    :cond_f
    const/16 v21, 0x0

    return-object v21
.end method
