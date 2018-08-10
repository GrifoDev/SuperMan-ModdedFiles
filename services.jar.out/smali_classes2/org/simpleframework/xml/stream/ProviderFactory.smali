.class final Lorg/simpleframework/xml/stream/ProviderFactory;
.super Ljava/lang/Object;
.source "ProviderFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/simpleframework/xml/stream/Provider;
    .locals 2

    :try_start_0
    new-instance v1, Lorg/simpleframework/xml/stream/StreamProvider;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/StreamProvider;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lorg/simpleframework/xml/stream/PullProvider;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/PullProvider;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/simpleframework/xml/stream/DocumentProvider;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/DocumentProvider;-><init>()V

    return-object v1
.end method
