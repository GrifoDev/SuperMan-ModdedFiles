.class Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryCommitResult"
.end annotation


# instance fields
.field final keysModified:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mapToWriteToDisk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final memoryStateGeneration:J

.field wasWritten:Z

.field volatile writeToDiskResult:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWritingToDiskLock"
    .end annotation
.end field

.field final writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(JLjava/util/List;Ljava/util/Set;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v2, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    iput-boolean v2, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->wasWritten:Z

    iput-wide p1, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    iput-object p3, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    iput-object p4, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    iput-object p5, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(JLjava/util/List;Ljava/util/Set;Ljava/util/Map;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;-><init>(JLjava/util/List;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method setDiskWriteResult(ZZ)V
    .locals 1

    iput-boolean p1, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->wasWritten:Z

    iput-boolean p2, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
