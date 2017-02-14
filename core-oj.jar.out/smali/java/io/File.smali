.class public Ljava/io/File;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/File$PathStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final fs:Ljava/io/FileSystem;

.field public static final pathSeparator:Ljava/lang/String;

.field public static final pathSeparatorChar:C

.field public static final separator:Ljava/lang/String;

.field public static final separatorChar:C

.field private static final serialVersionUID:J = 0x42da4450e0de4ffL


# instance fields
.field private path:Ljava/lang/String;

.field private transient prefixLength:I

.field private transient status:Ljava/io/File$PathStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/io/File;->-assertionsDisabled:Z

    invoke-static {}, Ljava/io/FileSystem;->getFileSystem()Ljava/io/FileSystem;

    move-result-object v0

    sput-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0}, Ljava/io/FileSystem;->getSeparator()C

    move-result v0

    sput-char v0, Ljava/io/File;->separatorChar:C

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0}, Ljava/io/FileSystem;->getPathSeparator()C

    move-result v0

    sput-char v0, Ljava/io/File;->pathSeparatorChar:C

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Ljava/io/File;->path:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1}, Ljava/io/FileSystem;->getDefaultParent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    :goto_0
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    return-void

    :cond_1
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    iput-object p1, p0, Ljava/io/File;->path:Ljava/lang/String;

    iput p2, p0, Ljava/io/File;->prefixLength:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    sget-boolean v2, Ljava/io/File;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p2, Ljava/io/File;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    sget-boolean v2, Ljava/io/File;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p2, Ljava/io/File;->path:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p2, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    iget v0, p2, Ljava/io/File;->prefixLength:I

    iput v0, p0, Ljava/io/File;->prefixLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    :goto_0
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    return-void

    :cond_2
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 4

    const/16 v3, 0x2f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI is not absolute"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI is not hierarchical"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI has an authority component"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI scheme is not \"file\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI has a fragment component"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI has a query component"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI path component is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->fromURIPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_7

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_7
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljava/io/File;->prefixLength:I

    return-void
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Prefix string too short"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, ".tmp"

    :cond_1
    if-eqz p2, :cond_3

    move-object v2, p2

    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p0, p1, v2}, Ljava/io/File;->generateTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Unable to create temporary file"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    if-nez p2, :cond_4

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Unable to create temporary file"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "java.io.tmpdir"

    const-string/jumbo v4, "."

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    throw v1

    :cond_5
    return-object v0
.end method

.method private static generateTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Math;->randomIntInternal()I

    move-result v1

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Unable to create temporary file"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static listRoots()[Ljava/io/File;
    .locals 1

    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0}, Ljava/io/FileSystem;->listRoots()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string/jumbo v3, "path"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_0

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-object v3, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v3, v1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljava/io/File;->prefixLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private static slashify(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2f

    move-object v0, p0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v1, v2, :cond_0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeChar(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public canExecute()Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public canRead()Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public canWrite()Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public compareTo(Ljava/io/File;)I
    .locals 1

    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0, p1}, Ljava/io/FileSystem;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public createNewFile()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid file path"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/FileSystem;->createFileExclusively(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public delete()Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->delete(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public deleteOnExit()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/DeleteOnExitHook;->add(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public exists()Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public getAbsoluteFile()Ljava/io/File;
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->resolve(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid file path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->resolve(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeSpace()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget v1, p0, Ljava/io/File;->prefixLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    iget v2, p0, Ljava/io/File;->prefixLength:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParent()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget v1, p0, Ljava/io/File;->prefixLength:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Ljava/io/File;->prefixLength:I

    if-lez v1, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Ljava/io/File;->prefixLength:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    iget v2, p0, Ljava/io/File;->prefixLength:I

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParentFile()Ljava/io/File;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    iget v2, p0, Ljava/io/File;->prefixLength:I

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method getPrefixLength()I
    .locals 1

    iget v0, p0, Ljava/io/File;->prefixLength:I

    return v0
.end method

.method public getTotalSpace()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUsableSpace()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v2

    return-wide v2
.end method

.method public hashCode()I
    .locals 1

    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->hashCode(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->isAbsolute(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isFile()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isHidden()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method final isInvalid()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v0, Ljava/io/File$PathStatus;->CHECKED:Ljava/io/File$PathStatus;

    :goto_0
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    :cond_0
    iget-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    sget-object v2, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    sget-object v0, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public lastModified()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getLastModifiedTime(Ljava/io/File;)J

    move-result-wide v2

    return-wide v2
.end method

.method public length()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getLength(Ljava/io/File;)J

    move-result-wide v2

    return-wide v2
.end method

.method public list()[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->list(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_3

    aget-object v3, v1, v0

    invoke-interface {p1, p0, v3}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public listFiles()[Ljava/io/File;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    array-length v2, v3

    new-array v0, v2, [Ljava/io/File;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    new-instance v4, Ljava/io/File;

    aget-object v5, v3, v1

    invoke-direct {v4, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v3, v4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/File;

    return-object v4
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    if-eqz p1, :cond_1

    invoke-interface {p1, p0, v1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/io/File;

    return-object v3
.end method

.method public mkdir()Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->createDirectory(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public mkdirs()Z
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    :cond_3
    return v3

    :catch_0
    move-exception v1

    return v3
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    return v1

    :cond_3
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0, p1}, Ljava/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public setExecutable(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setExecutable(ZZ)Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public setLastModified(J)Z
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Negative time"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0, p1, p2}, Ljava/io/FileSystem;->setLastModifiedTime(Ljava/io/File;J)Z

    move-result v1

    return v1
.end method

.method public setReadOnly()Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->setReadOnly(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public setReadable(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setReadable(ZZ)Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public setWritable(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setWritable(ZZ)Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    invoke-static {v3, v4}, Ljava/io/File;->slashify(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "//"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v3, Ljava/net/URI;

    const-string/jumbo v4, "file"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v1, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toURL()Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/MalformedURLException;

    const-string/jumbo v1, "Invalid file path"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    const-string/jumbo v1, "file"

    const-string/jumbo v2, ""

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    invoke-static {v3, v4}, Ljava/io/File;->slashify(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
