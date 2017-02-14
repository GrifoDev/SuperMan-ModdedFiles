.class final Lmf/org/apache/html/dom/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xerces.properties"

.field private static fLastModified:J

.field private static fXercesProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lmf/org/apache/html/dom/ObjectFactory;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lmf/org/apache/html/dom/ObjectFactory;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/html/dom/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    const-wide/16 v0, -0x1

    sput-wide v0, Lmf/org/apache/html/dom/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmf/org/apache/html/dom/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    sget-boolean v0, Lmf/org/apache/html/dom/ObjectFactory;->DEBUG:Z

    if-nez v0, :cond_1

    :goto_0
    invoke-static {}, Lmf/org/apache/html/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    :try_start_0
    invoke-static {p0}, Lmf/org/apache/html/dom/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    if-eqz p1, :cond_4

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmf/org/apache/html/dom/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    :try_start_2
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v2

    if-nez v0, :cond_13

    move-object v0, v2

    :goto_2
    if-nez v0, :cond_14

    invoke-static {p0}, Lmf/org/apache/html/dom/ObjectFactory;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    if-eqz p2, :cond_17

    sget-boolean v0, Lmf/org/apache/html/dom/ObjectFactory;->DEBUG:Z

    if-nez v0, :cond_18

    :goto_3
    invoke-static {p2, v6, v4}, Lmf/org/apache/html/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "debug is on"

    invoke-static {v0}, Lmf/org/apache/html/dom/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-boolean v2, Lmf/org/apache/html/dom/ObjectFactory;->DEBUG:Z

    if-nez v2, :cond_3

    :goto_4
    const/4 v2, 0x1

    invoke-static {v0, v6, v2}, Lmf/org/apache/html/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "found system property, value="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/org/apache/html/dom/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    :try_start_4
    const-string/jumbo v0, "java.home"

    invoke-static {v0}, Lmf/org/apache/html/dom/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "xerces.properties"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-static {v0}, Lmf/org/apache/html/dom/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_c

    move-result v2

    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_5
    const-class v7, Lmf/org/apache/html/dom/ObjectFactory;

    monitor-enter v7

    :try_start_6
    sget-wide v8, Lmf/org/apache/html/dom/ObjectFactory;->fLastModified:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gez v5, :cond_8

    move v5, v4

    :goto_6
    if-nez v5, :cond_c

    if-nez v0, :cond_9

    :cond_5
    if-eqz v0, :cond_b

    :cond_6
    :goto_7
    if-nez v3, :cond_d

    move-object v0, v1

    :goto_8
    if-nez v0, :cond_f

    :cond_7
    :goto_9
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sget-object v0, Lmf/org/apache/html/dom/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    if-nez v0, :cond_10

    move-object v0, v1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_a
    sput-wide v8, Lmf/org/apache/html/dom/ObjectFactory;->fLastModified:J

    sput-object v1, Lmf/org/apache/html/dom/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    move-object v2, v0

    move v0, v3

    goto :goto_5

    :cond_8
    move v5, v3

    goto :goto_6

    :cond_9
    :try_start_8
    sget-wide v8, Lmf/org/apache/html/dom/ObjectFactory;->fLastModified:J

    invoke-static {v2}, Lmf/org/apache/html/dom/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v10

    sput-wide v10, Lmf/org/apache/html/dom/ObjectFactory;->fLastModified:J

    cmp-long v5, v8, v10

    if-ltz v5, :cond_a

    move v5, v4

    :goto_b
    if-nez v5, :cond_5

    move v3, v4

    goto :goto_7

    :cond_a
    move v5, v3

    goto :goto_b

    :cond_b
    const-wide/16 v8, -0x1

    sput-wide v8, Lmf/org/apache/html/dom/ObjectFactory;->fLastModified:J

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/html/dom/ObjectFactory;->fXercesProperties:Ljava/util/Properties;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_c
    const/4 v2, 0x0

    :try_start_9
    sput-object v2, Lmf/org/apache/html/dom/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    const-wide/16 v2, -0x1

    sput-wide v2, Lmf/org/apache/html/dom/ObjectFactory;->fLastModified:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v0, :cond_7

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_9

    :cond_c
    if-eqz v0, :cond_6

    :try_start_b
    invoke-static {v2}, Lmf/org/apache/html/dom/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v8

    sput-wide v8, Lmf/org/apache/html/dom/ObjectFactory;->fLastModified:J

    move v3, v4

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lmf/org/apache/html/dom/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    invoke-static {v2}, Lmf/org/apache/html/dom/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v0

    :try_start_c
    sget-object v2, Lmf/org/apache/html/dom/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_8

    :catch_4
    move-exception v2

    goto :goto_c

    :catchall_0
    move-exception v0

    :goto_d
    if-nez v1, :cond_e

    :goto_e
    :try_start_d
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    :cond_e
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_e

    :catch_5
    move-exception v1

    goto :goto_e

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_9

    :cond_10
    sget-object v0, Lmf/org/apache/html/dom/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move-object v0, v1

    :goto_f
    if-nez v0, :cond_11

    move-object v0, v1

    goto/16 :goto_2

    :cond_11
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    move-object v0, v1

    goto/16 :goto_2

    :catch_8
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    :goto_10
    if-nez v1, :cond_12

    :goto_11
    throw v0

    :cond_12
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_11

    :catch_9
    move-exception v1

    goto :goto_11

    :cond_13
    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    :goto_12
    move-object v0, v2

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto :goto_12

    :cond_14
    sget-boolean v1, Lmf/org/apache/html/dom/ObjectFactory;->DEBUG:Z

    if-nez v1, :cond_15

    :goto_13
    invoke-static {v0, v6, v4}, Lmf/org/apache/html/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "found in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/org/apache/html/dom/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_13

    :cond_16
    return-object v0

    :cond_17
    new-instance v0, Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Provider for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cannot be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "using fallback, value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/html/dom/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_10

    :catch_b
    move-exception v2

    goto/16 :goto_f

    :catchall_4
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_d

    :catch_c
    move-exception v2

    goto/16 :goto_a
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lmf/org/apache/html/dom/ObjectFactory;->DEBUG:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "XERCES: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;
        }
    .end annotation

    invoke-static {}, Lmf/org/apache/html/dom/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {}, Lmf/org/apache/html/dom/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v0, v1

    :goto_0
    if-eq v2, v0, :cond_0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lmf/org/apache/html/dom/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v0, Lmf/org/apache/html/dom/ObjectFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v0, v1

    :goto_1
    if-eq v2, v0, :cond_1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lmf/org/apache/html/dom/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    return-object v2

    :cond_3
    return-object v2
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const/16 v7, 0x50

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "META-INF/services/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmf/org/apache/html/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, v3}, Lmf/org/apache/html/dom/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_3

    sget-boolean v0, Lmf/org/apache/html/dom/ObjectFactory;->DEBUG:Z

    if-nez v0, :cond_4

    :goto_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v4, 0x50

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    if-nez v2, :cond_5

    :cond_0
    return-object v5

    :cond_1
    const-class v1, Lmf/org/apache/html/dom/ObjectFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v1, v3}, Lmf/org/apache/html/dom/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_3
    return-object v5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "found jar resource="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " using ClassLoader: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/html/dom/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    return-object v5

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    throw v1

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_3

    :cond_5
    const-string/jumbo v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmf/org/apache/html/dom/ObjectFactory;->DEBUG:Z

    if-nez v0, :cond_6

    :goto_6
    invoke-static {v2, v1, v6}, Lmf/org/apache/html/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "found in resource, value="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/html/dom/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_6
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v0, p0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    if-nez p2, :cond_3

    throw v0

    :cond_3
    const-class v1, Lmf/org/apache/html/dom/ObjectFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_4

    if-ne p1, v1, :cond_5

    throw v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method private static isDebugEnabled()Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "xerces.debug"

    invoke-static {v0}, Lmf/org/apache/html/dom/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    const-string/jumbo v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    return v2
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lmf/org/apache/html/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    sget-boolean v2, Lmf/org/apache/html/dom/ObjectFactory;->DEBUG:Z

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "created new instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " using ClassLoader: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/html/dom/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Provider "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Provider "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " could not be instantiated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmf/org/apache/html/dom/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
