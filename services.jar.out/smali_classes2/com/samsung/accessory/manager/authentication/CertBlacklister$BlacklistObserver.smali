.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;
.super Landroid/database/ContentObserver;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlacklistObserver"
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mBlacklist:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mKey:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mTmpDir:Ljava/io/File;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;

    iput-object p4, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private writeBlacklist()V
    .locals 2

    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;

    const-string/jumbo v1, "BlacklistUpdater"

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->start()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isThisKeyBlacklisted(Ljava/lang/String;)Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CertBlacklister"

    const-string/jumbo v2, "This key is in blacklist"

    invoke-static {v0, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->writeBlacklist()V

    return-void
.end method

.method public readFile()V
    .locals 2

    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;

    const-string/jumbo v1, "BlacklistReader"

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->start()V

    return-void
.end method
