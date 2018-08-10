.class final synthetic Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Z

.field private final synthetic -$f2:I

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f3:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/dreams/DreamManagerService;

    iget-object v1, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f4:Ljava/lang/Object;

    check-cast v1, Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f5:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    iget-boolean v3, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f0:Z

    iget-boolean v4, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f1:Z

    iget v5, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f2:I

    iget-object v6, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f6:Ljava/lang/Object;

    check-cast v6, Landroid/os/PowerManager$WakeLock;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/dreams/DreamManagerService;->lambda$-com_android_server_dreams_DreamManagerService_16923(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method public synthetic constructor <init>(ZZILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f0:Z

    iput-boolean p2, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f1:Z

    iput p3, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f2:I

    iput-object p4, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f5:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->-$f6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/dreams/-$Lambda$dfp8DttNm5JJd9A6fO_YwpN41tY;->$m$0()V

    return-void
.end method
