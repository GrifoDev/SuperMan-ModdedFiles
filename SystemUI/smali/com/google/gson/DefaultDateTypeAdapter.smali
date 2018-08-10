.class final Lcom/google/gson/DefaultDateTypeAdapter;
.super Ljava/lang/Object;
.source "DefaultDateTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Ljava/util/Date;",
        ">;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final enUsFormat:Ljava/text/DateFormat;

.field private final localFormat:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method constructor <init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    iput-object p2, p0, Lcom/google/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    return-void
.end method

.method private deserializeToDate(Lcom/google/gson/JsonElement;)Ljava/util/Date;
    .locals 7

    iget-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lcom/google/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v4, p0, Lcom/google/gson/DefaultDateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v4

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {v4, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    :try_start_5
    monitor-exit v0

    return-object v4

    :catch_2
    move-exception v3

    new-instance v4, Lcom/google/gson/JsonSyntaxException;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/DefaultDateTypeAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    instance-of v1, p1, Lcom/google/gson/JsonPrimitive;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/gson/DefaultDateTypeAdapter;->deserializeToDate(Lcom/google/gson/JsonElement;)Ljava/util/Date;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    if-eq p2, v1, :cond_1

    const-class v1, Ljava/sql/Timestamp;

    if-eq p2, v1, :cond_2

    const-class v1, Ljava/sql/Date;

    if-eq p2, v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cannot deserialize to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/google/gson/JsonParseException;

    const-string/jumbo v2, "The date should be a string value"

    invoke-direct {v1, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1

    :cond_3
    new-instance v1, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    return-object v1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/DefaultDateTypeAdapter;->serialize(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 4

    iget-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/google/gson/DefaultDateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v3, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/gson/DefaultDateTypeAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
