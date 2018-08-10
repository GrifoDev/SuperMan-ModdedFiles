.class final synthetic Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f10:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;

.field private final synthetic -$f7:Ljava/lang/Object;

.field private final synthetic -$f8:Ljava/lang/Object;

.field private final synthetic -$f9:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 11

    iget-object v0, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/transition/TransitionSet;

    iget-object v2, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f3:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentTransition$FragmentContainerTransition;

    iget-object v3, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f4:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f5:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f6:Ljava/lang/Object;

    check-cast v5, Landroid/app/Fragment;

    iget-object v6, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f7:Ljava/lang/Object;

    check-cast v6, Landroid/app/Fragment;

    iget-boolean v7, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f0:Z

    iget-object v8, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f8:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f9:Ljava/lang/Object;

    check-cast v9, Landroid/transition/Transition;

    iget-object v10, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f10:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Rect;

    invoke-static/range {v0 .. v10}, Landroid/app/FragmentTransition;->lambda$-android_app_FragmentTransition_32404(Landroid/util/ArrayMap;Landroid/transition/TransitionSet;Landroid/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f0:Z

    iput-object p2, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f5:Ljava/lang/Object;

    iput-object p7, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f6:Ljava/lang/Object;

    iput-object p8, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f7:Ljava/lang/Object;

    iput-object p9, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f8:Ljava/lang/Object;

    iput-object p10, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f9:Ljava/lang/Object;

    iput-object p11, p0, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->-$f10:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/app/-$Lambda$3eJ3p8XnIxdVOnT82Ns3R0V5ZQE$3;->$m$0()V

    return-void
.end method
