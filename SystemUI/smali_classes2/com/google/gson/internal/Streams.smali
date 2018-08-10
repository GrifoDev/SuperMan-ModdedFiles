.class public final Lcom/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v5, p0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v5

    :catch_0
    move-exception v1

    if-nez v4, :cond_0

    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v5, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_0
    sget-object v5, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v5

    :catch_1
    move-exception v0

    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v5, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v2

    new-instance v5, Lcom/google/gson/JsonIOException;

    invoke-direct {v5, v2}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_3
    move-exception v3

    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v5, v3}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
