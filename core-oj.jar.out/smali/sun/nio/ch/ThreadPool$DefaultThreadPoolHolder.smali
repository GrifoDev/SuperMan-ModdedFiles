.class Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultThreadPoolHolder"
.end annotation


# static fields
.field static final defaultThreadPool:Lsun/nio/ch/ThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/nio/ch/ThreadPool;->createDefault()Lsun/nio/ch/ThreadPool;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;->defaultThreadPool:Lsun/nio/ch/ThreadPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
