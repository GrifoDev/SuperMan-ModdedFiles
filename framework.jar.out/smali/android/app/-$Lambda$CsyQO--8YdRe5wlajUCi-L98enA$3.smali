.class final synthetic Landroid/app/-$Lambda$CsyQO--8YdRe5wlajUCi-L98enA$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/app/-$Lambda$CsyQO--8YdRe5wlajUCi-L98enA$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/EnterTransitionCoordinator;

    iget-object v1, p0, Landroid/app/-$Lambda$CsyQO--8YdRe5wlajUCi-L98enA$3;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->lambda$-android_app_EnterTransitionCoordinator_6702(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$Lambda$CsyQO--8YdRe5wlajUCi-L98enA$3;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/app/-$Lambda$CsyQO--8YdRe5wlajUCi-L98enA$3;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/app/-$Lambda$CsyQO--8YdRe5wlajUCi-L98enA$3;->$m$0()V

    return-void
.end method
