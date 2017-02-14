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

    const-string/jumbo v0, "(\\S+)\\s+keySize\\s*(<=|<|==|!=|>|>=)\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    const/4 v7, 0x0

    array-length v8, p1

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v6, p1, v7

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    sget-object v9, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->of(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    move-result-object v5

    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    monitor-enter v9

    :try_start_0
    iget-object v10, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v10, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;

    invoke-direct {v1, v5, v3}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;-><init>(Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;I)V

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7

    :cond_3
    return-void
.end method


# virtual methods
.method public disables(Ljava/security/Key;)Z
    .locals 6

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;

    invoke-virtual {v1, p1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->disables(Ljava/security/Key;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    return v4

    :cond_1
    monitor-exit v5

    const/4 v4, 0x0

    return v4

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
