.class final Ljavax/crypto/CryptoPolicyParser;
.super Ljava/lang/Object;
.source "CryptoPolicyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/CryptoPolicyParser$ParsingException;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getPermissions()[Ljavax/crypto/CryptoPermission;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method read(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/CryptoPolicyParser$ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
