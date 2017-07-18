.class public Ljava/beans/PropertyChangeSupport;
.super Ljava/lang/Object;
.source "PropertyChangeSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x58d5d264574860bbL


# instance fields
.field private map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

.field private source:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "children"

    const-class v3, Ljava/util/Hashtable;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "source"

    const-class v3, Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "propertyChangeSupportSerializedDataVersion"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljava/beans/PropertyChangeSupport;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-direct {v0, v1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;-><init>(Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;)V

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    return-void
.end method

.method private static fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    invoke-interface {v0, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v6, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-direct {v6, v8}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;-><init>(Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;)V

    iput-object v6, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v3

    const-string/jumbo v6, "children"

    invoke-virtual {v3, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string/jumbo v6, "source"

    invoke-virtual {v3, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    const-string/jumbo v6, "propertyChangeSupportSerializedDataVersion"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    check-cast v5, Ljava/beans/PropertyChangeListener;

    invoke-virtual {v6, v8, v5}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v6}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object v8

    const/4 v6, 0x0

    array-length v9, v8

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v4, v8, v7

    iget-object v10, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6, v4}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v11, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v10}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getEntries()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v2, v1

    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    move-object v7, v0

    move-object v1, v2

    :goto_1
    move-object v2, v1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_4

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    :try_start_2
    new-instance v8, Ljava/beans/PropertyChangeSupport;

    iget-object v10, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    invoke-direct {v8, v10}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iget-object v12, v8, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/beans/PropertyChangeListener;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v10}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->set(Ljava/lang/String;[Ljava/util/EventListener;)V

    invoke-virtual {v1, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v10

    :goto_3
    monitor-exit v11

    throw v10

    :cond_1
    monitor-exit v11

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v5

    const-string/jumbo v10, "children"

    invoke-virtual {v5, v10, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "source"

    iget-object v11, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    invoke-virtual {v5, v10, v11}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v10, "propertyChangeSupportSerializedDataVersion"

    const/4 v11, 0x2

    invoke-virtual {v5, v10, v11}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    if-eqz v7, :cond_3

    const/4 v10, 0x0

    array-length v11, v7

    :goto_4
    if-ge v10, v11, :cond_3

    aget-object v6, v7, v10

    instance-of v12, v6, Ljava/io/Serializable;

    if-eqz v12, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v10

    move-object v1, v2

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    invoke-virtual {p0, v2, v1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v1, v2, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    goto :goto_0
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    :cond_2
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;III)V
    .locals 2

    if-eq p3, p4, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/beans/IndexedPropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/beans/IndexedPropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;IZZ)V
    .locals 2

    if-eq p3, p4, :cond_0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v5, v6}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    if-eqz v1, :cond_2

    iget-object v5, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v5, v1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v2

    check-cast v2, [Ljava/beans/PropertyChangeListener;

    :goto_0
    invoke-static {v0, p1}, Ljava/beans/PropertyChangeSupport;->fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V

    invoke-static {v2, p1}, Ljava/beans/PropertyChangeSupport;->fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public firePropertyChange(Ljava/lang/String;II)V
    .locals 2

    if-eq p2, p3, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public firePropertyChange(Ljava/lang/String;ZZ)V
    .locals 2

    if-eq p2, p3, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getListeners()[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method public getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getListeners(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    invoke-virtual {p0, v2, v1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v1, v2, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->remove(Ljava/lang/String;Ljava/util/EventListener;)V

    goto :goto_0
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->remove(Ljava/lang/String;Ljava/util/EventListener;)V

    :cond_2
    return-void
.end method
