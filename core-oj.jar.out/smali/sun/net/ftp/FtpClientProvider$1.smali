.class final Lsun/net/ftp/FtpClientProvider$1;
.super Ljava/lang/Object;
.source "FtpClientProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/ftp/FtpClientProvider;->provider()Lsun/net/ftp/FtpClientProvider;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-wrap1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-get0()Lsun/net/ftp/FtpClientProvider;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-wrap0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-get0()Lsun/net/ftp/FtpClientProvider;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lsun/net/ftp/impl/DefaultFtpClientProvider;

    invoke-direct {v0}, Lsun/net/ftp/impl/DefaultFtpClientProvider;-><init>()V

    invoke-static {v0}, Lsun/net/ftp/FtpClientProvider;->-set0(Lsun/net/ftp/FtpClientProvider;)Lsun/net/ftp/FtpClientProvider;

    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->-get0()Lsun/net/ftp/FtpClientProvider;

    move-result-object v0

    return-object v0
.end method
