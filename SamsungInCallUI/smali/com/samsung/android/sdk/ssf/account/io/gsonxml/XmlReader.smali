.class public Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;
.super Lcom/google/gson/stream/JsonReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator;,
        Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;,
        Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;,
        Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;,
        Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;,
        Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;,
        Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;,
        Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;,
        Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;
    }
.end annotation


# static fields
.field private static final END_TAG:I = 0x2

.field private static final IGNORE:I = -0x1

.field private static final START_TAG:I = 0x1

.field private static final VALUE:I = 0x3


# instance fields
.field private final attributes:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;

.field private final closeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack",
            "<",
            "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;",
            ">;"
        }
    .end annotation
.end field

.field private endReached:Z

.field private expectedToken:Lcom/google/gson/stream/JsonToken;

.field private firstStart:Z

.field private lastTextWhiteSpace:Z

.field final options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

.field private final scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack",
            "<",
            "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;",
            ">;"
        }
    .end annotation
.end field

.field private skipping:Z

.field private textNameCounter:I

.field private token:Lcom/google/gson/stream/JsonToken;

.field private final tokensPool:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool",
            "<",
            "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;",
            ">;"
        }
    .end annotation
.end field

.field private tokensQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

.field private tokensQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

.field private final valuesPool:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool",
            "<",
            "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;",
            ">;"
        }
    .end annotation
.end field

.field private valuesQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

.field private valuesQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

.field private final xmlParser:Lorg/xmlpull/v1/XmlPullParser;

.field private final xmlToken:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlParserCreator;Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;

    new-instance v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$1;-><init>(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;-><init>(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensPool:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;

    new-instance v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$2;-><init>(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;-><init>(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesPool:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->firstStart:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->closeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    iput v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->textNameCounter:I

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;-><init>(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlToken:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;-><init>(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->attributes:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;

    invoke-interface {p2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlParserCreator;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlToken:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    iget-boolean v2, p3, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->namespaces:Z

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private adaptCurrentToken()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$3;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v1, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->cleanup(I)I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v2, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v2, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextToken()Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v1, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->fillQueues(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->cleanup(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v1, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v2, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v2, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->size()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    if-eq v1, v2, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->pushToQueue(Ljava/lang/String;)V

    const-string v0, "$"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->pushToQueue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addTextToQueue(Ljava/lang/String;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iget-object v2, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addToQueue(Lcom/google/gson/stream/JsonToken;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensPool:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iput-object p1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iput-object v0, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    goto :goto_0
.end method

.method private addToQueue(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;)V
    .locals 4

    iget v1, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;->count:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v2, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addToQueue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesPool:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iput-object v0, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    goto :goto_0
.end method

.method private dump()Ljava/lang/CharSequence;
    .locals 3

    const/16 v2, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scopes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Closed tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->closeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Tokens queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Values queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private expect(Lcom/google/gson/stream/JsonToken;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected, but met "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->dump()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private fillQueues(Z)V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->endReached:Z

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextXmlInfo()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->endReached:Z

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->skipRoot:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v2, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    packed-switch v2, :pswitch_data_0

    move p1, v0

    :goto_1
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->skipping:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :pswitch_0
    iget-boolean v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->firstStart:Z

    if-eqz v2, :cond_5

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->firstStart:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->processRoot(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;)V

    move p1, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->processStart(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;)V

    move p1, v0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->processText(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;)Z

    move-result p1

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->processEnd(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;)V

    move p1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private fixScopeStack()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->fix(Ljava/lang/Object;)V

    return-void
.end method

.method static nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private nextToken()Lcom/google/gson/stream/JsonToken;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensPool:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->release(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0
.end method

.method private nextValue()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No value can be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesPool:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->release(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    return-object v0
.end method

.method private nextXmlInfo()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlToken:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->clear()V

    packed-switch v1, :pswitch_data_0

    :goto_0
    iput v4, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    :cond_0
    :goto_1
    return-object v0

    :pswitch_0
    iput v3, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->attributes:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;->fill(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->attributes:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    iput v4, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    const/4 v2, 0x3

    iput v2, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iput-boolean v3, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->endReached:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private peekNextToken()Lcom/google/gson/stream/JsonToken;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processEnd(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$3;->$SwitchMap$com$samsung$android$sdk$ssf$account$io$gsonxml$XmlReader$Scope:[I

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->namespaces:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->closeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    :goto_2
    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;

    iget v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;->depth:I

    if-le v0, v2, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->drop()V

    goto :goto_2

    :pswitch_0
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->textNameCounter:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->drop()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->fixScopeStack()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;

    iget v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;->depth:I

    if-ge v0, v2, :cond_5

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;->name:Ljava/lang/String;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processRoot(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->skipRoot:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->processStart(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$3;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First expectedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (not begin_object/begin_array)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->rootArrayPrimitive:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processStart(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v1, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->insideArray:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->closeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->closeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;

    iget v2, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;->depth:I

    iget-object v5, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->options:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Options;->namespaces:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v1, v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ClosedTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->fixScopeStack()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$3;->$SwitchMap$com$samsung$android$sdk$ssf$account$io$gsonxml$XmlReader$Scope:[I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move v3, v4

    :goto_1
    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attributes data in primitive scope"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    move v0, v3

    :goto_2
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v2, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    move v3, v0

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$AttributesData;)V

    :cond_5
    return-void

    :pswitch_2
    move v0, v4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processText(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$3;->$SwitchMap$com$samsung$android$sdk$ssf$account$io$gsonxml$XmlReader$Scope:[I

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process text \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' inside scope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    move v0, v2

    goto :goto_0

    :pswitch_2
    const-string v0, "$"

    iget v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->textNameCounter:I

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->textNameCounter:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->textNameCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->textNameCounter:I

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private pushToQueue(Lcom/google/gson/stream/JsonToken;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensPool:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iput-object p1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    goto :goto_0
.end method

.method private pushToQueue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesPool:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iput-object p1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    goto :goto_0
.end method


# virtual methods
.method public beginArray()V
    .locals 1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    return-void
.end method

.method public beginObject()V
    .locals 1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    return-void
.end method

.method public endArray()V
    .locals 1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    return-void
.end method

.method public endObject()V
    .locals 1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 4

    const/4 v2, 0x1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "> to boolean"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 2

    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    return-object v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->firstStart:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->adaptCurrentToken()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    const-string v2, "XML parsing exception"

    invoke-direct {v1, v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->fillQueues(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    const-string v2, "XML parsing exception"

    invoke-direct {v1, v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public skipValue()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->skipping:Z

    move v0, v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->skipping:Z

    return-void

    :cond_3
    :try_start_1
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->skipping:Z

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- XmlReader ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;->dump()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
