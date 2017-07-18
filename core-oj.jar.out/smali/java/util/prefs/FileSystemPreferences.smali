.class public Ljava/util/prefs/FileSystemPreferences;
.super Ljava/util/prefs/AbstractPreferences;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/FileSystemPreferences$1;,
        Ljava/util/prefs/FileSystemPreferences$Change;,
        Ljava/util/prefs/FileSystemPreferences$NodeCreate;,
        Ljava/util/prefs/FileSystemPreferences$Put;,
        Ljava/util/prefs/FileSystemPreferences$Remove;
    }
.end annotation


# static fields
.field private static final EACCES:I = 0xd

.field private static final EAGAIN:I = 0xb

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final ERROR_CODE:I = 0x1

.field private static INIT_SLEEP_TIME:I = 0x0

.field private static final LOCK_HANDLE:I = 0x0

.field private static MAX_ATTEMPTS:I = 0x0

.field private static final USER_READ_WRITE:I = 0x180

.field private static final USER_RWX:I = 0x1c0

.field private static final USER_RWX_ALL_RX:I = 0x1ed

.field private static final USER_RW_ALL_READ:I = 0x1a4

.field private static isSystemRootModified:Z

.field private static isSystemRootWritable:Z

.field private static isUserRootModified:Z

.field private static isUserRootWritable:Z

.field static systemLockFile:Ljava/io/File;

.field static systemRoot:Ljava/util/prefs/Preferences;

.field private static systemRootDir:Ljava/io/File;

.field private static systemRootLockHandle:I

.field private static systemRootModFile:Ljava/io/File;

.field private static systemRootModTime:J

.field static userLockFile:Ljava/io/File;

.field static userRoot:Ljava/util/prefs/Preferences;

.field private static userRootDir:Ljava/io/File;

.field private static userRootLockHandle:I

.field private static userRootModFile:Ljava/io/File;

.field private static userRootModTime:J


# instance fields
.field final changeLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/prefs/FileSystemPreferences$Change;",
            ">;"
        }
    .end annotation
.end field

.field private final dir:Ljava/io/File;

.field private final isUserNode:Z

.field private lastSyncTime:J

.field nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

.field private prefsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsFile:Ljava/io/File;

.field private final tmpFile:Ljava/io/File;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get10()Ljava/io/File;
    .locals 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get11()J
    .locals 2

    sget-wide v0, Ljava/util/prefs/FileSystemPreferences;->userRootModTime:J

    return-wide v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    return v0
.end method

.method static synthetic -get3(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get5()Ljava/io/File;
    .locals 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get6()Ljava/io/File;
    .locals 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get7()J
    .locals 2

    sget-wide v0, Ljava/util/prefs/FileSystemPreferences;->systemRootModTime:J

    return-wide v0
.end method

.method static synthetic -get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get9()Ljava/io/File;
    .locals 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    return p0
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    return p0
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isUserRootWritable:Z

    return p0
.end method

.method static synthetic -set4(Ljava/io/File;)Ljava/io/File;
    .locals 0

    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic -set5(Ljava/io/File;)Ljava/io/File;
    .locals 0

    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic -set6(J)J
    .locals 0

    sput-wide p0, Ljava/util/prefs/FileSystemPreferences;->systemRootModTime:J

    return-wide p0
.end method

.method static synthetic -set7(Ljava/io/File;)Ljava/io/File;
    .locals 0

    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic -set8(Ljava/io/File;)Ljava/io/File;
    .locals 0

    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic -set9(J)J
    .locals 0

    sput-wide p0, Ljava/util/prefs/FileSystemPreferences;->userRootModTime:J

    return-wide p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1}, Ljava/util/prefs/FileSystemPreferences;->chmod(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/util/prefs/FileSystemPreferences;->nodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2()Lsun/util/logging/PlatformLogger;
    .locals 1

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3()V
    .locals 0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->syncWorld()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    sput v2, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    sput v2, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    sput-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    sput-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/util/prefs/FileSystemPreferences$1;

    invoke-direct {v1}, Ljava/util/prefs/FileSystemPreferences$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/16 v0, 0x32

    sput v0, Ljava/util/prefs/FileSystemPreferences;->INIT_SLEEP_TIME:I

    const/4 v0, 0x5

    sput v0, Ljava/util/prefs/FileSystemPreferences;->MAX_ATTEMPTS:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, ""

    invoke-direct {p0, v3, v0}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    iput-boolean p3, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    iget-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    new-instance v0, Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-direct {v0, p0, v3}, Ljava/util/prefs/FileSystemPreferences$NodeCreate;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$NodeCreate;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_2

    sput-object p2, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".rootmod"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sput-object p2, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".rootmod"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    goto :goto_1
.end method

.method private constructor <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    iget-boolean v0, p1, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    iput-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    invoke-static {p2}, Ljava/util/prefs/FileSystemPreferences;->dirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    new-instance v0, Ljava/util/prefs/FileSystemPreferences$4;

    invoke-direct {v0, p0}, Ljava/util/prefs/FileSystemPreferences$4;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    new-instance v0, Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-direct {v0, p0, v3}, Ljava/util/prefs/FileSystemPreferences$NodeCreate;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$NodeCreate;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    invoke-direct {p0, v2, v0}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iput-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    iput-boolean p1, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    :goto_0
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string/jumbo v2, "prefs.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    return-void

    :cond_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    goto :goto_0
.end method

.method private static byteArray(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v6, v4, 0x2

    new-array v5, v6, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    add-int/lit8 v3, v2, 0x1

    int-to-byte v6, v0

    aput-byte v6, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method private checkLockFile0ErrorCode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not lock "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "User prefs."

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " Lock file access denied."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "System prefs."

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not lock "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "User prefs. "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " Unix error code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v0, "System prefs."

    goto :goto_1
.end method

.method private static native chmod(Ljava/lang/String;I)I
.end method

.method private static dirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->isDirChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/util/prefs/FileSystemPreferences;->byteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/prefs/Base64;->byteArrayToAltBase64([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static getLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    const-string/jumbo v0, "java.util.prefs"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getSystemRoot()Ljava/util/prefs/Preferences;
    .locals 3

    const-class v1, Ljava/util/prefs/FileSystemPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->setupSystemRoot()V

    new-instance v0, Ljava/util/prefs/FileSystemPreferences;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/prefs/FileSystemPreferences;-><init>(Z)V

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;

    :cond_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getUserRoot()Ljava/util/prefs/Preferences;
    .locals 3

    const-class v1, Ljava/util/prefs/FileSystemPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->setupUserRoot()V

    new-instance v0, Ljava/util/prefs/FileSystemPreferences;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/prefs/FileSystemPreferences;-><init>(Z)V

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    :cond_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initCacheIfNecessary()V
    .locals 2

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->loadCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    goto :goto_0
.end method

.method private static isDirChar(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1f

    if-le p0, v1, :cond_0

    const/16 v1, 0x7f

    if-ge p0, v1, :cond_0

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5f

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadCache()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Ljava/util/prefs/XmlSupport;->importMap(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    instance-of v6, v0, Ljava/util/prefs/InvalidPreferencesFormatException;

    if-eqz v6, :cond_5

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid preferences format in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "IncorrectFormatPrefs.xml"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    :cond_1
    :goto_1
    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    iput-wide v4, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    return-void

    :catch_1
    move-exception v7

    goto :goto_0

    :catch_2
    move-exception v6

    :goto_2
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2
    :goto_4
    if-eqz v7, :cond_4

    :try_start_7
    throw v7

    :catch_3
    move-exception v8

    if-nez v7, :cond_3

    move-object v7, v8

    goto :goto_4

    :cond_3
    if-eq v7, v8, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_5
    instance-of v6, v0, Ljava/io/FileNotFoundException;

    if-eqz v6, :cond_6

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Prefs file removed in background "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception while reading cache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    new-instance v6, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v6, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :catchall_1
    move-exception v6

    goto :goto_3

    :catchall_2
    move-exception v6

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v6

    move-object v1, v2

    goto :goto_2
.end method

.method private lockFile(Z)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v7

    const/4 v2, 0x0

    if-eqz v7, :cond_0

    sget-object v4, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    :goto_0
    sget v10, Ljava/util/prefs/FileSystemPreferences;->INIT_SLEEP_TIME:I

    int-to-long v8, v10

    const/4 v3, 0x0

    :goto_1
    sget v10, Ljava/util/prefs/FileSystemPreferences;->MAX_ATTEMPTS:I

    if-ge v3, v10, :cond_4

    if-eqz v7, :cond_1

    const/16 v5, 0x180

    :goto_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5, p1}, Ljava/util/prefs/FileSystemPreferences;->lockFile0(Ljava/lang/String;IZ)[I

    move-result-object v6

    const/4 v10, 0x1

    aget v2, v6, v10

    const/4 v10, 0x0

    aget v10, v6, v10

    if-eqz v10, :cond_3

    if-eqz v7, :cond_2

    const/4 v10, 0x0

    aget v10, v6, v10

    sput v10, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v13

    :cond_0
    sget-object v4, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    goto :goto_0

    :cond_1
    const/16 v5, 0x1a4

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :try_start_1
    aget v10, v6, v10

    sput v10, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :cond_3
    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-direct {p0, v2}, Ljava/util/prefs/FileSystemPreferences;->checkLockFile0ErrorCode(I)V

    return v12

    :cond_4
    invoke-direct {p0, v2}, Ljava/util/prefs/FileSystemPreferences;->checkLockFile0ErrorCode(I)V

    return v12
.end method

.method private static native lockFile0(Ljava/lang/String;IZ)[I
.end method

.method private static nodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5f

    if-eq v6, v7, :cond_0

    return-object p0

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/prefs/Base64;->altBase64ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuffer;

    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-byte v6, v0, v2

    and-int/lit16 v1, v6, 0xff

    add-int/lit8 v2, v3, 0x1

    aget-byte v6, v0, v3

    and-int/lit16 v4, v6, 0xff

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v6, v4

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private replayChanges()V
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/prefs/FileSystemPreferences$Change;

    invoke-virtual {v2}, Ljava/util/prefs/FileSystemPreferences$Change;->replay()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static setupSystemRoot()V
    .locals 1

    new-instance v0, Ljava/util/prefs/FileSystemPreferences$3;

    invoke-direct {v0}, Ljava/util/prefs/FileSystemPreferences$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private static setupUserRoot()V
    .locals 1

    new-instance v0, Ljava/util/prefs/FileSystemPreferences$2;

    invoke-direct {v0}, Ljava/util/prefs/FileSystemPreferences$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private syncSpiPrivileged()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Node has been removed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    :goto_0
    if-eqz v2, :cond_6

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->loadCache()V

    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->replayChanges()V

    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    :cond_2
    :goto_1
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->writeBackCache()V

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_3

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    iput-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    iget-wide v4, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    :cond_3
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_4
    return-void

    :cond_5
    sget-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->replayChanges()V

    goto :goto_1
.end method

.method private static syncWorld()V
    .locals 6

    const-class v4, Ljava/util/prefs/FileSystemPreferences;

    monitor-enter v4

    :try_start_0
    sget-object v2, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    sget-object v1, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_1
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_2
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t flush user prefs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t flush system prefs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unlockFile()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    :goto_0
    if-eqz v3, :cond_1

    sget v1, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    :goto_1
    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unlock: zero lockHandle for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_2

    const-string/jumbo v4, "user"

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " preferences.)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    goto :goto_0

    :cond_1
    sget v1, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "system"

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->unlockFile0(I)I

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not drop file-lock on "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "user"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " preferences."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " Unix error code "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    const/16 v4, 0xd

    if-ne v2, v4, :cond_6

    new-instance v5, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not unlock"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "User prefs."

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " Lock file access denied."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    const-string/jumbo v4, "system"

    goto :goto_3

    :cond_5
    const-string/jumbo v4, "System prefs."

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v4

    if-eqz v4, :cond_7

    sput v7, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    :goto_5
    return-void

    :cond_7
    sput v7, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    goto :goto_5
.end method

.method private static native unlockFile0(I)I
.end method

.method private writeBackCache()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/prefs/FileSystemPreferences$5;

    invoke-direct {v1, p0}, Ljava/util/prefs/FileSystemPreferences$5;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/BackingStoreException;

    throw v1
.end method


# virtual methods
.method protected childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 1

    new-instance v0, Ljava/util/prefs/FileSystemPreferences;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/FileSystemPreferences;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V

    return-object v0
.end method

.method protected childrenNamesSpi()[Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/prefs/FileSystemPreferences$6;

    invoke-direct {v0, p0}, Ljava/util/prefs/FileSystemPreferences$6;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->sync()V

    return-void
.end method

.method protected flushSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    return-void
.end method

.method protected getSpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isUserNode()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    return v0
.end method

.method protected keysSpi()[Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    new-instance v1, Ljava/util/prefs/FileSystemPreferences$Put;

    invoke-direct {v1, p0, p1, p2}, Ljava/util/prefs/FileSystemPreferences$Put;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeNode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    :goto_0
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/prefs/FileSystemPreferences;->lockFile(Z)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/prefs/BackingStoreException;

    const-string/jumbo v2, "Couldn\'t get file lock."

    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-super {p0}, Ljava/util/prefs/AbstractPreferences;->removeNode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected removeNodeSpi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/prefs/FileSystemPreferences$7;

    invoke-direct {v1, p0}, Ljava/util/prefs/FileSystemPreferences$7;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/BackingStoreException;

    throw v1
.end method

.method protected removeSpi(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    new-instance v1, Ljava/util/prefs/FileSystemPreferences$Remove;

    invoke-direct {v1, p0, p1}, Ljava/util/prefs/FileSystemPreferences$Remove;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized sync()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    move-object v4, v3

    :goto_1
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v1}, Ljava/util/prefs/FileSystemPreferences;->lockFile(Z)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/prefs/BackingStoreException;

    const-string/jumbo v5, "Couldn\'t get file lock."

    invoke-direct {v3, v5}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_3
    sget-boolean v3, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v3

    goto :goto_1

    :cond_3
    :try_start_4
    new-instance v3, Ljava/util/prefs/FileSystemPreferences$8;

    invoke-direct {v3, p0}, Ljava/util/prefs/FileSystemPreferences$8;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-super {p0}, Ljava/util/prefs/AbstractPreferences;->sync()V

    new-instance v3, Ljava/util/prefs/FileSystemPreferences$9;

    invoke-direct {v3, p0, v0}, Ljava/util/prefs/FileSystemPreferences$9;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/Long;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v3

    :try_start_8
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method protected syncSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->syncSpiPrivileged()V

    return-void
.end method
