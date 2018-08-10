.class final synthetic Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 6

    iget-object v0, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/app/Fragment;

    iget-object v1, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f0:Z

    iget-object v3, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f4:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f5:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->lambda$-android_app_FragmentTransition_26843(Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f0:Z

    iput-object p2, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->-$f5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$2;->$m$0()V

    return-void
.end method
