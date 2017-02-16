.class public Ljava/util/logging/FileHandler;
.super Ljava/util/logging/StreamHandler;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/FileHandler$InitializationErrorManager;,
        Ljava/util/logging/FileHandler$MeteredStream;
    }
.end annotation


# static fields
.field private static final MAX_LOCKS:I = 0x64

.field private static locks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private append:Z

.field private count:I

.field private files:[Ljava/io/File;

.field private limit:I

.field private lockFileName:Ljava/lang/String;

.field private lockStream:Ljava/io/FileOutputStream;

.field private meter:Ljava/util/logging/FileHandler$MeteredStream;

.field private pattern:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/util/logging/FileHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/FileHandler;->rotate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 224
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    .line 225
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    .line 226
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 246
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    .line 251
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    .line 252
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 254
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    .line 255
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 314
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 316
    if-ltz p2, :cond_0

    if-ge p3, v1, :cond_1

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 316
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 319
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    .line 320
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    .line 321
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 322
    iput p2, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 323
    iput p3, p0, Ljava/util/logging/FileHandler;->count:I

    .line 324
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 353
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 355
    if-ltz p2, :cond_0

    if-ge p3, v1, :cond_1

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 355
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 358
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    .line 359
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    .line 360
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 361
    iput p2, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 362
    iput p3, p0, Ljava/util/logging/FileHandler;->count:I

    .line 363
    iput-boolean p4, p0, Ljava/util/logging/FileHandler;->append:Z

    .line 364
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    .line 354
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 278
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 282
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    .line 283
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    .line 284
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 286
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    .line 287
    iput-boolean p2, p0, Ljava/util/logging/FileHandler;->append:Z

    .line 288
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    .line 278
    return-void
.end method

.method private configure()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 184
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v3

    .line 186
    .local v3, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "cname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".pattern"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%h/java%u.log"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".limit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 190
    iget v4, p0, Ljava/util/logging/FileHandler;->limit:I

    if-gez v4, :cond_0

    .line 191
    iput v6, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 193
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Ljava/util/logging/FileHandler;->count:I

    .line 194
    iget v4, p0, Ljava/util/logging/FileHandler;->count:I

    if-gtz v4, :cond_1

    .line 195
    iput v8, p0, Ljava/util/logging/FileHandler;->count:I

    .line 197
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".append"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Ljava/util/logging/FileHandler;->append:Z

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".level"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".filter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".formatter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/logging/XMLFormatter;

    invoke-direct {v5}, Ljava/util/logging/XMLFormatter;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 202
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".encoding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 205
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 206
    :catch_1
    move-exception v2

    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private generate(Ljava/lang/String;II)Ljava/io/File;
    .locals 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "generation"    # I
    .param p3, "unique"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x25

    .line 465
    const/4 v2, 0x0

    .line 466
    .local v2, "file":Ljava/io/File;
    const-string/jumbo v8, ""

    .line 467
    .local v8, "word":Ljava/lang/String;
    const/4 v4, 0x0

    .line 468
    .local v4, "ix":I
    const/4 v5, 0x0

    .line 469
    .local v5, "sawg":Z
    const/4 v6, 0x0

    .line 470
    .end local v2    # "file":Ljava/io/File;
    .local v6, "sawu":Z
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_9

    .line 471
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 472
    .local v0, "ch":C
    add-int/lit8 v4, v4, 0x1

    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, "ch2":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 475
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 477
    .end local v1    # "ch2":C
    :cond_0
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_2

    .line 478
    if-nez v2, :cond_1

    .line 479
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v2, "file":Ljava/io/File;
    :goto_1
    const-string/jumbo v8, ""

    goto :goto_0

    .line 481
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "file":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_1

    .line 485
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    if-ne v0, v11, :cond_8

    .line 486
    const/16 v9, 0x74

    if-ne v1, v9, :cond_4

    .line 487
    const-string/jumbo v9, "java.io.tmpdir"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 488
    .local v7, "tmpDir":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 489
    const-string/jumbo v9, "user.home"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 491
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    .line 493
    const-string/jumbo v8, ""

    goto :goto_0

    .line 495
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "tmpDir":Ljava/lang/String;
    :cond_4
    const/16 v9, 0x68

    if-ne v1, v9, :cond_5

    .line 496
    new-instance v2, Ljava/io/File;

    const-string/jumbo v9, "user.home"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 504
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    .line 505
    const-string/jumbo v8, ""

    goto :goto_0

    .line 507
    .end local v2    # "file":Ljava/io/File;
    :cond_5
    const/16 v9, 0x67

    if-ne v1, v9, :cond_6

    .line 508
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 509
    const/4 v5, 0x1

    .line 510
    add-int/lit8 v4, v4, 0x1

    .line 511
    goto :goto_0

    .line 512
    :cond_6
    const/16 v9, 0x75

    if-ne v1, v9, :cond_7

    .line 513
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 514
    const/4 v6, 0x1

    .line 515
    add-int/lit8 v4, v4, 0x1

    .line 516
    goto/16 :goto_0

    .line 517
    :cond_7
    if-ne v1, v11, :cond_8

    .line 518
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 519
    add-int/lit8 v4, v4, 0x1

    .line 520
    goto/16 :goto_0

    .line 523
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 525
    .end local v0    # "ch":C
    :cond_9
    iget v9, p0, Ljava/util/logging/FileHandler;->count:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_a

    if-eqz v5, :cond_d

    .line 528
    :cond_a
    :goto_2
    if-lez p3, :cond_b

    if-eqz v6, :cond_e

    .line 531
    :cond_b
    :goto_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_c

    .line 532
    if-nez v2, :cond_f

    .line 533
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 538
    :cond_c
    :goto_4
    return-object v2

    .line 526
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 529
    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 535
    :cond_f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v3    # "file":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_4
.end method

.method private open(Ljava/io/File;Z)V
    .locals 6
    .param p1, "fname"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "len":I
    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    .line 174
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 175
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 176
    .local v0, "bout":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/util/logging/FileHandler$MeteredStream;

    invoke-direct {v3, p0, v0, v2}, Ljava/util/logging/FileHandler$MeteredStream;-><init>(Ljava/util/logging/FileHandler;Ljava/io/OutputStream;I)V

    iput-object v3, p0, Ljava/util/logging/FileHandler;->meter:Ljava/util/logging/FileHandler$MeteredStream;

    .line 177
    iget-object v3, p0, Ljava/util/logging/FileHandler;->meter:Ljava/util/logging/FileHandler$MeteredStream;

    invoke-virtual {p0, v3}, Ljava/util/logging/FileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 169
    return-void
.end method

.method private openFiles()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 370
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v6

    .line 371
    .local v6, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {v6}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 372
    iget v8, p0, Ljava/util/logging/FileHandler;->count:I

    if-ge v8, v13, :cond_0

    .line 373
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "file count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Ljava/util/logging/FileHandler;->count:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 375
    :cond_0
    iget v8, p0, Ljava/util/logging/FileHandler;->limit:I

    if-gez v8, :cond_1

    .line 376
    iput v12, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 381
    :cond_1
    new-instance v1, Ljava/util/logging/FileHandler$InitializationErrorManager;

    invoke-direct {v1, v9}, Ljava/util/logging/FileHandler$InitializationErrorManager;-><init>(Ljava/util/logging/FileHandler$InitializationErrorManager;)V

    .line 382
    .local v1, "em":Ljava/util/logging/FileHandler$InitializationErrorManager;
    invoke-virtual {p0, v1}, Ljava/util/logging/FileHandler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 386
    const/4 v7, -0x1

    .line 388
    .local v7, "unique":I
    :goto_0
    add-int/lit8 v7, v7, 0x1

    .line 389
    const/16 v8, 0x64

    if-le v7, v8, :cond_2

    .line 390
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t get lock for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 393
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-direct {p0, v9, v12, v7}, Ljava/util/logging/FileHandler;->generate(Ljava/lang/String;II)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".lck"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    .line 398
    sget-object v9, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    monitor-enter v9

    .line 399
    :try_start_0
    sget-object v8, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    iget-object v10, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_3

    :goto_1
    monitor-exit v9

    goto :goto_0

    .line 406
    :cond_3
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v10, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-object v8, p0, Ljava/util/logging/FileHandler;->lockStream:Ljava/io/FileOutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 407
    :try_start_5
    iget-object v8, p0, Ljava/util/logging/FileHandler;->lockStream:Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 415
    .local v3, "fc":Ljava/nio/channels/FileChannel;
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_4

    const/4 v0, 0x1

    .line 424
    .local v0, "available":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 426
    :try_start_8
    sget-object v8, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    iget-object v10, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    iget-object v11, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v9

    .line 435
    iget v8, p0, Ljava/util/logging/FileHandler;->count:I

    new-array v8, v8, [Ljava/io/File;

    iput-object v8, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    .line 436
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget v8, p0, Ljava/util/logging/FileHandler;->count:I

    if-ge v4, v8, :cond_6

    .line 437
    iget-object v8, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    iget-object v9, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-direct {p0, v9, v4, v7}, Ljava/util/logging/FileHandler;->generate(Ljava/lang/String;II)Ljava/io/File;

    move-result-object v9

    aput-object v9, v8, v4

    .line 436
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 415
    .end local v0    # "available":Z
    .end local v4    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "available":Z
    goto :goto_2

    .line 417
    .end local v0    # "available":Z
    :catch_0
    move-exception v5

    .line 422
    .local v5, "ix":Ljava/io/IOException;
    const/4 v0, 0x1

    .restart local v0    # "available":Z
    goto :goto_2

    .line 431
    .end local v5    # "ix":Ljava/io/IOException;
    :cond_5
    :try_start_9
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 398
    .end local v0    # "available":Z
    .end local v3    # "fc":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 441
    .restart local v0    # "available":Z
    .restart local v3    # "fc":Ljava/nio/channels/FileChannel;
    .restart local v4    # "i":I
    :cond_6
    iget-boolean v8, p0, Ljava/util/logging/FileHandler;->append:Z

    if-eqz v8, :cond_7

    .line 442
    iget-object v8, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v8, v8, v12

    invoke-direct {p0, v8, v13}, Ljava/util/logging/FileHandler;->open(Ljava/io/File;Z)V

    .line 448
    :goto_4
    iget-object v2, v1, Ljava/util/logging/FileHandler$InitializationErrorManager;->lastException:Ljava/lang/Exception;

    .line 449
    .local v2, "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_a

    .line 450
    instance-of v8, v2, Ljava/io/IOException;

    if-eqz v8, :cond_8

    .line 451
    check-cast v2, Ljava/io/IOException;

    .end local v2    # "ex":Ljava/lang/Exception;
    throw v2

    .line 444
    :cond_7
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->rotate()V

    goto :goto_4

    .line 452
    .restart local v2    # "ex":Ljava/lang/Exception;
    :cond_8
    instance-of v8, v2, Ljava/lang/SecurityException;

    if-eqz v8, :cond_9

    .line 453
    check-cast v2, Ljava/lang/SecurityException;

    .end local v2    # "ex":Ljava/lang/Exception;
    throw v2

    .line 455
    .restart local v2    # "ex":Ljava/lang/Exception;
    :cond_9
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 460
    :cond_a
    new-instance v8, Ljava/util/logging/ErrorManager;

    invoke-direct {v8}, Ljava/util/logging/ErrorManager;-><init>()V

    invoke-virtual {p0, v8}, Ljava/util/logging/FileHandler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 369
    return-void

    .line 408
    .end local v0    # "available":Z
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "fc":Ljava/nio/channels/FileChannel;
    .end local v4    # "i":I
    :catch_1
    move-exception v5

    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v5    # "ix":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v5    # "ix":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v5    # "ix":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v5    # "ix":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v5    # "ix":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1
.end method

.method private declared-synchronized rotate()V
    .locals 7

    .prologue
    monitor-enter p0

    .line 543
    :try_start_0
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->getLevel()Ljava/util/logging/Level;

    move-result-object v4

    .line 544
    .local v4, "oldLevel":Ljava/util/logging/Level;
    sget-object v5, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {p0, v5}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 546
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 547
    iget v5, p0, Ljava/util/logging/FileHandler;->count:I

    add-int/lit8 v2, v5, -0x2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 548
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v0, v5, v2

    .line 549
    .local v0, "f1":Ljava/io/File;
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    add-int/lit8 v6, v2, 0x1

    aget-object v1, v5, v6

    .line 550
    .local v1, "f2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 551
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 552
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 554
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 558
    .end local v0    # "f1":Ljava/io/File;
    .end local v1    # "f2":Ljava/io/File;
    :cond_2
    :try_start_1
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Ljava/util/logging/FileHandler;->open(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    :goto_1
    :try_start_2
    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 542
    return-void

    .line 559
    :catch_0
    move-exception v3

    .line 562
    .local v3, "ix":Ljava/io/IOException;
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_3
    invoke-virtual {p0, v5, v3, v6}, Ljava/util/logging/FileHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "ix":Ljava/io/IOException;
    .end local v4    # "oldLevel":Ljava/util/logging/Level;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 602
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 604
    iget-object v1, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    monitor-exit p0

    .line 605
    return-void

    .line 610
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/logging/FileHandler;->lockStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 614
    :goto_0
    :try_start_2
    sget-object v2, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 615
    :try_start_3
    sget-object v1, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    iget-object v3, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2

    .line 617
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 618
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    .line 619
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/FileHandler;->lockStream:Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 601
    return-void

    .line 614
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 611
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    monitor-enter p0

    .line 575
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/FileHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 576
    return-void

    .line 578
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 579
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->flush()V

    .line 580
    iget v0, p0, Ljava/util/logging/FileHandler;->limit:I

    if-lez v0, :cond_1

    iget-object v0, p0, Ljava/util/logging/FileHandler;->meter:Ljava/util/logging/FileHandler$MeteredStream;

    iget v0, v0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    iget v1, p0, Ljava/util/logging/FileHandler;->limit:I

    if-lt v0, v1, :cond_1

    .line 586
    new-instance v0, Ljava/util/logging/FileHandler$1;

    invoke-direct {v0, p0}, Ljava/util/logging/FileHandler$1;-><init>(Ljava/util/logging/FileHandler;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 574
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
