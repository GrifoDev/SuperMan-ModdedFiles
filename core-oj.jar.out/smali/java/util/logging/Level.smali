.class public Ljava/util/logging/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Level$KnownLevel;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/util/logging/Level;

.field public static final CONFIG:Ljava/util/logging/Level;

.field public static final FINE:Ljava/util/logging/Level;

.field public static final FINER:Ljava/util/logging/Level;

.field public static final FINEST:Ljava/util/logging/Level;

.field public static final INFO:Ljava/util/logging/Level;

.field public static final OFF:Ljava/util/logging/Level;

.field public static final SEVERE:Ljava/util/logging/Level;

.field public static final WARNING:Ljava/util/logging/Level;

.field private static defaultBundle:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x71778eecae8cc96eL


# instance fields
.field private localizedLevelName:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private transient rb:Ljava/util/ResourceBundle;

.field private final resourceBundleName:Ljava/lang/String;

.field private final value:I


# direct methods
.method static synthetic -get0(Ljava/util/logging/Level;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/logging/Level;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Ljava/util/logging/Level;)I
    .locals 1

    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 70
    const-string/jumbo v0, "sun.util.logging.resources.logging"

    sput-object v0, Ljava/util/logging/Level;->defaultBundle:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "OFF"

    sget-object v2, Ljava/util/logging/Level;->defaultBundle:Ljava/lang/String;

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 107
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "SEVERE"

    sget-object v2, Ljava/util/logging/Level;->defaultBundle:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 117
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "WARNING"

    sget-object v2, Ljava/util/logging/Level;->defaultBundle:Ljava/lang/String;

    const/16 v3, 0x384

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 128
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "INFO"

    sget-object v2, Ljava/util/logging/Level;->defaultBundle:Ljava/lang/String;

    const/16 v3, 0x320

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 140
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "CONFIG"

    sget-object v2, Ljava/util/logging/Level;->defaultBundle:Ljava/lang/String;

    const/16 v3, 0x2bc

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 161
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "FINE"

    sget-object v2, Ljava/util/logging/Level;->defaultBundle:Ljava/lang/String;

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 169
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "FINER"

    sget-object v2, Ljava/util/logging/Level;->defaultBundle:Ljava/lang/String;

    const/16 v3, 0x190

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 175
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "FINEST"

    sget-object v2, Ljava/util/logging/Level;->defaultBundle:Ljava/lang/String;

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 181
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "ALL"

    sget-object v2, Ljava/util/logging/Level;->defaultBundle:Ljava/lang/String;

    const/high16 v3, -0x80000000

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    .line 69
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 214
    :cond_0
    iput-object p1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    .line 215
    iput p2, p0, Ljava/util/logging/Level;->value:I

    .line 216
    iput-object p3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    .line 217
    if-eqz p3, :cond_1

    .line 219
    :try_start_0
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 220
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_2

    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p3, v3, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    iput-object v3, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .end local p1    # "name":Ljava/lang/String;
    :goto_1
    iput-object p1, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    .line 230
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->add(Ljava/util/logging/Level;)V

    .line 210
    return-void

    .line 223
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v3

    iput-object v3, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 225
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 226
    .local v1, "ex":Ljava/util/MissingResourceException;
    iput-object v2, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    goto :goto_0

    .end local v1    # "ex":Ljava/util/MissingResourceException;
    :cond_3
    move-object p1, v2

    .line 229
    goto :goto_1
.end method

.method static findLevel(Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 296
    if-nez p0, :cond_0

    .line 297
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 303
    :cond_0
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 304
    .local v1, "level":Ljava/util/logging/Level$KnownLevel;
    if-eqz v1, :cond_1

    .line 305
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    return-object v4

    .line 312
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 313
    .local v3, "x":I
    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 314
    if-nez v1, :cond_2

    .line 316
    new-instance v2, Ljava/util/logging/Level;

    invoke-direct {v2, p0, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    .line 317
    .local v2, "levelObject":Ljava/util/logging/Level;
    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 319
    .end local v2    # "levelObject":Ljava/util/logging/Level;
    :cond_2
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 320
    .end local v3    # "x":I
    :catch_0
    move-exception v0

    .line 325
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByLocalizedLevelName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_3

    .line 327
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    return-object v4

    .line 330
    :cond_3
    return-object v4
.end method

.method public static declared-synchronized parse(Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-class v5, Ljava/util/logging/Level;

    monitor-enter v5

    .line 397
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 402
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 403
    .local v1, "level":Ljava/util/logging/Level$KnownLevel;
    if-eqz v1, :cond_0

    .line 404
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 411
    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 412
    .local v3, "x":I
    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 413
    if-nez v1, :cond_1

    .line 415
    new-instance v2, Ljava/util/logging/Level;

    invoke-direct {v2, p0, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    .line 416
    .local v2, "levelObject":Ljava/util/logging/Level;
    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 418
    .end local v2    # "levelObject":Ljava/util/logging/Level;
    :cond_1
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v4

    .line 419
    .end local v3    # "x":I
    :catch_0
    move-exception v0

    .line 427
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByLocalizedName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 428
    if-eqz v1, :cond_2

    .line 429
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v4

    .line 433
    :cond_2
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad level \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "level":Ljava/util/logging/Level$KnownLevel;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 357
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->matches(Ljava/util/logging/Level;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 358
    .local v1, "o":Ljava/util/logging/Level$KnownLevel;
    if-eqz v1, :cond_0

    .line 359
    iget-object v2, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    return-object v2

    .line 364
    :cond_0
    new-instance v0, Ljava/util/logging/Level;

    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iget v3, p0, Ljava/util/logging/Level;->value:I

    iget-object v4, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    .local v0, "level":Ljava/util/logging/Level;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "ox"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 442
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/logging/Level;

    move-object v2, v0

    .line 443
    .local v2, "lx":Ljava/util/logging/Level;
    iget v4, v2, Ljava/util/logging/Level;->value:I

    iget v5, p0, Ljava/util/logging/Level;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 444
    .end local v2    # "lx":Ljava/util/logging/Level;
    :catch_0
    move-exception v1

    .line 445
    .local v1, "ex":Ljava/lang/Exception;
    return v3
.end method

.method final getLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method final declared-synchronized getLocalizedLevelName()Ljava/lang/String;
    .locals 3

    .prologue
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 277
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :goto_0
    :try_start_2
    iget-object v1, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iput-object v1, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final intValue()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method
