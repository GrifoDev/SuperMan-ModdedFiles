.class public Lcom/yulore/sdk/ivr/e/e;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method
