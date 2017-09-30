.class public Lcom/google/android/gms/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/b/n$c;,
        Lcom/google/android/gms/b/n$b;,
        Lcom/google/android/gms/b/n$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Lcom/google/android/gms/b/n$c;

.field private static final c:J


# instance fields
.field private final d:Lcom/google/android/gms/common/a/d;

.field private final e:Lcom/google/android/gms/b/n$a;

.field private final f:Ljava/lang/Object;

.field private g:J

.field private final h:J

.field private i:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/gms/common/api/c;

.field private final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/n;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/b/n$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/b/n$c;-><init>(Lcom/google/android/gms/b/n$1;)V

    sput-object v0, Lcom/google/android/gms/b/n;->b:Lcom/google/android/gms/b/n$c;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/b/n;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/a/e;

    invoke-direct {v0}, Lcom/google/android/gms/common/a/e;-><init>()V

    sget-wide v2, Lcom/google/android/gms/b/n;->c:J

    new-instance v1, Lcom/google/android/gms/b/n$b;

    invoke-direct {v1}, Lcom/google/android/gms/b/n$b;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/b/n;-><init>(Lcom/google/android/gms/common/a/d;JLcom/google/android/gms/b/n$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/a/d;JLcom/google/android/gms/b/n$a;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/n;->f:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/b/n;->g:J

    iput-object v2, p0, Lcom/google/android/gms/b/n;->i:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/google/android/gms/b/n;->j:Lcom/google/android/gms/common/api/c;

    new-instance v0, Lcom/google/android/gms/b/n$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/n$1;-><init>(Lcom/google/android/gms/b/n;)V

    iput-object v0, p0, Lcom/google/android/gms/b/n;->k:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/b/n;->d:Lcom/google/android/gms/common/a/d;

    iput-wide p2, p0, Lcom/google/android/gms/b/n;->h:J

    iput-object p4, p0, Lcom/google/android/gms/b/n;->e:Lcom/google/android/gms/b/n$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/n;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/n;->j:Lcom/google/android/gms/common/api/c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/b/n;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/n;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/b/n;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/gms/b/n;)Lcom/google/android/gms/common/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/n;->d:Lcom/google/android/gms/common/a/d;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/b/n;)Lcom/google/android/gms/common/api/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/n;->j:Lcom/google/android/gms/common/api/c;

    return-object v0
.end method
