.class Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;
.super Ljava/lang/Object;
.source "HttpsURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/net/ssl/HttpsURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field public static defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field public static final originalDefaultHostnameVerifierClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljavax/net/ssl/HostnameVerifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    const-string/jumbo v1, "com.android.okhttp.internal.tls.OkHostnameVerifier"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 201
    const-string/jumbo v2, "INSTANCE"

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 201
    const/4 v2, 0x0

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    check-cast v1, Ljavax/net/ssl/HostnameVerifier;

    sput-object v1, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 202
    sget-object v1, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->originalDefaultHostnameVerifierClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Failed to obtain okhttp HostnameVerifier"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
