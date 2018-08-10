.class Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
.super Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;
.source "SeslLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z


# instance fields
.field mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

.field final mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRetaining:Z

.field mStarted:Z

.field final mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;-><init>()V

    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mWho:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iput-boolean p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    return-void
.end method


# virtual methods
.method doDestroy()V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    if-eqz v1, :cond_0

    :goto_0
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-gez v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v1, :cond_1

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_4
    if-gez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->clear()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Destroying Active in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SeslLoaderManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->destroy()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Destroying Inactive in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SeslLoaderManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->destroy()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method doReportNextStart()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method doReportStart()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->reportStart()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method doRetain()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v2, :cond_0

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-gez v1, :cond_2

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Retaining in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslLoaderManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called doRetain when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslLoaderManager"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->retain()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method doStart()V
    .locals 4

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v2, :cond_0

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-gez v1, :cond_2

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslLoaderManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called doStart when already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslLoaderManager"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->start()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method doStop()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v2, :cond_0

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-gez v1, :cond_2

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stopping in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslLoaderManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called doStop when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslLoaderManager"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->stop()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Active Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Inactive Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mInactiveLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method finishRetain()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v1, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->finishRetain()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finished Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SeslLoaderManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasRunningLoaders()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return v3

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mLoaders:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    iget-boolean v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v4, :cond_2

    :cond_1
    move v4, v5

    :goto_1
    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "SeslLoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateHostController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    return-void
.end method
