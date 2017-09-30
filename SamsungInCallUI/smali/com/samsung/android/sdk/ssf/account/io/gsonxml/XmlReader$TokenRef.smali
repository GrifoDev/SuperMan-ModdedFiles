.class final Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TokenRef"
.end annotation


# instance fields
.field next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

.field token:Lcom/google/gson/stream/JsonToken;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;->next:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$TokenRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
