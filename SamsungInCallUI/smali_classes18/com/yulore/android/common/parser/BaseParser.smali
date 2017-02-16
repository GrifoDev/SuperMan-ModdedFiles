.class public abstract Lcom/yulore/android/common/parser/BaseParser;
.super Ljava/lang/Object;
.source "BaseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/yulore/android/common/parser/BaseParser;, "Lcom/yulore/android/common/parser/BaseParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/yulore/android/common/parser/BaseParser;, "Lcom/yulore/android/common/parser/BaseParser<TT;>;"
    const/4 v2, 0x0

    .line 23
    if-nez p1, :cond_1

    move-object v1, v2

    .line 31
    :cond_0
    :goto_0
    return-object v1

    .line 26
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move-object v1, v2

    .line 31
    goto :goto_0
.end method

.method public abstract parseJSON(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
