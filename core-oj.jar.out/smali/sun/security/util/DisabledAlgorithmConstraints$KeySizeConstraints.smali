.class Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;
.super Ljava/lang/Object;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySizeConstraints"
.end annotation


# static fields
.field private static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private constraintsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    const-string/jumbo v0, "(\\S+)\\s+keySize\\s*(<=|<|==|!=|>|>=)\\s*(\\d+)"

    .line 307
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->pattern:Ljava/util/regex/Pattern;

    .line 306
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 12
    .param p1, "restrictions"    # [Ljava/lang/String;

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 311
    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 310
    iput-object v7, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    .line 315
    const/4 v7, 0x0

    array-length v8, p1

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v6, p1, v7

    .line 316
    .local v6, "restriction":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 315
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 320
    :cond_1
    sget-object v9, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 321
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 322
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "algorithm":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->of(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    move-result-object v5

    .line 326
    .local v5, "operator":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 328
    .local v3, "length":I
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v9, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    monitor-enter v9

    .line 331
    :try_start_0
    iget-object v10, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 332
    iget-object v10, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    .line 333
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 332
    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_2
    iget-object v10, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 339
    .local v2, "constraintSet":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;>;"
    new-instance v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;

    invoke-direct {v1, v5, v3}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;-><init>(Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;I)V

    .line 340
    .local v1, "constraint":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    goto :goto_1

    .line 330
    .end local v1    # "constraint":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
    .end local v2    # "constraintSet":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;>;"
    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7

    .line 314
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "operator":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    .end local v6    # "restriction":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public disables(Ljava/security/Key;)Z
    .locals 6
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 348
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "algorithm":Ljava/lang/String;
    iget-object v5, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    monitor-enter v5

    .line 350
    :try_start_0
    iget-object v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    iget-object v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 353
    .local v3, "constraintSet":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "constraint$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;

    .line 354
    .local v1, "constraint":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
    invoke-virtual {v1, p1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->disables(Ljava/security/Key;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    .end local v1    # "constraint":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
    .end local v2    # "constraint$iterator":Ljava/util/Iterator;
    .end local v3    # "constraintSet":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;>;"
    :cond_1
    monitor-exit v5

    .line 361
    const/4 v4, 0x0

    return v4

    .line 349
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
