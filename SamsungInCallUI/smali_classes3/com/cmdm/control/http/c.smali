.class public Lcom/cmdm/control/http/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"


# instance fields
.field private bK:I

.field private bL:I

.field private bM:Lorg/apache/http/client/HttpClient;

.field private bN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x9c40

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v1, p0, Lcom/cmdm/control/http/c;->bK:I

    .line 56
    iput v1, p0, Lcom/cmdm/control/http/c;->bL:I

    .line 57
    iput-object v0, p0, Lcom/cmdm/control/http/c;->mContext:Landroid/content/Context;

    .line 58
    iput-object v0, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 59
    iput-object v0, p0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/cmdm/control/http/c;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/cmdm/control/http/c;->bi()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionTimeout"    # I
    .param p3, "soTimeout"    # I

    .prologue
    const v1, 0x9c40

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v1, p0, Lcom/cmdm/control/http/c;->bK:I

    .line 56
    iput v1, p0, Lcom/cmdm/control/http/c;->bL:I

    .line 57
    iput-object v0, p0, Lcom/cmdm/control/http/c;->mContext:Landroid/content/Context;

    .line 58
    iput-object v0, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 59
    iput-object v0, p0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Lcom/cmdm/control/http/c;->mContext:Landroid/content/Context;

    .line 74
    iput p2, p0, Lcom/cmdm/control/http/c;->bK:I

    .line 75
    iput p3, p0, Lcom/cmdm/control/http/c;->bL:I

    .line 76
    invoke-direct {p0}, Lcom/cmdm/control/http/c;->bi()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 77
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)V
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v5, 0x0

    .line 797
    const-string v3, "X-Notify"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 798
    .local v1, "headers":[Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 799
    aget-object v3, v1, v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 800
    aget-object v3, v1, v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 802
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.ycx.recbroad"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "gototab"

    const-string v4, "update"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    const-string v3, "X-Notify"

    aget-object v4, v1, v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    iget-object v3, p0, Lcom/cmdm/control/http/c;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 808
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "Date"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 809
    .local v0, "header_distance":[Lorg/apache/http/Header;
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 810
    aget-object v3, v0, v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 811
    aget-object v3, v0, v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 812
    aget-object v3, v0, v5

    .line 813
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 812
    invoke-static {v3}, Lcom/cmdm/control/util/UTCCode;->utc2Local(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/cmdm/control/util/client/Setting;->saveDistanceTime(Ljava/lang/Long;)V

    .line 815
    :cond_1
    return-void
.end method

.method private bh()Ljava/lang/String;
    .locals 3

    .prologue
    .line 878
    :try_start_0
    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 883
    :goto_0
    return-object v1

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 883
    const-string v1, ""

    goto :goto_0
.end method

.method private bi()Lorg/apache/http/client/HttpClient;
    .locals 14

    .prologue
    .line 824
    new-instance v9, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v9}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 827
    .local v9, "httpParams":Lorg/apache/http/params/HttpParams;
    iget v0, p0, Lcom/cmdm/control/http/c;->bK:I

    .line 826
    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 828
    iget v0, p0, Lcom/cmdm/control/http/c;->bL:I

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 829
    const/16 v0, 0x2000

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 831
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 833
    invoke-direct {p0}, Lcom/cmdm/control/http/c;->bh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 835
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 836
    .local v8, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v0, p0, Lcom/cmdm/control/http/c;->mContext:Landroid/content/Context;

    .line 837
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 836
    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 838
    .local v13, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 840
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 841
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 843
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/http/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 844
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 843
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 845
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    const-string v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 847
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 851
    .local v12, "proxyStr":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 852
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 854
    .local v10, "port":I
    new-instance v11, Lorg/apache/http/HttpHost;

    invoke-direct {v11, v12, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 855
    .local v11, "proxy":Lorg/apache/http/HttpHost;
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 856
    const-string v2, "http.route.default-proxy"

    .line 855
    invoke-interface {v0, v2, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    .end local v10    # "port":I
    .end local v11    # "proxy":Lorg/apache/http/HttpHost;
    .end local v12    # "proxyStr":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 863
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 868
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    .line 859
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 860
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 862
    if-eqz v6, :cond_1

    .line 863
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 864
    const/4 v6, 0x0

    goto :goto_0

    .line 861
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 862
    if-eqz v6, :cond_2

    .line 863
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 864
    const/4 v6, 0x0

    .line 866
    :cond_2
    throw v0
.end method

.method private m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 785
    new-instance v0, Lcom/cmdm/control/exception/a;

    invoke-direct {v0, p2}, Lcom/cmdm/control/exception/a;-><init>(Ljava/lang/String;)V

    .line 786
    .local v0, "cyException":Lcom/cmdm/control/exception/a;
    invoke-virtual {v0, p1}, Lcom/cmdm/control/exception/a;->d(I)V

    .line 787
    return-object v0
.end method


# virtual methods
.method public W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public a(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    .locals 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    .line 275
    .local p3, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 278
    .local v7, "reqEntity":Lorg/apache/http/entity/FileEntity;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 279
    .local v3, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p3, :cond_0

    .line 280
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 285
    :cond_0
    new-instance v8, Lorg/apache/http/entity/FileEntity;

    const-string v13, "binary/octet-stream"

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v13}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .local v8, "reqEntity":Lorg/apache/http/entity/FileEntity;
    :try_start_1
    invoke-virtual {v3, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 288
    const/4 v1, 0x0

    .line 290
    .local v1, "br":Ljava/io/BufferedReader;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    if-eqz v13, :cond_1

    .line 291
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 295
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 296
    .local v10, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/cmdm/control/http/c;->a(Lorg/apache/http/HttpResponse;)V

    .line 297
    const/4 v13, 0x0

    .line 298
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 297
    invoke-interface {v11, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 299
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 300
    .local v9, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 301
    .local v4, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    .end local v1    # "br":Ljava/io/BufferedReader;
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 302
    .restart local v1    # "br":Ljava/io/BufferedReader;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v12, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 307
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 308
    const/4 v13, 0x1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    :cond_2
    const/4 v13, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 329
    const/4 v7, 0x0

    .line 338
    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    return-object v11

    .line 280
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 281
    .local v5, "k":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v3, v5, v13}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 310
    .end local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "k":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const/16 v13, 0x11

    .line 312
    :try_start_4
    const-string v14, "\u7f51\u7edc\u8bf7\u6c42\u7f16\u7801\u9519\u8bef"

    .line 311
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 326
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v13

    .line 328
    :goto_3
    const/4 v14, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 329
    const/4 v7, 0x0

    .line 334
    throw v13

    .line 305
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_6
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 310
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_2

    .line 313
    .end local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v2

    .line 314
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_4
    const/4 v13, 0x2

    .line 315
    :try_start_7
    const-string v14, "\u534f\u8bae\u5f02\u5e38\uff08\u91cd\u5b9a\u5411\uff09"

    .line 314
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 316
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/IllegalStateException;
    :goto_5
    const/4 v13, 0x3

    .line 318
    const-string v14, "\u91cd\u590d\u8bf7\u6c42\u64cd\u4f5c\u5f02\u5e38"

    .line 317
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 320
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v2

    .line 321
    .local v2, "e":Ljava/io/IOException;
    :goto_6
    const/4 v13, 0x4

    .line 322
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 321
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 323
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_7
    const/4 v13, 0x5

    .line 325
    const-string v14, "\u7a0b\u5e8f\u5f02\u5e38"

    .line 324
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 330
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_6
    move-exception v2

    .line 331
    .local v2, "e":Ljava/lang/Exception;
    const/4 v13, 0x4

    .line 332
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 331
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 330
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :catch_7
    move-exception v2

    .line 331
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v13, 0x4

    .line 332
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 331
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 326
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_3

    .line 323
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    :catch_8
    move-exception v2

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_7

    .line 320
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    :catch_9
    move-exception v2

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_6

    .line 316
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    :catch_a
    move-exception v2

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_5

    .line 313
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    :catch_b
    move-exception v2

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;
    .locals 15
    .param p1, "xml_content"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    .line 509
    .local p3, "mParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .local p4, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 511
    .local v4, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    if-eqz p4, :cond_0

    .line 512
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 517
    :cond_0
    const/4 v1, 0x0

    .line 519
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v12, Lorg/apache/http/entity/StringEntity;

    const-string v13, "UTF-8"

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .local v12, "se":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v4, v12}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 523
    if-eqz p3, :cond_1

    .line 524
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v14, "UTF-8"

    move-object/from16 v0, p3

    invoke-direct {v13, v0, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 527
    :cond_1
    iget-object v13, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 528
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v9}, Lcom/cmdm/control/http/c;->a(Lorg/apache/http/HttpResponse;)V

    .line 529
    const/4 v13, 0x0

    .line 530
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 529
    invoke-interface {v10, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 531
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 532
    .local v8, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 533
    .local v5, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .local v11, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 539
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 540
    const/4 v13, 0x1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 558
    :cond_2
    const/4 v13, 0x0

    :try_start_2
    iput-object v13, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 559
    if-eqz v2, :cond_3

    .line 560
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 568
    :cond_3
    return-object v10

    .line 512
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 513
    .local v6, "k":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v6, v13}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 537
    .end local v6    # "k":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_5
    :try_start_3
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 543
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 545
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "se":Lorg/apache/http/entity/StringEntity;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    const/4 v13, 0x2

    .line 546
    :try_start_4
    const-string v14, "\u534f\u8bae\u5f02\u5e38\uff08\u91cd\u5b9a\u5411\uff09"

    .line 545
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 556
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v13

    .line 558
    :goto_3
    const/4 v14, 0x0

    :try_start_5
    iput-object v14, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 559
    if-eqz v1, :cond_6

    .line 560
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 566
    :cond_6
    throw v13

    .line 547
    :catch_1
    move-exception v3

    .line 548
    .local v3, "e":Ljava/lang/IllegalStateException;
    :goto_4
    const/4 v13, 0x3

    .line 549
    :try_start_6
    const-string v14, "\u91cd\u590d\u8bf7\u6c42\u64cd\u4f5c\u5f02\u5e38"

    .line 548
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 550
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    .line 551
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    const/4 v13, 0x4

    .line 552
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 551
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 553
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 554
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_6
    const/4 v13, 0x5

    .line 555
    const-string v14, "\u7a0b\u5e8f\u5f02\u5e38"

    .line 554
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 562
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v3

    .line 563
    .local v3, "e":Ljava/io/IOException;
    const/4 v13, 0x4

    .line 564
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 563
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 562
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_5
    move-exception v3

    .line 563
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v13, 0x4

    .line 564
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 563
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 556
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v13

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 553
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 550
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 547
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 543
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_9
    move-exception v3

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    .locals 16
    .param p1, "xml_content"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    .line 357
    .local p3, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 359
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p3, :cond_0

    .line 360
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 366
    :cond_0
    const/4 v1, 0x0

    .line 368
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v12, Lorg/apache/http/entity/StringEntity;

    const-string v13, "UTF-8"

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .local v12, "se":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v4, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    if-eqz v13, :cond_1

    .line 373
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 376
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 378
    .local v9, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/cmdm/control/http/c;->a(Lorg/apache/http/HttpResponse;)V

    .line 379
    const/4 v13, 0x0

    .line 380
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 379
    invoke-interface {v10, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 381
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 382
    .local v8, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 383
    .local v5, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v11, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_4

    .line 389
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 390
    const/4 v13, 0x1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 408
    return-object v10

    .line 360
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 361
    .local v6, "k":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v6, v13}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    .end local v6    # "k":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_4
    :try_start_2
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 392
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 393
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "se":Lorg/apache/http/entity/StringEntity;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    const/4 v13, 0x2

    .line 394
    :try_start_3
    const-string v14, "\u534f\u8bae\u5f02\u5e38\uff08\u91cd\u5b9a\u5411\uff09"

    .line 393
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v13

    .line 405
    :goto_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 406
    throw v13

    .line 395
    :catch_1
    move-exception v3

    .line 396
    .local v3, "e":Ljava/lang/IllegalStateException;
    :goto_4
    const/4 v13, 0x3

    .line 397
    :try_start_4
    const-string v14, "\u91cd\u590d\u8bf7\u6c42\u64cd\u4f5c\u5f02\u5e38"

    .line 396
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 398
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    .line 399
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    const/4 v13, 0x4

    .line 400
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 399
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 401
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 402
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_6
    const/4 v13, 0x5

    .line 403
    const-string v14, "\u7a0b\u5e8f\u5f02\u5e38"

    .line 402
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 404
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "se":Lorg/apache/http/entity/StringEntity;
    :catchall_1
    move-exception v13

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 401
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 398
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 395
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 392
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_7
    move-exception v3

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    .line 429
    .local p2, "mParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .local p3, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 430
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 434
    .local v4, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    if-eqz p3, :cond_0

    .line 435
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 441
    :cond_0
    if-eqz p2, :cond_1

    .line 442
    new-instance v12, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v13, "UTF-8"

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 445
    :cond_1
    iget-object v12, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    invoke-interface {v12, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 446
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v9}, Lcom/cmdm/control/http/c;->a(Lorg/apache/http/HttpResponse;)V

    .line 447
    const/4 v12, 0x0

    .line 448
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 447
    invoke-interface {v10, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 449
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 450
    .local v8, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 451
    .local v5, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v11, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_6

    .line 457
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 458
    const/4 v12, 0x1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 475
    :cond_2
    const/4 v12, 0x0

    :try_start_2
    iput-object v12, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 476
    if-eqz v2, :cond_3

    .line 477
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 484
    :cond_3
    return-object v10

    .line 435
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_4
    :try_start_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 436
    .local v6, "k":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v4, v6, v12}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 461
    .end local v4    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .end local v6    # "k":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 462
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    const/4 v12, 0x2

    .line 463
    :try_start_4
    const-string v13, "\u534f\u8bae\u5f02\u5e38\uff08\u91cd\u5b9a\u5411\uff09"

    .line 462
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 473
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v12

    .line 475
    :goto_3
    const/4 v13, 0x0

    :try_start_5
    iput-object v13, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 476
    if-eqz v1, :cond_5

    .line 477
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 483
    :cond_5
    throw v12

    .line 455
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_6
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 461
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 464
    .end local v4    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v3

    .line 465
    .local v3, "e":Ljava/lang/IllegalStateException;
    :goto_4
    const/4 v12, 0x3

    .line 466
    :try_start_7
    const-string v13, "\u91cd\u590d\u8bf7\u6c42\u64cd\u4f5c\u5f02\u5e38"

    .line 465
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12

    .line 467
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v3

    .line 468
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    const/4 v12, 0x4

    .line 469
    const-string v13, "\u7f51\u7edc\u5f02\u5e38"

    .line 468
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12

    .line 470
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 471
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_6
    const/4 v12, 0x5

    .line 472
    const-string v13, "\u7a0b\u5e8f\u5f02\u5e38"

    .line 471
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 479
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v3

    .line 480
    .local v3, "e":Ljava/io/IOException;
    const/4 v12, 0x4

    .line 481
    const-string v13, "\u7f51\u7edc\u5f02\u5e38"

    .line 480
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12

    .line 479
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v3

    .line 480
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v12, 0x4

    .line 481
    const-string v13, "\u7f51\u7edc\u5f02\u5e38"

    .line 480
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12

    .line 473
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v12

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 470
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 467
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 464
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_9
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 116
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v8, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v8}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 120
    .local v8, "localContext":Lorg/apache/http/protocol/HttpContext;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 121
    .local v4, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p2, :cond_0

    .line 122
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 127
    :cond_0
    iget-object v13, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v4, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 128
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v10}, Lcom/cmdm/control/http/c;->a(Lorg/apache/http/HttpResponse;)V

    .line 130
    const/4 v13, 0x0

    .line 131
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 130
    invoke-interface {v11, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 133
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 135
    .local v9, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 137
    .local v5, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v12, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 143
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 144
    const/4 v13, 0x1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    :cond_1
    const/4 v13, 0x0

    :try_start_2
    iput-object v13, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 168
    if-eqz v2, :cond_2

    .line 169
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 177
    :cond_2
    return-object v11

    .line 122
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    :try_start_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 123
    .local v6, "k":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v6, v13}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 149
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "k":Ljava/lang/String;
    .end local v8    # "localContext":Lorg/apache/http/protocol/HttpContext;
    :catch_0
    move-exception v3

    .line 151
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    const/4 v13, 0x2

    .line 152
    :try_start_4
    const-string v14, "\u534f\u8bae\u5f02\u5e38\uff08\u91cd\u5b9a\u5411\uff09"

    .line 151
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v13

    .line 167
    :goto_3
    const/4 v14, 0x0

    :try_start_5
    iput-object v14, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 168
    if-eqz v1, :cond_4

    .line 169
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 175
    :cond_4
    throw v13

    .line 141
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "localContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_6
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 149
    .end local v7    # "line":Ljava/lang/String;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 153
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "localContext":Lorg/apache/http/protocol/HttpContext;
    .end local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/IllegalStateException;
    :goto_4
    const/4 v13, 0x3

    .line 156
    :try_start_7
    const-string v14, "\u91cd\u590d\u8bf7\u6c42\u64cd\u4f5c\u5f02\u5e38"

    .line 155
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 157
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v3

    .line 159
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    const/4 v13, 0x4

    .line 160
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 159
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 161
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 163
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_6
    const/4 v13, 0x5

    .line 164
    const-string v14, "\u7a0b\u5e8f\u5f02\u5e38"

    .line 163
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 171
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v3

    .line 172
    .local v3, "e":Ljava/io/IOException;
    const/4 v13, 0x4

    .line 173
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 172
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 171
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "localContext":Lorg/apache/http/protocol/HttpContext;
    .restart local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v3

    .line 172
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v13, 0x4

    .line 173
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 172
    invoke-direct {p0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 165
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v13

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 161
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 157
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 153
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_9
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public b(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    .locals 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    .line 575
    .local p3, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 578
    .local v7, "reqEntity":Lorg/apache/http/entity/FileEntity;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 579
    .local v3, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    if-eqz p3, :cond_0

    .line 580
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 585
    :cond_0
    new-instance v8, Lorg/apache/http/entity/FileEntity;

    const-string v13, "binary/octet-stream"

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v13}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .local v8, "reqEntity":Lorg/apache/http/entity/FileEntity;
    :try_start_1
    invoke-virtual {v3, v8}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 588
    const/4 v1, 0x0

    .line 590
    .local v1, "br":Ljava/io/BufferedReader;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    if-eqz v13, :cond_1

    .line 591
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 595
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 596
    .local v10, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/cmdm/control/http/c;->a(Lorg/apache/http/HttpResponse;)V

    .line 597
    const/4 v13, 0x0

    .line 598
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 597
    invoke-interface {v11, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 599
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 600
    .local v9, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 601
    .local v4, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    .end local v1    # "br":Ljava/io/BufferedReader;
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 602
    .restart local v1    # "br":Ljava/io/BufferedReader;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v12, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 607
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 608
    const/4 v13, 0x1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 628
    :cond_2
    const/4 v13, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 629
    const/4 v7, 0x0

    .line 638
    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    return-object v11

    .line 580
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 581
    .local v5, "k":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v3, v5, v13}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 610
    .end local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .end local v5    # "k":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 611
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const/16 v13, 0x11

    .line 612
    :try_start_4
    const-string v14, "\u7f51\u7edc\u8bf7\u6c42\u7f16\u7801\u9519\u8bef"

    .line 611
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 626
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v13

    .line 628
    :goto_3
    const/4 v14, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 629
    const/4 v7, 0x0

    .line 634
    throw v13

    .line 605
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_6
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 610
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_2

    .line 613
    .end local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    :catch_2
    move-exception v2

    .line 614
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_4
    const/4 v13, 0x2

    .line 615
    :try_start_7
    const-string v14, "\u534f\u8bae\u5f02\u5e38\uff08\u91cd\u5b9a\u5411\uff09"

    .line 614
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 616
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v2

    .line 617
    .local v2, "e":Ljava/lang/IllegalStateException;
    :goto_5
    const/4 v13, 0x3

    .line 618
    const-string v14, "\u91cd\u590d\u8bf7\u6c42\u64cd\u4f5c\u5f02\u5e38"

    .line 617
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 620
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v2

    .line 621
    .local v2, "e":Ljava/io/IOException;
    :goto_6
    const/4 v13, 0x4

    .line 622
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 621
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 623
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 624
    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_7
    const/4 v13, 0x5

    .line 625
    const-string v14, "\u7a0b\u5e8f\u5f02\u5e38"

    .line 624
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 630
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_6
    move-exception v2

    .line 631
    .local v2, "e":Ljava/lang/Exception;
    const/4 v13, 0x4

    .line 632
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 631
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 630
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :catch_7
    move-exception v2

    .line 631
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v13, 0x4

    .line 632
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 631
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 626
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_3

    .line 623
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    :catch_8
    move-exception v2

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_7

    .line 620
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    :catch_9
    move-exception v2

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_6

    .line 616
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    :catch_a
    move-exception v2

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_5

    .line 613
    .end local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    :catch_b
    move-exception v2

    move-object v7, v8

    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v7    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    goto :goto_4
.end method

.method public b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    .line 196
    .local p2, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 198
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    .line 199
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 203
    :cond_0
    const/4 v1, 0x0

    .line 208
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v12, p0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    if-eqz v12, :cond_1

    .line 209
    new-instance v12, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v13, p0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    const-string v14, "UTF-8"

    invoke-direct {v12, v13, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 212
    :cond_1
    iget-object v12, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    invoke-interface {v12, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 214
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v9}, Lcom/cmdm/control/http/c;->a(Lorg/apache/http/HttpResponse;)V

    .line 215
    const/4 v12, 0x0

    .line 216
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 215
    invoke-interface {v10, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 217
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 218
    .local v8, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 219
    .local v5, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v11, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 225
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 226
    const/4 v12, 0x1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 243
    :cond_2
    const/4 v12, 0x0

    :try_start_2
    iput-object v12, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 244
    if-eqz v2, :cond_3

    .line 245
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 255
    :cond_3
    return-object v10

    .line 199
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 200
    .local v6, "k":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v4, v6, v12}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v6    # "k":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_3
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 228
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 229
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    const/4 v12, 0x2

    .line 230
    :try_start_4
    const-string v13, "\u534f\u8bae\u5f02\u5e38\uff08\u91cd\u5b9a\u5411\uff09"

    .line 229
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v12

    .line 243
    :goto_3
    const/4 v13, 0x0

    :try_start_5
    iput-object v13, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 244
    if-eqz v1, :cond_6

    .line 245
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 251
    :cond_6
    throw v12

    .line 231
    :catch_1
    move-exception v3

    .line 232
    .local v3, "e":Ljava/lang/IllegalStateException;
    :goto_4
    const/4 v12, 0x3

    .line 233
    :try_start_6
    const-string v13, "\u91cd\u590d\u8bf7\u6c42\u64cd\u4f5c\u5f02\u5e38"

    .line 232
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12

    .line 234
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    .line 235
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    const/4 v12, 0x4

    .line 236
    const-string v13, "\u7f51\u7edc\u5f02\u5e38"

    .line 235
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12

    .line 237
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_6
    const/4 v12, 0x5

    .line 239
    const-string v13, "\u7a0b\u5e8f\u5f02\u5e38"

    .line 238
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 247
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v3

    .line 248
    .local v3, "e":Ljava/io/IOException;
    const/4 v12, 0x4

    .line 249
    const-string v13, "\u7f51\u7edc\u5f02\u5e38"

    .line 248
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12

    .line 247
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v3

    .line 248
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v12, 0x4

    .line 249
    const-string v13, "\u7f51\u7edc\u5f02\u5e38"

    .line 248
    invoke-direct {p0, v12, v13}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v12

    throw v12

    .line 240
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v12

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 237
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 234
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 231
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 228
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    :catch_9
    move-exception v3

    goto :goto_2
.end method

.method public c(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    .locals 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    .line 661
    .local p3, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 663
    .local v4, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    if-eqz p3, :cond_0

    .line 664
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 668
    :cond_0
    new-instance v8, Lorg/apache/http/entity/FileEntity;

    const-string v13, "binary/octet-stream"

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v13}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 670
    .local v8, "reqEntity":Lorg/apache/http/entity/FileEntity;
    const/4 v1, 0x0

    .line 672
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v4, v8}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    if-eqz v13, :cond_1

    .line 675
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 678
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 679
    .local v10, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/cmdm/control/http/c;->a(Lorg/apache/http/HttpResponse;)V

    .line 680
    const/4 v13, 0x0

    .line 681
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 680
    invoke-interface {v11, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 682
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 683
    .local v9, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 684
    .local v5, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .local v12, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 690
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 691
    const/4 v13, 0x1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 698
    :cond_2
    const/4 v13, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 699
    const/4 v8, 0x0

    .line 700
    if-eqz v2, :cond_7

    .line 701
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v2

    .line 709
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    return-object v11

    .line 664
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 665
    .local v6, "k":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v6, v13}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 688
    .end local v6    # "k":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "reqEntity":Lorg/apache/http/entity/FileEntity;
    .restart local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_3
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 694
    .end local v7    # "line":Ljava/lang/String;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 695
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 698
    const/4 v13, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 699
    const/4 v8, 0x0

    .line 700
    if-eqz v1, :cond_3

    .line 701
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 703
    :catch_1
    move-exception v3

    .line 704
    .local v3, "e":Ljava/io/IOException;
    const/4 v13, 0x4

    .line 705
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 704
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 696
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 698
    :goto_4
    const/4 v14, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 699
    const/4 v8, 0x0

    .line 700
    if-eqz v1, :cond_6

    .line 701
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 707
    :cond_6
    throw v13

    .line 703
    :catch_2
    move-exception v3

    .line 704
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v13, 0x4

    .line 705
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 704
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 703
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v3

    .line 704
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v13, 0x4

    .line 705
    const-string v14, "\u7f51\u7edc\u5f02\u5e38"

    .line 704
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v13

    throw v13

    .line 696
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "line":Ljava/lang/String;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v13

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 694
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v3

    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public c(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    .line 729
    .local p2, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 731
    .local v3, "httpDelete":Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p2, :cond_0

    .line 732
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 736
    :cond_0
    const/4 v0, 0x0

    .line 740
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v11, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    invoke-interface {v11, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 741
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v8}, Lcom/cmdm/control/http/c;->a(Lorg/apache/http/HttpResponse;)V

    .line 742
    const/4 v11, 0x0

    .line 743
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 742
    invoke-interface {v9, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 744
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 745
    .local v7, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 746
    .local v4, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 749
    .local v10, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 752
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 753
    const/4 v11, 0x1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 769
    :cond_1
    const/4 v11, 0x0

    :try_start_2
    iput-object v11, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 770
    if-eqz v1, :cond_2

    .line 771
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 781
    :cond_2
    return-object v9

    .line 732
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 733
    .local v5, "k":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v3, v5, v11}, Lorg/apache/http/client/methods/HttpDelete;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    .end local v5    # "k":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_3
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 755
    .end local v6    # "line":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 756
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v7    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    const/4 v11, 0x2

    .line 757
    :try_start_4
    const-string v12, "\u534f\u8bae\u5f02\u5e38\uff08\u91cd\u5b9a\u5411\uff09"

    .line 756
    invoke-direct {p0, v11, v12}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v11

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 767
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v11

    .line 769
    :goto_3
    const/4 v12, 0x0

    :try_start_5
    iput-object v12, p0, Lcom/cmdm/control/http/c;->bM:Lorg/apache/http/client/HttpClient;

    .line 770
    if-eqz v0, :cond_5

    .line 771
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 777
    :cond_5
    throw v11

    .line 758
    :catch_1
    move-exception v2

    .line 759
    .local v2, "e":Ljava/lang/IllegalStateException;
    :goto_4
    const/4 v11, 0x3

    .line 760
    :try_start_6
    const-string v12, "\u91cd\u590d\u8bf7\u6c42\u64cd\u4f5c\u5f02\u5e38"

    .line 759
    invoke-direct {p0, v11, v12}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v11

    throw v11

    .line 761
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 762
    .local v2, "e":Ljava/io/IOException;
    :goto_5
    const/4 v11, 0x4

    .line 763
    const-string v12, "\u7f51\u7edc\u5f02\u5e38"

    .line 762
    invoke-direct {p0, v11, v12}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v11

    throw v11

    .line 764
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 765
    .local v2, "e":Ljava/lang/RuntimeException;
    :goto_6
    const/4 v11, 0x5

    .line 766
    const-string v12, "\u7a0b\u5e8f\u5f02\u5e38"

    .line 765
    invoke-direct {p0, v11, v12}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v11

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 773
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v2

    .line 774
    .local v2, "e":Ljava/io/IOException;
    const/4 v11, 0x4

    .line 775
    const-string v12, "\u7f51\u7edc\u5f02\u5e38"

    .line 774
    invoke-direct {p0, v11, v12}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v11

    throw v11

    .line 773
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v2

    .line 774
    .restart local v2    # "e":Ljava/io/IOException;
    const/4 v11, 0x4

    .line 775
    const-string v12, "\u7f51\u7edc\u5f02\u5e38"

    .line 774
    invoke-direct {p0, v11, v12}, Lcom/cmdm/control/http/c;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v11

    throw v11

    .line 767
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "line":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 764
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 761
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 758
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 755
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v7    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    :catch_9
    move-exception v2

    goto :goto_2
.end method

.method public v(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    iget-object v0, p0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/cmdm/control/http/c;->bN:Ljava/util/ArrayList;

    .line 97
    return-void
.end method
