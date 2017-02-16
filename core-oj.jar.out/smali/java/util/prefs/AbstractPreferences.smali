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

    .prologue
    const/4 v1, 0x0

    .line 722
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 734
    new-array v0, v1, [Ljava/util/prefs/AbstractPreferences;

    .line 733
    sput-object v0, Ljava/util/prefs/AbstractPreferences;->EMPTY_ABSTRACT_PREFS_ARRAY:[Ljava/util/prefs/AbstractPreferences;

    .line 1411
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    .line 1474
    const/4 v0, 0x0

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    .line 124
    return-void
.end method

.method protected constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Ljava/util/prefs/AbstractPreferences;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/util/prefs/Preferences;-><init>()V

    .line 153
    iput-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    .line 165
    iput-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    .line 199
    if-nez p1, :cond_1

    .line 200
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Root name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    const-string/jumbo v2, "\' must be \"\""

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    const-string/jumbo v0, "/"

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->absolutePath:Ljava/lang/String;

    .line 204
    iput-object p0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 216
    :goto_0
    iput-object p2, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    .line 217
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    .line 198
    return-void

    .line 206
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    const-string/jumbo v2, "\' contains \'/\'"

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal name: empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_3
    iget-object v0, p1, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    iput-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    .line 213
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

    .line 214
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
    .param p1, "child"    # Ljava/util/prefs/Preferences;

    .prologue
    .line 1527
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1528
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    monitor-enter v1

    .line 1529
    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    new-instance v2, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;

    invoke-direct {v2, p0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1526
    :cond_0
    return-void

    .line 1528
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private enqueueNodeRemovedEvent(Ljava/util/prefs/Preferences;)V
    .locals 3
    .param p1, "child"    # Ljava/util/prefs/Preferences;

    .prologue
    .line 1541
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    monitor-enter v1

    .line 1543
    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    new-instance v2, Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;

    invoke-direct {v2, p0, p0, p1}, Ljava/util/prefs/AbstractPreferences$NodeRemovedEvent;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1540
    :cond_0
    return-void

    .line 1542
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 1513
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1514
    sget-object v1, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    monitor-enter v1

    .line 1515
    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    new-instance v2, Ljava/util/prefs/PreferenceChangeEvent;

    invoke-direct {v2, p0, p1, p2}, Ljava/util/prefs/PreferenceChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1512
    :cond_0
    return-void

    .line 1514
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

    .prologue
    .line 1356
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1357
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->flushSpi()V

    .line 1358
    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 1359
    return-void

    .line 1360
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    monitor-exit v3

    .line 1363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1364
    aget-object v2, v0, v1

    invoke-direct {v2}, Ljava/util/prefs/AbstractPreferences;->flush2()V

    .line 1363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1356
    .end local v0    # "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1353
    .restart local v0    # "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method private node(Ljava/util/StringTokenizer;)Ljava/util/prefs/Preferences;
    .locals 6
    .param p1, "path"    # Ljava/util/StringTokenizer;

    .prologue
    .line 822
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "token":Ljava/lang/String;
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Consecutive slashes in path"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 825
    :cond_0
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 826
    :try_start_0
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    .line 827
    .local v0, "child":Ljava/util/prefs/AbstractPreferences;
    if-nez v0, :cond_3

    .line 828
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x50

    if-le v2, v4, :cond_1

    .line 829
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 830
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

    .line 829
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    .end local v0    # "child":Ljava/util/prefs/AbstractPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 831
    .restart local v0    # "child":Ljava/util/prefs/AbstractPreferences;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    .line 832
    iget-boolean v2, v0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    if-eqz v2, :cond_2

    .line 833
    invoke-direct {p0, v0}, Ljava/util/prefs/AbstractPreferences;->enqueueNodeAddedEvent(Ljava/util/prefs/Preferences;)V

    .line 834
    :cond_2
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    :cond_3
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    monitor-exit v3

    .line 837
    return-object v0

    .line 838
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 839
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_5

    .line 840
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Path ends with slash"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 841
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
    .param p1, "path"    # Ljava/util/StringTokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 891
    .local v1, "token":Ljava/lang/String;
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Consecutive slashes in path"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 893
    :cond_0
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 894
    :try_start_0
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    .line 895
    .local v0, "child":Ljava/util/prefs/AbstractPreferences;
    if-nez v0, :cond_1

    .line 896
    invoke-virtual {p0, v1}, Ljava/util/prefs/AbstractPreferences;->getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 897
    :cond_1
    if-nez v0, :cond_2

    .line 898
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .line 899
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 900
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 901
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 902
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_4

    .line 903
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Path ends with slash"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 893
    .end local v0    # "child":Ljava/util/prefs/AbstractPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 904
    .restart local v0    # "child":Ljava/util/prefs/AbstractPreferences;
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

    .prologue
    .line 954
    iget-object v5, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 955
    :try_start_0
    iget-boolean v4, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v4, :cond_0

    .line 956
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Node already removed."

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 959
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v2

    .line 960
    .local v2, "kidNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 961
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    aget-object v6, v2, v0

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 962
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    aget-object v6, v2, v0

    aget-object v7, v2, v0

    invoke-virtual {p0, v7}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 965
    :cond_2
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 966
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/prefs/AbstractPreferences;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 965
    if-eqz v4, :cond_3

    .line 968
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/prefs/AbstractPreferences;

    invoke-direct {v4}, Ljava/util/prefs/AbstractPreferences;->removeNode2()V

    .line 969
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 970
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/util/prefs/BackingStoreException;
    goto :goto_1

    .line 974
    .end local v3    # "x":Ljava/util/prefs/BackingStoreException;
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->removeNodeSpi()V

    .line 975
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    .line 976
    iget-object v4, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    invoke-direct {v4, p0}, Ljava/util/prefs/AbstractPreferences;->enqueueNodeRemovedEvent(Ljava/util/prefs/Preferences;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 953
    return-void
.end method

.method private static declared-synchronized startEventDispatchThreadIfNecessary()V
    .locals 3

    .prologue
    const-class v1, Ljava/util/prefs/AbstractPreferences;

    monitor-enter v1

    .line 1482
    :try_start_0
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1484
    new-instance v0, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;-><init>(Ljava/util/prefs/AbstractPreferences$EventDispatchThread;)V

    sput-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    .line 1485
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1486
    sget-object v0, Ljava/util/prefs/AbstractPreferences;->eventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1481
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

    .prologue
    .line 1296
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1297
    :try_start_0
    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v2, :cond_0

    .line 1298
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Node has been removed"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1299
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->syncSpi()V

    .line 1300
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "cachedKids":[Ljava/util/prefs/AbstractPreferences;
    monitor-exit v3

    .line 1303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1304
    aget-object v2, v0, v1

    invoke-direct {v2}, Ljava/util/prefs/AbstractPreferences;->sync2()V

    .line 1303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1293
    :cond_1
    return-void
.end method


# virtual methods
.method public absolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .locals 3
    .param p1, "ncl"    # Ljava/util/prefs/NodeChangeListener;

    .prologue
    .line 1056
    if-nez p1, :cond_0

    .line 1057
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Change listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_0
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1059
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_1

    .line 1060
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1062
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1064
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->startEventDispatchThreadIfNecessary()V

    .line 1055
    return-void
.end method

.method public addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
    .locals 3
    .param p1, "pcl"    # Ljava/util/prefs/PreferenceChangeListener;

    .prologue
    .line 1031
    if-nez p1, :cond_0

    .line 1032
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Change listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_0
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1034
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_1

    .line 1035
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1037
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1039
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->startEventDispatchThreadIfNecessary()V

    .line 1030
    return-void
.end method

.method protected final cachedChildren()[Ljava/util/prefs/AbstractPreferences;
    .locals 2

    .prologue
    .line 730
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

    .prologue
    .line 711
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 712
    :try_start_0
    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v2, :cond_0

    .line 713
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Node has been removed."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 715
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 716
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNamesSpi()[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 717
    .local v0, "kid":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "kid":Ljava/lang/String;
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

    .prologue
    .line 334
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 335
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->keys()[Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "keys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 337
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/util/prefs/AbstractPreferences;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 333
    return-void

    .line 334
    .end local v0    # "i":I
    .end local v1    # "keys":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public exportNode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 1562
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Ljava/util/prefs/XmlSupport;->export(Ljava/io/OutputStream;Ljava/util/prefs/Preferences;Z)V

    .line 1560
    return-void
.end method

.method public exportSubtree(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 1578
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Ljava/util/prefs/XmlSupport;->export(Ljava/io/OutputStream;Ljava/util/prefs/Preferences;Z)V

    .line 1576
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 1350
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->flush2()V

    .line 1349
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
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Null key"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_0
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 282
    :try_start_0
    iget-boolean v2, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v2, :cond_1

    .line 283
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Node has been removed."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 285
    :cond_1
    const/4 v1, 0x0

    .line 287
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->getSpi(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 291
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_2

    .end local p2    # "def":Ljava/lang/String;
    :goto_1
    monitor-exit v3

    return-object p2

    .line 288
    .restart local v1    # "result":Ljava/lang/String;
    .restart local p2    # "def":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    move-object p2, v1

    .line 291
    goto :goto_1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v2, 0x0

    .line 497
    move v0, p2

    .line 498
    .local v0, "result":Z
    invoke-virtual {p0, p1, v2}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 500
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    const/4 v0, 0x1

    .line 506
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 502
    .restart local v0    # "result":Z
    :cond_1
    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # [B

    .prologue
    const/4 v3, 0x0

    .line 653
    move-object v1, p2

    .line 654
    .local v1, "result":[B
    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 657
    :try_start_0
    invoke-static {v2}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 663
    :cond_0
    :goto_0
    return-object v1

    .line 659
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method protected getChild(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 1218
    iget-object v3, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1220
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->childrenNames()[Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, "kidNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1222
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1223
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/util/prefs/AbstractPreferences;->childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 1221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    .line 1225
    const/4 v2, 0x0

    return-object v2

    .line 1218
    .end local v0    # "i":I
    .end local v1    # "kidNames":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # D

    .prologue
    .line 607
    move-wide v2, p2

    .line 609
    .local v2, "result":D
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 611
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 616
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v2

    .line 612
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 552
    move v1, p2

    .line 554
    .local v1, "result":F
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 556
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 561
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 557
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 384
    move v1, p2

    .line 386
    .local v1, "result":I
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 388
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 393
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 389
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 439
    move-wide v2, p2

    .line 441
    .local v2, "result":J
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Ljava/util/prefs/AbstractPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 443
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 448
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v2

    .line 444
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method protected abstract getSpi(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected isRemoved()Z
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1399
    :try_start_0
    iget-boolean v1, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1398
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isUserNode()Z
    .locals 1

    .prologue
    .line 1023
    new-instance v0, Ljava/util/prefs/AbstractPreferences$1;

    invoke-direct {v0, p0}, Ljava/util/prefs/AbstractPreferences$1;-><init>(Ljava/util/prefs/AbstractPreferences;)V

    .line 1022
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

    .prologue
    .line 682
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 683
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    .line 684
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 686
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

    .prologue
    .line 990
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    return-object v0
.end method

.method public node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 803
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    .line 805
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 806
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 807
    return-object p0

    .line 808
    :cond_1
    :try_start_2
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 809
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 810
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_3

    .line 811
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

    .line 815
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
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 868
    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 869
    :try_start_0
    const-string/jumbo v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 870
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

    .line 871
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_2

    .line 872
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Node has been removed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 873
    :cond_2
    :try_start_2
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit v2

    .line 874
    return v1

    .line 875
    :cond_3
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_4

    .line 876
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

    .line 880
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

    .prologue
    .line 1502
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1503
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

    .line 1502
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public parent()Ljava/util/prefs/Preferences;
    .locals 3

    .prologue
    .line 749
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 750
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    .line 751
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 753
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

    .prologue
    .line 1497
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1498
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

    .line 1497
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 240
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 242
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_2

    .line 243
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

    .line 244
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_3

    .line 245
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

    .line 247
    :cond_3
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_4

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 251
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->putSpi(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;->enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 239
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 468
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 632
    invoke-static {p2}, Ljava/util/prefs/Base64;->byteArrayToBase64([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 581
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 526
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 358
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 413
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method protected abstract putSpi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 314
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/prefs/AbstractPreferences;->removeSpi(Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/prefs/AbstractPreferences;->enqueuePreferenceChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 309
    return-void
.end method

.method public removeNode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->root:Ljava/util/prefs/AbstractPreferences;

    if-ne p0, v0, :cond_0

    .line 942
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Can\'t remove the root!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_0
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    iget-object v1, v0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->removeNode2()V

    .line 945
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->parent:Ljava/util/prefs/AbstractPreferences;

    iget-object v0, v0, Ljava/util/prefs/AbstractPreferences;->kidCache:Ljava/util/Map;

    iget-object v2, p0, Ljava/util/prefs/AbstractPreferences;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 940
    return-void

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
    .locals 3
    .param p1, "ncl"    # Ljava/util/prefs/NodeChangeListener;

    .prologue
    .line 1068
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1069
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    .line 1070
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1072
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1073
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Listener not registered."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->nodeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1067
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
    .param p1, "pcl"    # Ljava/util/prefs/PreferenceChangeListener;

    .prologue
    .line 1043
    iget-object v1, p0, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1044
    :try_start_0
    iget-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->removed:Z

    if-eqz v0, :cond_0

    .line 1045
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Node has been removed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1047
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Listener not registered."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_1
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences;->prefListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1042
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

    .prologue
    .line 1290
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences;->sync2()V

    .line 1289
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

    .prologue
    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "User"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1266
    const-string/jumbo v1, " Preference Node: "

    .line 1265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1266
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences;->absolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "System"

    goto :goto_0
.end method
