.class public Lcom/yulore/android/common/http/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;
    }
.end annotation


# static fields
.field private static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final CONNECTION_TIMEOUT:I = 0x4e20

.field public static final MAX_TOTAL_CONNECTION_NUM:I = 0xc8

.field public static final SO_TIMEOUT:I = 0x4e20

.field private static customerHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static get(Lcom/yulore/android/common/http/RequestVo;)Ljava/lang/String;
    .locals 14
    .param p0, "reqVo"    # Lcom/yulore/android/common/http/RequestVo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    if-nez p0, :cond_1

    .line 303
    const/4 v10, 0x0

    .line 370
    :cond_0
    :goto_0
    return-object v10

    .line 306
    :cond_1
    iget-object v11, p0, Lcom/yulore/android/common/http/RequestVo;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/yulore/android/common/http/NetUtils;->getNewHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 308
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    const-string v11, "YuloreIVRCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get reqVo url="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/yulore/android/common/http/RequestVo;->requestUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    iget-object v11, p0, Lcom/yulore/android/common/http/RequestVo;->requestUrl:Ljava/lang/String;

    invoke-direct {v4, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 312
    .local v4, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v8, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v8}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 313
    .local v8, "params":Lorg/apache/http/params/HttpParams;
    iget v11, p0, Lcom/yulore/android/common/http/RequestVo;->connectionTimeout:I

    if-lez v11, :cond_2

    .line 314
    iget v11, p0, Lcom/yulore/android/common/http/RequestVo;->connectionTimeout:I

    invoke-static {v8, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 316
    :cond_2
    iget v11, p0, Lcom/yulore/android/common/http/RequestVo;->soTimeout:I

    if-lez v11, :cond_3

    .line 317
    iget v11, p0, Lcom/yulore/android/common/http/RequestVo;->soTimeout:I

    invoke-static {v8, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 320
    :cond_3
    invoke-virtual {v4, v8}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 321
    const-string v11, "Accept-Encoding"

    const-string v12, "gzip"

    invoke-virtual {v4, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v11, p0, Lcom/yulore/android/common/http/RequestVo;->headers:Ljava/util/HashMap;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/yulore/android/common/http/RequestVo;->headers:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 323
    iget-object v11, p0, Lcom/yulore/android/common/http/RequestVo;->headers:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 324
    .local v7, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 328
    .end local v7    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/4 v10, 0x0

    .line 330
    .local v10, "result":Ljava/lang/String;
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 331
    .local v9, "response":Lorg/apache/http/HttpResponse;
    if-nez v9, :cond_5

    .line 332
    const-string v11, "YuloreIVRCommon"

    const-string v12, " Server no response "

    invoke-static {v11, v12}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    :cond_5
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 338
    .local v1, "code":I
    const-string v11, "YuloreIVRCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "server response status code="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/16 v11, 0xc8

    if-ne v1, v11, :cond_9

    .line 341
    const/4 v5, 0x0

    .line 343
    .local v5, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 344
    const-string v11, "Content-Encoding"

    invoke-interface {v9, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 345
    .local v2, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, "gzip"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 346
    const-string v11, "YuloreIVRCommon"

    const-string v12, "gzip InputStream in get"

    invoke-static {v11, v12}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    move-object v5, v6

    .line 349
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_6
    invoke-static {v5}, Lcom/yulore/android/common/http/NetUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 351
    iget-object v11, p0, Lcom/yulore/android/common/http/RequestVo;->callback:Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;

    if-eqz v11, :cond_7

    .line 352
    iget-object v11, p0, Lcom/yulore/android/common/http/RequestVo;->callback:Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;

    invoke-interface {v11, v10}, Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 353
    iget-object v11, p0, Lcom/yulore/android/common/http/RequestVo;->callback:Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;->processHeaders([Lorg/apache/http/Header;)V

    .line 356
    :cond_7
    const-string v11, "YuloreIVRCommon"

    invoke-static {v11, v10}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    if-eqz v5, :cond_0

    .line 360
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 361
    :catch_0
    move-exception v3

    .line 362
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 358
    .end local v2    # "contentEncoding":Lorg/apache/http/Header;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_8

    .line 360
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 363
    :cond_8
    :goto_2
    throw v11

    .line 361
    :catch_1
    move-exception v3

    .line 362
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 367
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "in":Ljava/io/InputStream;
    :cond_9
    const-string v11, "YuloreIVRCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "request error:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static get(Lcom/yulore/android/common/job/AsyncHttpRequest;)Ljava/lang/String;
    .locals 14
    .param p0, "req"    # Lcom/yulore/android/common/job/AsyncHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    if-nez p0, :cond_1

    .line 158
    const/4 v10, 0x0

    .line 220
    :cond_0
    :goto_0
    return-object v10

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/yulore/android/common/http/NetUtils;->getNewHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 163
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    const-string v11, "YuloreIVRCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get AsyncHttpRequest url="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getReqUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getReqUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v8, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v8}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 168
    .local v8, "params":Lorg/apache/http/params/HttpParams;
    invoke-virtual {p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getConnectionTimeout()I

    move-result v11

    if-lez v11, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getConnectionTimeout()I

    move-result v11

    invoke-static {v8, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getSoTimeout()I

    move-result v11

    if-lez v11, :cond_3

    .line 172
    invoke-virtual {p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getSoTimeout()I

    move-result v11

    invoke-static {v8, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 175
    :cond_3
    invoke-virtual {v4, v8}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 176
    const-string v11, "Accept-Encoding"

    const-string v12, "gzip"

    invoke-virtual {v4, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 178
    invoke-virtual {p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 179
    .local v7, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    .end local v7    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/4 v10, 0x0

    .line 185
    .local v10, "result":Ljava/lang/String;
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 187
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 189
    .local v1, "code":I
    const-string v11, "YuloreIVRCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "server response status code="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/yulore/android/common/job/AsyncHttpRequest;->setStatus(I)V

    .line 193
    const/16 v11, 0xc8

    if-ne v1, v11, :cond_7

    .line 194
    const/4 v5, 0x0

    .line 196
    .local v5, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 197
    const-string v11, "Content-Encoding"

    invoke-interface {v9, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 198
    .local v2, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, "gzip"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 199
    const-string v11, "YuloreIVRCommon"

    const-string v12, "gzip InputStream in get"

    invoke-static {v11, v12}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    move-object v5, v6

    .line 202
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_5
    invoke-static {v5}, Lcom/yulore/android/common/http/NetUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 204
    const-string v11, "YuloreIVRCommon"

    invoke-static {v11, v10}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, v10}, Lcom/yulore/android/common/job/AsyncHttpRequest;->setResponseContent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    if-eqz v5, :cond_0

    .line 210
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 211
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 208
    .end local v2    # "contentEncoding":Lorg/apache/http/Header;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_6

    .line 210
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 213
    :cond_6
    :goto_2
    throw v11

    .line 211
    :catch_1
    move-exception v3

    .line 212
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 217
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "in":Ljava/io/InputStream;
    :cond_7
    const-string v11, "YuloreIVRCommon"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "request error:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getASByteArray(Lcom/yulore/android/common/http/RequestVo;)[B
    .locals 14
    .param p0, "reqVo"    # Lcom/yulore/android/common/http/RequestVo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 374
    if-nez p0, :cond_1

    move-object v10, v12

    .line 429
    :cond_0
    :goto_0
    return-object v10

    .line 378
    :cond_1
    iget-object v10, p0, Lcom/yulore/android/common/http/RequestVo;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/yulore/android/common/http/NetUtils;->getNewHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 380
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    const-string v10, "YuloreIVRCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getASByteArray url="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/yulore/android/common/http/RequestVo;->requestUrl:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    iget-object v10, p0, Lcom/yulore/android/common/http/RequestVo;->requestUrl:Ljava/lang/String;

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 383
    .local v4, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v8, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v8}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 384
    .local v8, "params":Lorg/apache/http/params/HttpParams;
    iget v10, p0, Lcom/yulore/android/common/http/RequestVo;->connectionTimeout:I

    if-lez v10, :cond_2

    .line 385
    iget v10, p0, Lcom/yulore/android/common/http/RequestVo;->connectionTimeout:I

    invoke-static {v8, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 387
    :cond_2
    iget v10, p0, Lcom/yulore/android/common/http/RequestVo;->soTimeout:I

    if-lez v10, :cond_3

    .line 388
    iget v10, p0, Lcom/yulore/android/common/http/RequestVo;->soTimeout:I

    invoke-static {v8, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 391
    :cond_3
    invoke-virtual {v4, v8}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 392
    const-string v10, "Accept-Encoding"

    const-string v11, "gzip"

    invoke-virtual {v4, v10, v11}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v10, p0, Lcom/yulore/android/common/http/RequestVo;->headers:Ljava/util/HashMap;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/yulore/android/common/http/RequestVo;->headers:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 394
    iget-object v10, p0, Lcom/yulore/android/common/http/RequestVo;->headers:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 395
    .local v7, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 399
    .end local v7    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 401
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 403
    .local v1, "code":I
    const-string v10, "YuloreIVRCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "server response status code="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/16 v10, 0xc8

    if-ne v1, v10, :cond_7

    .line 406
    const/4 v5, 0x0

    .line 408
    .local v5, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 409
    const-string v10, "Content-Encoding"

    invoke-interface {v9, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 410
    .local v2, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "gzip"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 411
    const-string v10, "YuloreIVRCommon"

    const-string v11, "gzip InputStream in get"

    invoke-static {v10, v11}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    move-object v5, v6

    .line 415
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_5
    invoke-static {v5}, Lcom/yulore/android/common/http/NetUtils;->inputStreamToByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 417
    if-eqz v5, :cond_0

    .line 419
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 420
    :catch_0
    move-exception v3

    .line 421
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 417
    .end local v2    # "contentEncoding":Lorg/apache/http/Header;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v5, :cond_6

    .line 419
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 422
    :cond_6
    :goto_2
    throw v10

    .line 420
    :catch_1
    move-exception v3

    .line 421
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 426
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "in":Ljava/io/InputStream;
    :cond_7
    const-string v10, "YuloreIVRCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "request error:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v12

    .line 429
    goto/16 :goto_0
.end method

.method public static getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 492
    if-nez p0, :cond_0

    .line 493
    const/4 v1, 0x0

    .line 529
    :goto_0
    return-object v1

    .line 495
    :cond_0
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 497
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 498
    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 501
    const-string v6, "http.agent"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 503
    const-wide/16 v6, 0x4e20

    invoke-static {v4, v6, v7}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 505
    const/16 v6, 0xc8

    invoke-static {v4, v6}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 507
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v6, 0x14

    invoke-direct {v3, v6}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 508
    .local v3, "connPerRoute":Lorg/apache/http/conn/params/ConnPerRouteBean;
    invoke-static {v4, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 511
    const/16 v0, 0x4e20

    .line 512
    .local v0, "ConnectionTimeOut":I
    invoke-static {p0}, Lcom/yulore/android/common/http/NetUtils;->isWifiDataEnable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 513
    const/16 v0, 0x3a98

    .line 515
    :cond_1
    invoke-static {v4, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 517
    invoke-static {v4, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 519
    const/4 v1, 0x0

    .line 522
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 523
    .local v5, "schReg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 524
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v8

    const/16 v9, 0x1bb

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 526
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v4, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 527
    .local v2, "conMgr":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v1, v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 529
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_0
.end method

.method protected static getNewHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    sget-object v0, Lcom/yulore/android/common/http/NetUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_1

    .line 482
    const-class v1, Lcom/yulore/android/common/http/NetUtils;

    monitor-enter v1

    .line 483
    :try_start_0
    sget-object v0, Lcom/yulore/android/common/http/NetUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    .line 484
    invoke-static {p0}, Lcom/yulore/android/common/http/NetUtils;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    sput-object v0, Lcom/yulore/android/common/http/NetUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    .line 486
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :cond_1
    sget-object v0, Lcom/yulore/android/common/http/NetUtils;->customerHttpClient:Lorg/apache/http/client/HttpClient;

    return-object v0

    .line 486
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 557
    if-nez p0, :cond_1

    .line 558
    const-string v3, "YuloreIVRCommon"

    const-string v4, "context is null"

    invoke-static {v3, v4}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_0
    :goto_0
    return v2

    .line 561
    :cond_1
    const-string v3, "connectivity"

    .line 562
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 564
    .local v0, "con":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 569
    .local v1, "workinfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static inputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 434
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 438
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lcom/yulore/android/common/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 440
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 445
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    :cond_0
    :goto_0
    return-object v2

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 441
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 442
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 451
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 446
    :catch_2
    move-exception v1

    .line 447
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 444
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 445
    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 448
    :cond_2
    :goto_2
    throw v2

    .line 446
    :catch_3
    move-exception v1

    .line 447
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 455
    if-nez p0, :cond_0

    .line 456
    const/4 v5, 0x0

    .line 476
    :goto_0
    return-object v5

    .line 458
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 459
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 461
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, p0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 463
    .local v3, "line":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 464
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 466
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 467
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 476
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 470
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    move-object v0, v1

    .line 473
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 471
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 472
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 474
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 471
    .end local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 472
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 469
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 470
    :goto_4
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 473
    :cond_4
    :goto_5
    throw v5

    .line 471
    :catch_3
    move-exception v2

    .line 472
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 469
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 466
    .end local v3    # "line":Ljava/lang/String;
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static isWifiDataEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 538
    if-nez p0, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v1

    .line 541
    :cond_1
    const-string v2, "connectivity"

    .line 542
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 544
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 548
    const/4 v2, 0x1

    .line 549
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 550
    .local v1, "isWifiDataEnable":Z
    goto :goto_0
.end method

.method public static post(Lcom/yulore/android/common/http/RequestVo;)Ljava/lang/String;
    .locals 20
    .param p0, "reqVo"    # Lcom/yulore/android/common/http/RequestVo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    if-nez p0, :cond_1

    .line 227
    const/16 v16, 0x0

    .line 297
    :cond_0
    :goto_0
    return-object v16

    .line 230
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulore/android/common/http/RequestVo;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/yulore/android/common/http/NetUtils;->getNewHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 232
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    const-string v17, "YuloreIVRCommon"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "post reqVo url="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulore/android/common/http/RequestVo;->requestUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulore/android/common/http/RequestVo;->requestUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 235
    .local v14, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v13, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v13}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 236
    .local v13, "params":Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/yulore/android/common/http/RequestVo;->connectionTimeout:I

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/yulore/android/common/http/RequestVo;->connectionTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 239
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/yulore/android/common/http/RequestVo;->soTimeout:I

    move/from16 v17, v0

    if-lez v17, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/yulore/android/common/http/RequestVo;->soTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 243
    :cond_3
    invoke-virtual {v14, v13}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 244
    const-string v17, "Accept-Encoding"

    const-string v18, "gzip"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulore/android/common/http/RequestVo;->headers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulore/android/common/http/RequestVo;->headers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulore/android/common/http/RequestVo;->headers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 247
    .local v10, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    .end local v10    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/16 v16, 0x0

    .line 252
    .local v16, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulore/android/common/http/RequestVo;->requestDataMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 253
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v12, "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulore/android/common/http/RequestVo;->requestDataMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 255
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v11, "pair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 258
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "pair":Lorg/apache/http/message/BasicNameValuePair;
    :cond_5
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v6, v12, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 259
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v14, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 261
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v12    # "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_6
    invoke-interface {v2, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 263
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 265
    .local v3, "code":I
    const-string v17, "YuloreIVRCommon"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "server response status code="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v3, v0, :cond_a

    .line 268
    const/4 v8, 0x0

    .line 270
    .local v8, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 271
    const-string v17, "Content-Encoding"

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 272
    .local v4, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v4, :cond_7

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "gzip"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 273
    const-string v17, "YuloreIVRCommon"

    const-string v18, "gzip InputStream in post"

    invoke-static/range {v17 .. v18}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v8    # "in":Ljava/io/InputStream;
    .local v9, "in":Ljava/io/InputStream;
    move-object v8, v9

    .line 276
    .end local v9    # "in":Ljava/io/InputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    :cond_7
    invoke-static {v8}, Lcom/yulore/android/common/http/NetUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulore/android/common/http/RequestVo;->callback:Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulore/android/common/http/RequestVo;->callback:Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulore/android/common/http/RequestVo;->callback:Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;

    move-object/from16 v17, v0

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;->processHeaders([Lorg/apache/http/Header;)V

    .line 283
    :cond_8
    const-string v17, "YuloreIVRCommon"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    if-eqz v8, :cond_0

    .line 287
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 288
    :catch_0
    move-exception v5

    .line 289
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 285
    .end local v4    # "contentEncoding":Lorg/apache/http/Header;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    if-eqz v8, :cond_9

    .line 287
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 290
    :cond_9
    :goto_3
    throw v17

    .line 288
    :catch_1
    move-exception v5

    .line 289
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 294
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "in":Ljava/io/InputStream;
    :cond_a
    const-string v17, "YuloreIVRCommon"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "request error:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static post(Lcom/yulore/android/common/job/AsyncHttpRequest;)Ljava/lang/String;
    .locals 20
    .param p0, "req"    # Lcom/yulore/android/common/job/AsyncHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p0, :cond_1

    .line 76
    const/16 v16, 0x0

    .line 147
    :cond_0
    :goto_0
    return-object v16

    .line 79
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/yulore/android/common/http/NetUtils;->getNewHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 81
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    const-string v17, "YuloreIVRCommon"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " post AsyncHttpRequest url= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getReqUrl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getReqUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 84
    .local v14, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v13, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v13}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 85
    .local v13, "params":Lorg/apache/http/params/HttpParams;
    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getConnectionTimeout()I

    move-result v17

    if-lez v17, :cond_2

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getConnectionTimeout()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 88
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getSoTimeout()I

    move-result v17

    if-lez v17, :cond_3

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getSoTimeout()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 92
    :cond_3
    invoke-virtual {v14, v13}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 93
    const-string v17, "Accept-Encoding"

    const-string v18, "gzip"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 96
    .local v10, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    .end local v10    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/16 v16, 0x0

    .line 101
    .local v16, "result":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getRequestDataMap()Ljava/util/HashMap;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 103
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v12, "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/yulore/android/common/job/AsyncHttpRequest;->getRequestDataMap()Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 105
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v11, "pair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 108
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "pair":Lorg/apache/http/message/BasicNameValuePair;
    :cond_5
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v6, v12, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 109
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v14, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 112
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v12    # "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_6
    invoke-interface {v2, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 114
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 116
    .local v3, "code":I
    const-string v17, "YuloreIVRCommon"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "server response status code="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/yulore/android/common/job/AsyncHttpRequest;->setStatus(I)V

    .line 120
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v3, v0, :cond_9

    .line 121
    const/4 v8, 0x0

    .line 123
    .local v8, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 124
    const-string v17, "Content-Encoding"

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 125
    .local v4, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v4, :cond_7

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "gzip"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 126
    const-string v17, "YuloreIVRCommon"

    const-string v18, "gzip InputStream in post"

    invoke-static/range {v17 .. v18}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v8    # "in":Ljava/io/InputStream;
    .local v9, "in":Ljava/io/InputStream;
    move-object v8, v9

    .line 129
    .end local v9    # "in":Ljava/io/InputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    :cond_7
    invoke-static {v8}, Lcom/yulore/android/common/http/NetUtils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 131
    const-string v17, "YuloreIVRCommon"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/yulore/android/common/job/AsyncHttpRequest;->setResponseContent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v8, :cond_0

    .line 137
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 138
    :catch_0
    move-exception v5

    .line 139
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 135
    .end local v4    # "contentEncoding":Lorg/apache/http/Header;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    if-eqz v8, :cond_8

    .line 137
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 140
    :cond_8
    :goto_3
    throw v17

    .line 138
    :catch_1
    move-exception v5

    .line 139
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 144
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "in":Ljava/io/InputStream;
    :cond_9
    const-string v17, "YuloreIVRCommon"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "request error:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
