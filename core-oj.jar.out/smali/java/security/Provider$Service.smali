.class public Ljava/security/Provider$Service;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field private static final CLASS0:[Ljava/lang/Class;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$UString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private className:Ljava/lang/String;

.field private volatile classRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hasKeyAttributes:Ljava/lang/Boolean;

.field private final provider:Ljava/security/Provider;

.field private registered:Z

.field private supportedClasses:[Ljava/lang/Class;

.field private supportedFormats:[Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/security/Provider$Service;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/security/Provider$Service;)Z
    .locals 1

    invoke-direct {p0}, Ljava/security/Provider$Service;->isValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/security/Provider$Service;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/security/Provider$Service;Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;->addAlias(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1083
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    .line 1058
    return-void
.end method

.method private constructor <init>(Ljava/security/Provider;)V
    .locals 1
    .param p1, "provider"    # Ljava/security/Provider;

    .prologue
    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1090
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1091
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1088
    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1126
    .local p5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1129
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1131
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1130
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1133
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1135
    iput-object p2, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 1136
    iput-object p3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 1137
    iput-object p4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1138
    if-nez p5, :cond_3

    .line 1139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1143
    :goto_0
    if-nez p6, :cond_4

    .line 1144
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1128
    :cond_2
    return-void

    .line 1141
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    goto :goto_0

    .line 1146
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1147
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1148
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v4, Ljava/security/Provider$UString;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;

    .prologue
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;)V

    return-void
.end method

.method private addAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1099
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1102
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    return-void
.end method

.method private final getAliases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1192
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    return-object v0
.end method

.method private getImplClass()Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1298
    :try_start_0
    iget-object v3, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;

    .line 1299
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class;>;"
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 1300
    :goto_0
    if-nez v1, :cond_0

    .line 1301
    iget-object v4, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v4}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1302
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_2

    .line 1303
    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1307
    .local v1, "clazz":Ljava/lang/Class;
    :goto_1
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;

    .line 1309
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_0
    return-object v1

    .line 1299
    :cond_1
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 1305
    .end local v1    # "clazz":Ljava/lang/Class;
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_2
    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 1310
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class;>;"
    :catch_0
    move-exception v2

    .line 1311
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    .line 1312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "class configured for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "(provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1313
    iget-object v6, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1312
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1313
    const-string/jumbo v6, ")"

    .line 1312
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1313
    const-string/jumbo v6, "cannot be found."

    .line 1312
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1311
    invoke-direct {v4, v5, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getKeyClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1445
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1446
    :catch_0
    move-exception v1

    .line 1450
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    iget-object v2, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v2}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1451
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 1452
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 1454
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v1

    .line 1457
    :cond_0
    return-object v3
.end method

.method private hasKeyAttributes()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 1412
    iget-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;

    .line 1413
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_5

    .line 1414
    monitor-enter p0

    .line 1416
    :try_start_0
    const-string/jumbo v7, "SupportedKeyFormats"

    invoke-virtual {p0, v7}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1417
    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1418
    const-string/jumbo v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    .line 1420
    :cond_0
    const-string/jumbo v7, "SupportedKeyClasses"

    invoke-virtual {p0, v7}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1421
    if-eqz v6, :cond_3

    .line 1422
    const-string/jumbo v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1424
    .local v4, "classNames":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v7, v4

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1425
    .local v2, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    array-length v9, v4

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v3, v4, v7

    .line 1426
    .local v3, "className":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/security/Provider$Service;->getKeyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1427
    .local v5, "clazz":Ljava/lang/Class;
    if-eqz v5, :cond_1

    .line 1428
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1425
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1431
    .end local v3    # "className":Ljava/lang/String;
    .end local v5    # "clazz":Ljava/lang/Class;
    :cond_2
    sget-object v7, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    iput-object v7, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    .line 1433
    .end local v2    # "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    .end local v4    # "classNames":[Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    if-nez v7, :cond_4

    .line 1434
    iget-object v7, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    if-eqz v7, :cond_6

    .line 1435
    .local v1, "bool":Z
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1436
    iput-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1439
    .end local v1    # "bool":Z
    .end local v6    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .restart local v6    # "s":Ljava/lang/String;
    :cond_6
    move v1, v8

    .line 1434
    goto :goto_1

    .line 1414
    .end local v6    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private isValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1095
    iget-object v1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private newInstanceGeneric(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1324
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v1

    .line 1325
    .local v1, "clazz":Ljava/lang/Class;
    if-nez p1, :cond_0

    .line 1326
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 1327
    .local v5, "o":Ljava/lang/Object;
    return-object v5

    .line 1329
    .end local v5    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1330
    .local v0, "argClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1333
    .local v3, "cons":[Ljava/lang/reflect/Constructor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v3

    if-ge v4, v7, :cond_3

    .line 1334
    aget-object v2, v3, v4

    .line 1335
    .local v2, "con":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1336
    .local v6, "paramTypes":[Ljava/lang/Class;
    array-length v7, v6

    if-eq v7, v9, :cond_2

    .line 1333
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1339
    :cond_2
    aget-object v7, v6, v8

    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1342
    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1343
    .restart local v5    # "o":Ljava/lang/Object;
    return-object v5

    .line 1345
    .end local v2    # "con":Ljava/lang/reflect/Constructor;
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "paramTypes":[Ljava/lang/Class;
    :cond_3
    new-instance v7, Ljava/security/NoSuchAlgorithmException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No constructor matching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1346
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1345
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1346
    const-string/jumbo v9, " found in class "

    .line 1345
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1346
    iget-object v9, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1345
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private supportsKeyClass(Ljava/security/Key;)Z
    .locals 7
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    const/4 v3, 0x0

    .line 1477
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1478
    return v3

    .line 1480
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1481
    .local v1, "keyClass":Ljava/lang/Class;
    iget-object v4, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 1482
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1483
    const/4 v2, 0x1

    return v2

    .line 1481
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1486
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_2
    return v3
.end method

.method private supportsKeyFormat(Ljava/security/Key;)Z
    .locals 7
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    const/4 v3, 0x0

    .line 1461
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1462
    return v3

    .line 1464
    :cond_0
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 1465
    .local v0, "format":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1466
    return v3

    .line 1468
    :cond_1
    iget-object v4, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v1, v4, v2

    .line 1469
    .local v1, "supportedFormat":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1470
    const/4 v2, 0x1

    return v2

    .line 1468
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1473
    .end local v1    # "supportedFormat":Ljava/lang/String;
    :cond_3
    return v3
.end method


# virtual methods
.method addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1106
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1109
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/security/Provider$UString;

    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    return-void
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1207
    if-nez p1, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1210
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/security/Provider$UString;

    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object v0
.end method

.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 1241
    iget-boolean v8, p0, Ljava/security/Provider$Service;->registered:Z

    if-nez v8, :cond_1

    .line 1242
    iget-object v8, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    iget-object v9, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    iget-object v10, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v8

    if-eq v8, p0, :cond_0

    .line 1243
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    .line 1244
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Service not registered with Provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1245
    iget-object v10, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v10}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1244
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1245
    const-string/jumbo v10, ": "

    .line 1244
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1243
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1247
    :cond_0
    iput-boolean v11, p0, Ljava/security/Provider$Service;->registered:Z

    .line 1250
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/security/Provider;->-get0()Ljava/util/Map;

    move-result-object v8

    iget-object v9, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$EngineDescription;

    .line 1251
    .local v1, "cap":Ljava/security/Provider$EngineDescription;
    if-nez v1, :cond_2

    .line 1255
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;->newInstanceGeneric(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 1257
    :cond_2
    iget-object v8, v1, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 1258
    if-eqz p1, :cond_3

    .line 1259
    new-instance v8, Ljava/security/InvalidParameterException;

    .line 1260
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "constructorParameter not used with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1261
    const-string/jumbo v10, " engines"

    .line 1260
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1259
    invoke-direct {v8, v9}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1280
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    :catch_0
    move-exception v6

    .line 1281
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    throw v6

    .line 1263
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "cap":Ljava/security/Provider$EngineDescription;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v2

    .line 1264
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 1266
    .end local v2    # "clazz":Ljava/lang/Class;
    :cond_4
    invoke-virtual {v1}, Ljava/security/Provider$EngineDescription;->getConstructorParameterClass()Ljava/lang/Class;

    move-result-object v7

    .line 1267
    .local v7, "paramClass":Ljava/lang/Class;
    if-eqz p1, :cond_5

    .line 1268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1269
    .local v0, "argClass":Ljava/lang/Class;
    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1270
    new-instance v8, Ljava/security/InvalidParameterException;

    .line 1271
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "constructorParameter must be instanceof "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1272
    iget-object v10, v1, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    const/16 v11, 0x24

    const/16 v12, 0x2e

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 1271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1273
    const-string/jumbo v10, " for engine type "

    .line 1271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1273
    iget-object v10, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 1271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1270
    invoke-direct {v8, v9}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1282
    .end local v0    # "argClass":Ljava/lang/Class;
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .end local v7    # "paramClass":Ljava/lang/Class;
    :catch_1
    move-exception v5

    .line 1283
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    .line 1284
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error constructing implementation (algorithm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1285
    iget-object v10, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1285
    const-string/jumbo v10, ", provider: "

    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1285
    iget-object v10, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v10}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1286
    const-string/jumbo v10, ", class: "

    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1286
    iget-object v10, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1286
    const-string/jumbo v10, ")"

    .line 1284
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1286
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    .line 1283
    invoke-direct {v8, v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1276
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .restart local v7    # "paramClass":Ljava/lang/Class;
    :cond_5
    :try_start_2
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v2

    .line 1277
    .restart local v2    # "clazz":Ljava/lang/Class;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1278
    .local v3, "cons":Ljava/lang/reflect/Constructor;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    return-object v8

    .line 1287
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "cons":Ljava/lang/reflect/Constructor;
    .end local v7    # "paramClass":Ljava/lang/Class;
    :catch_2
    move-exception v4

    .line 1288
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    .line 1289
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error constructing implementation (algorithm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1290
    iget-object v10, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1290
    const-string/jumbo v10, ", provider: "

    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1290
    iget-object v10, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v10}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1291
    const-string/jumbo v10, ", class: "

    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1291
    iget-object v10, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1291
    const-string/jumbo v10, ")"

    .line 1289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1288
    invoke-direct {v8, v9, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public supportsParameter(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "parameter"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1377
    invoke-static {}, Ljava/security/Provider;->-get0()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$EngineDescription;

    .line 1378
    .local v0, "cap":Ljava/security/Provider$EngineDescription;
    if-nez v0, :cond_0

    .line 1380
    return v4

    .line 1382
    :cond_0
    iget-boolean v2, v0, Ljava/security/Provider$EngineDescription;->supportsParameter:Z

    if-nez v2, :cond_1

    .line 1383
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supportsParameter() not used with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1384
    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 1383
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1384
    const-string/jumbo v4, " engines"

    .line 1383
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1387
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Ljava/security/Key;

    if-nez v2, :cond_2

    .line 1388
    new-instance v2, Ljava/security/InvalidParameterException;

    .line 1389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parameter must be instanceof Key for engine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1388
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1391
    :cond_2
    invoke-direct {p0}, Ljava/security/Provider$Service;->hasKeyAttributes()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1392
    return v4

    .line 1394
    :cond_3
    if-nez p1, :cond_4

    .line 1395
    return v5

    :cond_4
    move-object v1, p1

    .line 1397
    check-cast v1, Ljava/security/Key;

    .line 1398
    .local v1, "key":Ljava/security/Key;
    invoke-direct {p0, v1}, Ljava/security/Provider$Service;->supportsKeyFormat(Ljava/security/Key;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1399
    return v4

    .line 1401
    :cond_5
    invoke-direct {p0, v1}, Ljava/security/Provider$Service;->supportsKeyClass(Ljava/security/Key;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1402
    return v4

    .line 1404
    :cond_6
    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1495
    iget-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1496
    const-string/jumbo v0, ""

    .line 1497
    .local v0, "aString":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1498
    const-string/jumbo v1, ""

    .line 1499
    .local v1, "attrs":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1500
    const-string/jumbo v3, " -> "

    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1500
    iget-object v3, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1500
    const-string/jumbo v3, "\r\n"

    .line 1499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1496
    .end local v0    # "aString":Ljava/lang/String;
    .end local v1    # "attrs":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\r\n  aliases: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "aString":Ljava/lang/String;
    goto :goto_0

    .line 1498
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\r\n  attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "attrs":Ljava/lang/String;
    goto :goto_1
.end method
