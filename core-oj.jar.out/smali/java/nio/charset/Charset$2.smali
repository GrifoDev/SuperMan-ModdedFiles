.class final Ljava/nio/charset/Charset$2;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/charset/Charset;->lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$charsetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/nio/charset/Charset$2;->val$charsetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/charset/Charset$2;->run()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/nio/charset/Charset;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/nio/charset/Charset;->-wrap0()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/spi/CharsetProvider;

    iget-object v3, p0, Ljava/nio/charset/Charset$2;->val$charsetName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/nio/charset/spi/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    return-object v4
.end method
