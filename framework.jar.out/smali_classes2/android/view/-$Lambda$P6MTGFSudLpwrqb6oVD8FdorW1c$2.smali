.class final synthetic Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c$2;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceView$3;

    iget-boolean v1, p0, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c$2;->-$f0:Z

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView$3;->lambda$-android_view_SurfaceView$3_45265(Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c$2;->-$f0:Z

    iput-object p2, p0, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c$2;->$m$0()V

    return-void
.end method
