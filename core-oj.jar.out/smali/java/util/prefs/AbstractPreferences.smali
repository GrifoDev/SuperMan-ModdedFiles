.class public abstract Ljava/util/prefs/AbstractPreferences;
.super Ljava/util/prefs/Preferences;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/AbstractPreferences$EventDispatchThread;,
        Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;,
        Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;
    }
.end annotation


# static fields
.field private static final EMPTY_ABSTRACT_PREFS_ARRAY:[Ljava/util/prefs/AbstractPreferences;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static eventDispatchThread:Ljava/lang/Thread;

.field private static final eventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final absolutePath:Ljava/lang/String;

.field private kidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/prefs/AbstractPreferences;",
            ">;"
        }
    .end annotation
.end field

.field protected final lock:Ljava/lang/Object;

.field private final name:Ljava/lang/String;

.field protected newNode:Z

.field private final nodeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/prefs/NodeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final parent:Ljava/util/prefs/AbstractPreferences;

.field private final prefListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/prefs/PreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private removed:Z

.field private final root:Ljava/util/prefs/AbstractPreferences;


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .locals 1

    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/prefs/AbstractPreferences;)Ljava/util/prefs/AbstractPreferences;
    .locals 1

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v1, [Ljava/util/prefs/AbstractPreferences;

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->EMPTY_ABSTRACT_PREFS_ARRAY:[Ljava/util/prefs/AbstractPreferences;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    return-void
.end method

.method protected constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/prefs/Preferences;-><init>()V

    iput-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    iput-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Root name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' must be \"\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "/"

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->absolutePath:Ljava/lang/String;

    iput-object p0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    :goto_0
    iput-object p2, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    return-void

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' contains \'/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal name: empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p1, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    if-ne p1, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->absolutePath:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private enqueueNodeAddedEvent(Ljava/util/prefs/Preferences;)V
    .locals 3

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    new-instance v2, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;

    invoke-direct {v2, p0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private enqueueNodeRemovedEvent(Ljava/util/prefs/Preferences;)V
    .locals 3

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    new-instance v2, Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;

    invoke-direct {v2, p0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    new-instance v2, Ljava/util/prefs/PreferenceChangeEvent;

    invoke-direct {v2, p0, p1, p2}, Ljava/util/prefs/PreferenceChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private flush2()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->flushSpi()V

    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v3

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-direct {v2}, Ljava/util/prefs/AbstractPreferences;->flush2()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    return-void
.end method

.method private node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;
    .locals 6

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Consecutive slashes in path"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x50

    if-le v2, v4, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Node name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " too long"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    iget-boolean v2, v0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Ljava/util/prefs/AbstractPreferences;->enqueueNodeAddedEvent(Ljava/util/prefs/Preferences;)V

    :cond_2
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    monitor-exit v3

    return-object v0

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Path ends with slash"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-direct {v0, p1}, Ljava/util/prefs/AbstractPreferences;->node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2
.end method

.method private nodeExists(Ljava/util/StringTokenizer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Consecutive slashes in path"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/prefs/AbstractPreferences;->getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Path ends with slash"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    :try_start_3
    invoke-direct {v0, p1}, Ljava/util/prefs/AbstractPreferences;->nodeExists(Ljava/util/StringTokenizer;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    monitor-exit v3

    return v2
.end method

.method private removeNode2()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v4, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Node already removed."

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    aget-object v6, v2, v0

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    aget-object v6, v2, v0

    aget-object v7, v2, v0

    invoke-virtual {p0, v7}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/prefs/AbstractPreferences;

    invoke-direct {v4}, Ljava/util/prefs/AbstractPreferences;->removeNode2()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeSpi()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    invoke-direct {v4, p0}, Ljava/util/prefs/AbstractPreferences;->enqueueNodeRemovedEvent(Ljava/util/prefs/Preferences;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void
.end method

.method private static declared-synchronized startEventDispatchThreadIfNecessary()V
    .locals 3

    const-class v1, Ljava/util/prefs/AbstractPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;-><init>(Ljava/util/prefs/AbstractPreferences$EventDispatchThread;)V

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sync2()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Node has been removed"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->syncSpi()V

    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v3

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-direct {v2}, Ljava/util/prefs/AbstractPreferences;->sync2()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public absolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Change listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->startEventDispatchThreadIfNecessary()V

    return-void
.end method

.method public addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Change listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->startEventDispatchThreadIfNecessary()V

    return-void
.end method

.method protected final cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    .locals 2

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Ljava/util/prefs/AbstractPreferences;->EMPTY_ABSTRACT_PREFS_ARRAY:[Ljava/util/prefs/AbstractPreferences;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/prefs/AbstractPreferences;

    return-object v0
.end method

.method protected abstract childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
.end method

.method public childrenNames()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Node has been removed."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/util/prefs/AbstractPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method protected abstract childrenNamesSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keys()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/util/prefs/AbstractPreferences;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public exportNode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Ljava/util/prefs/XmlSupport;->export(Ljava/io/OutputStream;Ljava/util/prefs/Preferences;Z)V

    return-void
.end method

.method public exportSubtree(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Ljava/util/prefs/XmlSupport;->export(Ljava/io/OutputStream;Ljava/util/prefs/Preferences;Z)V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->flush2()V

    return-void
.end method

.method protected abstract flushSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Null key"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Node has been removed."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->getSpi(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    monitor-exit v3

    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move-object p2, v1

    goto :goto_1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v2, 0x0

    move v0, p2

    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;[B)[B
    .locals 4

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 6

    move-wide v2, p2

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 4

    move v1, p2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4

    move v1, p2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 6

    move-wide v2, p2

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract getSpi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected isRemoved()Z
    .locals 2

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isUserNode()Z
    .locals 1

    new-instance v0, Ljava/util/prefs/AbstractPreferences$1;

    invoke-direct {v0, p0}, Ljava/util/prefs/AbstractPreferences$1;-><init>(Ljava/util/prefs/AbstractPreferences;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public keys()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keysSpi()[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method protected abstract keysSpi()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    return-object v0
.end method

.method public node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    return-object p0

    :cond_1
    :try_start_2
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_2
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v2, "/"

    const/4 v3, 0x1

    invoke-direct {v0, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Ljava/util/prefs/AbstractPreferences;->node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_3
    monitor-exit v1

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/util/prefs/AbstractPreferences;->node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public nodeExists(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Node has been removed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit v2

    return v1

    :cond_3
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_4

    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "/"

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Ljava/util/prefs/AbstractPreferences;->nodeExists(Ljava/util/StringTokenizer;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    monitor-exit v2

    return v0

    :cond_4
    monitor-exit v2

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-direct {v2, v3, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v2}, Ljava/util/prefs/AbstractPreferences;->nodeExists(Ljava/util/StringTokenizer;)Z

    move-result v0

    return v0
.end method

.method nodeListeners()[Ljava/util/prefs/NodeChangeListener;
    .locals 3

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/prefs/NodeChangeListener;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/prefs/NodeChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public parent()Ljava/util/prefs/Preferences;
    .locals 3

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method prefListeners()[Ljava/util/prefs/PreferenceChangeListener;
    .locals 3

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/prefs/PreferenceChangeListener;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/prefs/PreferenceChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->putSpi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 1

    invoke-static {p2}, Ljava/util/prefs/Base64;->byteArrayToBase64([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract putSpi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->removeSpi(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public removeNode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Can\'t remove the root!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    iget-object v1, v0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->removeNode2()V

    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    iget-object v0, v0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .locals 3

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Listener not registered."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method protected abstract removeNodeSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public removePreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .locals 3

    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Listener not registered."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method protected abstract removeSpi(Ljava/lang/String;)V
.end method

.method public sync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->sync2()V

    return-void
.end method

.method protected abstract syncSpi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "User"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Preference Node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "System"

    goto :goto_0
.end method
