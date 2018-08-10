.class Lcom/android/server/EngineeringModeService$EMSConnectionTask;
.super Landroid/os/AsyncTask;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EMSConnectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final SERVER_URI2:Ljava/lang/String; = "https://kwb.secmobilesvc.com:7788/requestEmrToken.kwb"


# instance fields
.field public final SERVER_URI:Ljava/lang/String;

.field private mEmRequest:[B

.field private mResponseBody:[B

.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/EngineeringModeService;[B)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string/jumbo v0, "http://kwb.secmobilesvc.com/requestEmrToken.kwb"

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->SERVER_URI:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mEmRequest:[B

    return-void
.end method

.method private post([B)[B
    .locals 19

    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    const-string/jumbo v16, "https://kwb.secmobilesvc.com:7788/requestEmrToken.kwb"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v16, "EngineeringModeService"

    const-string/jumbo v17, "message is null. do not post operation"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/android/internal/http/multipart/FilePart;

    const-string/jumbo v16, "tokenreq"

    new-instance v17, Lcom/android/internal/http/multipart/ByteArrayPartSource;

    const-string/jumbo v18, "tokenreq"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/http/multipart/ByteArrayPartSource;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;)V

    const-string/jumbo v16, "multipart/form-data"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/internal/http/multipart/FilePart;->setContentType(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/internal/http/multipart/FilePart;->setCharSet(Ljava/lang/String;)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Lcom/android/internal/http/multipart/Part;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/android/internal/http/multipart/Part;

    new-instance v12, Lcom/android/internal/http/multipart/MultipartEntity;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v11, v0}, Lcom/android/internal/http/multipart/MultipartEntity;-><init>([Lcom/android/internal/http/multipart/Part;Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {v10, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v14

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    return-object v14

    :cond_1
    const-string/jumbo v16, "EngineeringModeService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Server returned HTTP error code "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v16, 0x0

    return-object v16

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/16 v16, 0x0

    return-object v16

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mEmRequest:[B

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->post([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mResponseBody:[B

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mResponseBody:[B

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mResponseBody:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3
.end method

.method public getResponseBody()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mResponseBody:[B

    return-object v0
.end method
