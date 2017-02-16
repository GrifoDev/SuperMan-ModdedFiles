.class public final enum Lsun/net/ftp/FtpDirEntry$Type;
.super Ljava/lang/Enum;
.source "FtpDirEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/FtpDirEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/net/ftp/FtpDirEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/net/ftp/FtpDirEntry$Type;

.field public static final enum CDIR:Lsun/net/ftp/FtpDirEntry$Type;

.field public static final enum DIR:Lsun/net/ftp/FtpDirEntry$Type;

.field public static final enum FILE:Lsun/net/ftp/FtpDirEntry$Type;

.field public static final enum LINK:Lsun/net/ftp/FtpDirEntry$Type;

.field public static final enum PDIR:Lsun/net/ftp/FtpDirEntry$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lsun/net/ftp/FtpDirEntry$Type;

    const-string/jumbo v1, "FILE"

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpDirEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    new-instance v0, Lsun/net/ftp/FtpDirEntry$Type;

    const-string/jumbo v1, "DIR"

    invoke-direct {v0, v1, v3}, Lsun/net/ftp/FtpDirEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    new-instance v0, Lsun/net/ftp/FtpDirEntry$Type;

    const-string/jumbo v1, "PDIR"

    invoke-direct {v0, v1, v4}, Lsun/net/ftp/FtpDirEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Type;->PDIR:Lsun/net/ftp/FtpDirEntry$Type;

    new-instance v0, Lsun/net/ftp/FtpDirEntry$Type;

    const-string/jumbo v1, "CDIR"

    invoke-direct {v0, v1, v5}, Lsun/net/ftp/FtpDirEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Type;->CDIR:Lsun/net/ftp/FtpDirEntry$Type;

    new-instance v0, Lsun/net/ftp/FtpDirEntry$Type;

    const-string/jumbo v1, "LINK"

    invoke-direct {v0, v1, v6}, Lsun/net/ftp/FtpDirEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Type;->LINK:Lsun/net/ftp/FtpDirEntry$Type;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Lsun/net/ftp/FtpDirEntry$Type;

    sget-object v1, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    aput-object v1, v0, v3

    sget-object v1, Lsun/net/ftp/FtpDirEntry$Type;->PDIR:Lsun/net/ftp/FtpDirEntry$Type;

    aput-object v1, v0, v4

    sget-object v1, Lsun/net/ftp/FtpDirEntry$Type;->CDIR:Lsun/net/ftp/FtpDirEntry$Type;

    aput-object v1, v0, v5

    sget-object v1, Lsun/net/ftp/FtpDirEntry$Type;->LINK:Lsun/net/ftp/FtpDirEntry$Type;

    aput-object v1, v0, v6

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Type;->$VALUES:[Lsun/net/ftp/FtpDirEntry$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lsun/net/ftp/FtpDirEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/ftp/FtpDirEntry$Type;

    return-object v0
.end method

.method public static values()[Lsun/net/ftp/FtpDirEntry$Type;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lsun/net/ftp/FtpDirEntry$Type;->$VALUES:[Lsun/net/ftp/FtpDirEntry$Type;

    return-object v0
.end method
