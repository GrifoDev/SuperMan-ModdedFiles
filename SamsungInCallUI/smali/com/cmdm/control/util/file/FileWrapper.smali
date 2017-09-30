.class public Lcom/cmdm/control/util/file/FileWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic et:Z


# instance fields
.field private eu:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/cmdm/control/util/file/FileWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/cmdm/control/util/file/FileWrapper;->et:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cmdm/control/util/file/FileWrapper;->eu:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    sget-boolean v0, Lcom/cmdm/control/util/file/FileWrapper;->et:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/cmdm/control/util/file/FileWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    check-cast p1, Lcom/cmdm/control/util/file/FileWrapper;

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileWrapper;->eu:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileWrapper;->eu:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/cmdm/control/util/file/FileWrapper;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/util/file/FileWrapper;->eu:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/cmdm/control/util/file/FileWrapper;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileWrapper;->eu:Ljava/io/File;

    return-object v0
.end method
