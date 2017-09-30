.class public Lcom/samsung/android/sdk/ssf/file/io/MultiPart;
.super Ljava/lang/Object;


# instance fields
.field public auth_code:Ljava/lang/String;

.field public chunk_count:Ljava/lang/String;

.field public chunk_number:Ljava/lang/String;

.field public expired_time:Ljava/lang/Long;

.field private final mEnd:I

.field private final mStart:I

.field public multiParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/file/io/MultiPart;",
            ">;"
        }
    .end annotation
.end field

.field public mupload_key:Ljava/lang/String;

.field public oid:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public public_url:Ljava/lang/String;

.field public revision:Ljava/lang/String;

.field public size:Ljava/lang/Long;

.field public tag:Ljava/lang/String;

.field public timestamp:Ljava/lang/Long;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->multiParts:Ljava/util/List;

    iput p1, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->mStart:I

    iput p2, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->mEnd:I

    sub-int v0, p2, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->size:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getPublicUrl()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->public_url:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->public_url:Ljava/lang/String;

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRangeHeader()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->mStart:I

    return v0
.end method
