.class Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$1;
.super Lorg/apache/http/impl/cookie/BasicPathHandler;
.source "RFC6265CookieSpecProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$1;->this$0:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    return-void
.end method
