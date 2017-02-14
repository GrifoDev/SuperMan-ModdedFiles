.class final Ljava/lang/ProcessImpl;
.super Ljava/lang/Object;
.source "ProcessImpl.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/ProcessImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/lang/ProcessImpl;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static start([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Ljava/lang/ProcessBuilder$Redirect;Z)Ljava/lang/Process;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/ProcessBuilder$Redirect;",
            "Z)",
            "Ljava/lang/Process;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v1, Ljava/lang/ProcessImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v11, v1, [[B

    array-length v0, v11

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_1
    array-length v1, v11

    move/from16 v0, v19

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v19, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aput-object v1, v11, v19

    aget-object v1, v11, v19

    array-length v1, v1

    add-int v20, v20, v1

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_2
    move/from16 v0, v20

    new-array v3, v0, [B

    const/16 v19, 0x0

    const/4 v1, 0x0

    array-length v2, v11

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v10, v11, v1

    array-length v4, v10

    const/4 v6, 0x0

    move/from16 v0, v19

    invoke-static {v10, v6, v3, v0, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v4, v10

    add-int/lit8 v4, v4, 0x1

    add-int v19, v19, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    new-array v12, v1, [I

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Ljava/lang/ProcessEnvironment;->toEnvironmentBlock(Ljava/util/Map;[I)[B

    move-result-object v5

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    if-nez p3, :cond_7

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v4, -0x1

    :try_start_0
    filled-new-array {v1, v2, v4}, [I

    move-result-object v8

    :goto_3
    new-instance v1, Ljava/lang/UNIXProcess;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/ProcessImpl;->toCString(Ljava/lang/String;)[B

    move-result-object v2

    array-length v4, v11

    const/4 v6, 0x0

    aget v6, v12, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/ProcessImpl;->toCString(Ljava/lang/String;)[B

    move-result-object v7

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Ljava/lang/UNIXProcess;-><init>([B[BI[BI[B[IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_4

    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_4
    if-eqz v15, :cond_5

    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    return-object v1

    :cond_7
    const/4 v1, 0x3

    :try_start_3
    new-array v8, v1, [I

    const/4 v1, 0x0

    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_b

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v8, v2

    :goto_4
    const/4 v1, 0x1

    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_d

    const/4 v1, -0x1

    const/4 v2, 0x1

    aput v1, v8, v2

    :goto_5
    const/4 v1, 0x2

    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_f

    const/4 v1, -0x1

    const/4 v2, 0x2

    aput v1, v8, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    :goto_6
    if-eqz v13, :cond_8

    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :cond_8
    if-eqz v15, :cond_9

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_9
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_a
    throw v1

    :cond_b
    const/4 v1, 0x0

    :try_start_6
    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_c

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v8, v2

    goto :goto_4

    :cond_c
    new-instance v14, Ljava/io/FileInputStream;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v8, v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object v13, v14

    goto :goto_4

    :cond_d
    const/4 v1, 0x1

    :try_start_8
    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v1, v8, v2

    goto :goto_5

    :cond_e
    new-instance v16, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder$Redirect;->append()Z

    move-result v2

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v8, v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move-object/from16 v15, v16

    goto :goto_5

    :cond_f
    const/4 v1, 0x2

    :try_start_a
    aget-object v1, p3, v1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    if-ne v1, v2, :cond_10

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput v1, v8, v2

    goto/16 :goto_3

    :cond_10
    new-instance v18, Ljava/io/FileOutputStream;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p3, v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder$Redirect;->append()Z

    move-result v2

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v8, v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object/from16 v17, v18

    goto/16 :goto_3

    :catchall_1
    move-exception v1

    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_11
    throw v1

    :catchall_2
    move-exception v1

    if-eqz v15, :cond_12

    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_12
    if-eqz v17, :cond_13

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_13
    throw v1

    :catchall_3
    move-exception v1

    if-eqz v17, :cond_14

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_14
    throw v1

    :catchall_4
    move-exception v1

    if-eqz v17, :cond_15

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_15
    throw v1

    :catchall_5
    move-exception v1

    if-eqz v15, :cond_16

    :try_start_d
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :cond_16
    if-eqz v17, :cond_17

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_17
    throw v1

    :catchall_6
    move-exception v1

    if-eqz v17, :cond_18

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_18
    throw v1

    :catchall_7
    move-exception v1

    move-object v13, v14

    goto/16 :goto_6

    :catchall_8
    move-exception v1

    move-object/from16 v15, v16

    goto/16 :goto_6

    :catchall_9
    move-exception v1

    move-object/from16 v17, v18

    goto/16 :goto_6
.end method

.method private static toCString(Ljava/lang/String;)[B
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v3, v1, v2

    return-object v1
.end method
