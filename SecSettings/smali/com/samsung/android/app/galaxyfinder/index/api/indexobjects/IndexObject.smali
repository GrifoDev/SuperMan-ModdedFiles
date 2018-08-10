.class public abstract Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;
.super Ljava/lang/Object;
.source "IndexObject.java"


# static fields
.field private static final RESERVED_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INDEX_OBJECT_VER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final aliasObjects:Lorg/json/JSONArray;

.field private final jsonObject:Lorg/json/JSONObject;

.field private mId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->RESERVED_KEYS:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->RESERVED_KEYS:Ljava/util/List;

    const-string/jumbo v1, "ObjectId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->RESERVED_KEYS:Ljava/util/List;

    const-string/jumbo v1, "ObjectType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->RESERVED_KEYS:Ljava/util/List;

    const-string/jumbo v1, "ObjectVersion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->RESERVED_KEYS:Ljava/util/List;

    const-string/jumbo v1, "ObjectAliasList"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "0.1.13"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->INDEX_OBJECT_VER:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->jsonObject:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->aliasObjects:Lorg/json/JSONArray;

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->mId:J

    return-void
.end method

.method private getIndexObjectVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "0.1.13"

    return-object v0
.end method

.method private isReservedKeyword(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->RESERVED_KEYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getObjectId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->mId:J

    return-wide v0
.end method

.method abstract getObjectType()Ljava/lang/String;
.end method

.method final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->isReservedKeyword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The name is reserved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final toJsonString()Ljava/lang/String;
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->getObjectId()J

    move-result-wide v2

    const-string/jumbo v4, "ObjectId"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->getObjectType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ObjectType"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->getIndexObjectVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ObjectVersion"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->aliasObjects:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->jsonObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->aliasObjects:Lorg/json/JSONArray;

    const-string/jumbo v3, "ObjectAliasList"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to get JsonString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
