.class public Lcn/com/xy/sms/sdk/action/NearbyPoint;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final DO_GET_LOCATION:I = 0x1005

.field public static final GET_QUERY_URL_FAILURE:I = 0x1003

.field public static final QUERY_PARAM_ERROR:I = 0x1002

.field public static final QUERY_REQUEST_ERROR:I = 0x1004

.field public static final QUERY_RESULT:Ljava/lang/String; = "queryResult"

.field public static final QUERY_RESULT_RECEIVE:I = 0x1001


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcn/com/xy/sms/sdk/action/d;

.field private c:Landroid/os/Handler;

.field private d:D

.field private e:D

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/d;

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->g:I

    iput-object p2, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/com/xy/sms/sdk/action/NearbyPoint;)D
    .locals 2

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->d:D

    return-wide v0
.end method

.method static synthetic a(Lcn/com/xy/sms/sdk/action/NearbyPoint;Ljava/lang/String;DDII)Ljava/lang/String;
    .locals 10

    const-string/jumbo v0, "6a0ddfcfdf1a1e7a1f38501fc5d218bf"

    const/16 v6, 0x4e20

    const-string/jumbo v7, "json"

    const/4 v8, 0x2

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->a(Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;DDII)Ljava/lang/String;
    .locals 10

    const-string/jumbo v0, "6a0ddfcfdf1a1e7a1f38501fc5d218bf"

    const-string/jumbo v7, "json"

    const/4 v8, 0x2

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->a(Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;II)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_0

    if-lez p6, :cond_0

    const-string/jumbo v0, "json"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "http://android.bizport.cn:9998/AndroidWeb/getPlaceListAPI?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "query="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string/jumbo v0, "&lat="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "&lng="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "&radius="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "&scope="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "&page_num="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "&output="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "xml"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createMapQueryUrl: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method static synthetic b(Lcn/com/xy/sms/sdk/action/NearbyPoint;)D
    .locals 2

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->e:D

    return-wide v0
.end method

.method static synthetic c(Lcn/com/xy/sms/sdk/action/NearbyPoint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/com/xy/sms/sdk/action/NearbyPoint;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcn/com/xy/sms/sdk/action/NearbyPoint;)I
    .locals 1

    iget v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->g:I

    return v0
.end method


# virtual methods
.method public getLocationLatitude()D
    .locals 2

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->d:D

    return-wide v0
.end method

.method public getLocationLongitude()D
    .locals 2

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->e:D

    return-wide v0
.end method

.method public sendMapQueryUrl(Ljava/lang/String;DDI)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/d;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->f:Ljava/lang/String;

    iput-wide p2, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->d:D

    iput-wide p4, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->e:D

    iput p6, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->g:I

    new-instance v0, Lcn/com/xy/sms/sdk/action/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/xy/sms/sdk/action/d;-><init>(Lcn/com/xy/sms/sdk/action/NearbyPoint;B)V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/d;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/d;

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/action/d;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/d;

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/action/d;->isInterrupted()Z

    iput-object v1, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/d;

    goto :goto_0
.end method
