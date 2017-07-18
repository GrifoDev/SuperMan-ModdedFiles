.class public Lsun/net/ftp/FtpDirEntry;
.super Ljava/lang/Object;
.source "FtpDirEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ftp/FtpDirEntry$Permission;,
        Lsun/net/ftp/FtpDirEntry$Type;
    }
.end annotation


# instance fields
.field private created:Ljava/util/Date;

.field private facts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private group:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private final name:Ljava/lang/String;

.field private permissions:[[Z

.field private size:J

.field private type:Lsun/net/ftp/FtpDirEntry$Type;

.field private user:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    sget-object v0, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    sget-object v0, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addFact(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .locals 2

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public canExexcute(Lsun/net/ftp/FtpDirEntry$Permission;)Z
    .locals 2

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    iget v1, p1, Lsun/net/ftp/FtpDirEntry$Permission;->value:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canRead(Lsun/net/ftp/FtpDirEntry$Permission;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    iget v1, p1, Lsun/net/ftp/FtpDirEntry$Permission;->value:I

    aget-object v0, v0, v1

    aget-boolean v0, v0, v2

    return v0

    :cond_0
    return v2
.end method

.method public canWrite(Lsun/net/ftp/FtpDirEntry$Permission;)Z
    .locals 2

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    iget v1, p1, Lsun/net/ftp/FtpDirEntry$Permission;->value:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getFact(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    return-wide v0
.end method

.method public getType()Lsun/net/ftp/FtpDirEntry$Type;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setCreated(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;
    .locals 0

    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .locals 0

    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    return-object p0
.end method

.method public setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;
    .locals 0

    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    return-object p0
.end method

.method public setPermissions([[Z)Lsun/net/ftp/FtpDirEntry;
    .locals 0

    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    return-object p0
.end method

.method public setSize(J)Lsun/net/ftp/FtpDirEntry;
    .locals 1

    iput-wide p1, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    return-object p0
.end method

.method public setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;
    .locals 0

    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .locals 0

    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
