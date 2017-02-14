.class Lsun/net/www/MimeTable$DefaultInstanceHolder;
.super Ljava/lang/Object;
.source "MimeTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/MimeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultInstanceHolder"
.end annotation


# static fields
.field static final defaultInstance:Lsun/net/www/MimeTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/net/www/MimeTable$DefaultInstanceHolder;->getDefaultInstance()Lsun/net/www/MimeTable;

    move-result-object v0

    sput-object v0, Lsun/net/www/MimeTable$DefaultInstanceHolder;->defaultInstance:Lsun/net/www/MimeTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDefaultInstance()Lsun/net/www/MimeTable;
    .locals 1

    new-instance v0, Lsun/net/www/MimeTable$DefaultInstanceHolder$1;

    invoke-direct {v0}, Lsun/net/www/MimeTable$DefaultInstanceHolder$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/net/www/MimeTable;

    return-object v0
.end method
