.class public final Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
.super Ljava/io/CharConversionException;
.source "MalformedByteSequenceException.java"


# static fields
.field static final serialVersionUID:J = 0x75140cf43984a223L


# instance fields
.field private fArguments:[Ljava/lang/Object;

.field private fDomain:Ljava/lang/String;

.field private fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field private fKey:Ljava/lang/String;

.field private fLocale:Ljava/util/Locale;

.field private fMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/CharConversionException;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fLocale:Ljava/util/Locale;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fDomain:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fKey:Ljava/lang/String;

    iput-object p5, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fArguments:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getArguments()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fKey:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMessage()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fMessage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fLocale:Ljava/util/Locale;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fKey:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fArguments:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fMessage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->fLocale:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
