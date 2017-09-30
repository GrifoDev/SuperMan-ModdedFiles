.class public Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
.super Ljava/io/ObjectInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;,
        Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    }
.end annotation


# static fields
.field private static final DATA_HOLDER_KEY:Ljava/lang/String;


# instance fields
.field private callbacks:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->DATA_HOLDER_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/ObjectInputStream;-><init>()V

    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->callbacks:Lcom/thoughtworks/xstream/core/util/FastStack;

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->callbacks:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Ljava/lang/ClassLoader;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    return-void
.end method

.method public static getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-static {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Ljava/lang/ClassLoader;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    .locals 4

    const-class v1, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->DATA_HOLDER_KEY:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/thoughtworks/xstream/converters/DataHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    invoke-direct {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    sget-object v2, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->DATA_HOLDER_KEY:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Lcom/thoughtworks/xstream/converters/DataHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->pushCallback(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v3, "Cannot create CustomObjectStream"

    invoke-direct {v2, v3, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Ljava/lang/ClassLoader;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    .locals 2

    const-class v1, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->close()V

    return-void
.end method

.method public defaultReadObject()V
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->defaultReadObject()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->callbacks:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    return-object v0
.end method

.method public popCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->callbacks:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    return-object v0
.end method

.method public pushCallback(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->callbacks:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public read()I
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    array-length v1, v0

    if-eq v1, p3, :cond_0

    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes from stream, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p3
.end method

.method public readBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .locals 2

    new-instance v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFieldsFromStream()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;Ljava/util/Map;)V

    return-object v0
.end method

.method public readFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public readInt()I
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .locals 2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected readObjectOverride()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readShort()S
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7f

    :cond_0
    return v0
.end method

.method public readUnsignedShort()I
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x7fff

    :cond_0
    return v0
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->registerValidation(Ljava/io/ObjectInputValidation;I)V

    return-void
.end method

.method public reset()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skipBytes(I)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
