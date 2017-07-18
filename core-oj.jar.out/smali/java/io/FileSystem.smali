.class abstract Ljava/io/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field public static final ACCESS_EXECUTE:I = 0x1

.field public static final ACCESS_OK:I = 0x8

.field public static final ACCESS_READ:I = 0x4

.field public static final ACCESS_WRITE:I = 0x2

.field public static final BA_DIRECTORY:I = 0x4

.field public static final BA_EXISTS:I = 0x1

.field public static final BA_HIDDEN:I = 0x8

.field public static final BA_REGULAR:I = 0x2

.field public static final SPACE_FREE:I = 0x1

.field public static final SPACE_TOTAL:I = 0x0

.field public static final SPACE_USABLE:I = 0x2

.field static useCanonCaches:Z

.field static useCanonPrefixCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Ljava/io/FileSystem;->useCanonCaches:Z

    sput-boolean v0, Ljava/io/FileSystem;->useCanonPrefixCache:Z

    const-string/jumbo v0, "sun.io.useCanonCaches"

    sget-boolean v1, Ljava/io/FileSystem;->useCanonCaches:Z

    invoke-static {v0, v1}, Ljava/io/FileSystem;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljava/io/FileSystem;->useCanonCaches:Z

    const-string/jumbo v0, "sun.io.useCanonPrefixCache"

    sget-boolean v1, Ljava/io/FileSystem;->useCanonPrefixCache:Z

    invoke-static {v0, v1}, Ljava/io/FileSystem;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljava/io/FileSystem;->useCanonPrefixCache:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static native getFileSystem()Ljava/io/FileSystem;
.end method


# virtual methods
.method public abstract canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract checkAccess(Ljava/io/File;I)Z
.end method

.method public abstract compare(Ljava/io/File;Ljava/io/File;)I
.end method

.method public abstract createDirectory(Ljava/io/File;)Z
.end method

.method public abstract createFileExclusively(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract delete(Ljava/io/File;)Z
.end method

.method public abstract fromURIPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBooleanAttributes(Ljava/io/File;)I
.end method

.method public abstract getDefaultParent()Ljava/lang/String;
.end method

.method public abstract getLastModifiedTime(Ljava/io/File;)J
.end method

.method public abstract getLength(Ljava/io/File;)J
.end method

.method public abstract getPathSeparator()C
.end method

.method public abstract getSeparator()C
.end method

.method public abstract getSpace(Ljava/io/File;I)J
.end method

.method public abstract hashCode(Ljava/io/File;)I
.end method

.method public abstract isAbsolute(Ljava/io/File;)Z
.end method

.method public abstract list(Ljava/io/File;)[Ljava/lang/String;
.end method

.method public abstract listRoots()[Ljava/io/File;
.end method

.method public abstract normalize(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract prefixLength(Ljava/lang/String;)I
.end method

.method public abstract rename(Ljava/io/File;Ljava/io/File;)Z
.end method

.method public abstract resolve(Ljava/io/File;)Ljava/lang/String;
.end method

.method public abstract resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setLastModifiedTime(Ljava/io/File;J)Z
.end method

.method public abstract setPermission(Ljava/io/File;IZZ)Z
.end method

.method public abstract setReadOnly(Ljava/io/File;)Z
.end method
