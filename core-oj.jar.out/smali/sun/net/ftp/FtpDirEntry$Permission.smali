.class public final enum Lsun/net/ftp/FtpDirEntry$Permission;
.super Ljava/lang/Enum;
.source "FtpDirEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/FtpDirEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/net/ftp/FtpDirEntry$Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/net/ftp/FtpDirEntry$Permission;

.field public static final enum GROUP:Lsun/net/ftp/FtpDirEntry$Permission;

.field public static final enum OTHERS:Lsun/net/ftp/FtpDirEntry$Permission;

.field public static final enum USER:Lsun/net/ftp/FtpDirEntry$Permission;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lsun/net/ftp/FtpDirEntry$Permission;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v2, v2}, Lsun/net/ftp/FtpDirEntry$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Permission;->USER:Lsun/net/ftp/FtpDirEntry$Permission;

    new-instance v0, Lsun/net/ftp/FtpDirEntry$Permission;

    const-string/jumbo v1, "GROUP"

    invoke-direct {v0, v1, v3, v3}, Lsun/net/ftp/FtpDirEntry$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Permission;->GROUP:Lsun/net/ftp/FtpDirEntry$Permission;

    new-instance v0, Lsun/net/ftp/FtpDirEntry$Permission;

    const-string/jumbo v1, "OTHERS"

    invoke-direct {v0, v1, v4, v4}, Lsun/net/ftp/FtpDirEntry$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Permission;->OTHERS:Lsun/net/ftp/FtpDirEntry$Permission;

    const/4 v0, 0x3

    new-array v0, v0, [Lsun/net/ftp/FtpDirEntry$Permission;

    sget-object v1, Lsun/net/ftp/FtpDirEntry$Permission;->USER:Lsun/net/ftp/FtpDirEntry$Permission;

    aput-object v1, v0, v2

    sget-object v1, Lsun/net/ftp/FtpDirEntry$Permission;->GROUP:Lsun/net/ftp/FtpDirEntry$Permission;

    aput-object v1, v0, v3

    sget-object v1, Lsun/net/ftp/FtpDirEntry$Permission;->OTHERS:Lsun/net/ftp/FtpDirEntry$Permission;

    aput-object v1, v0, v4

    sput-object v0, Lsun/net/ftp/FtpDirEntry$Permission;->$VALUES:[Lsun/net/ftp/FtpDirEntry$Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lsun/net/ftp/FtpDirEntry$Permission;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry$Permission;
    .locals 1

    const-class v0, Lsun/net/ftp/FtpDirEntry$Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/ftp/FtpDirEntry$Permission;

    return-object v0
.end method

.method public static values()[Lsun/net/ftp/FtpDirEntry$Permission;
    .locals 1

    sget-object v0, Lsun/net/ftp/FtpDirEntry$Permission;->$VALUES:[Lsun/net/ftp/FtpDirEntry$Permission;

    return-object v0
.end method
