.class abstract Ljava/lang/ProcessEnvironment$ExternalData;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ExternalData"
.end annotation


# instance fields
.field protected final bytes:[B

.field protected final str:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$ExternalData;->str:Ljava/lang/String;

    iput-object p2, p0, Ljava/lang/ProcessEnvironment$ExternalData;->bytes:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/lang/ProcessEnvironment$ExternalData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    move-result-object v0

    check-cast p1, Ljava/lang/ProcessEnvironment$ExternalData;

    invoke-virtual {p1}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/ProcessEnvironment;->-wrap0([B[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$ExternalData;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ProcessEnvironment;->-wrap2([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$ExternalData;->str:Ljava/lang/String;

    return-object v0
.end method
