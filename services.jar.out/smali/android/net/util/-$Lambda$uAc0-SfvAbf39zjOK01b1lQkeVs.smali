.class final synthetic Landroid/net/util/-$Lambda$uAc0-SfvAbf39zjOK01b1lQkeVs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/net/util/-$Lambda$uAc0-SfvAbf39zjOK01b1lQkeVs;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/util/MultinetworkPolicyTracker;

    iget-object v1, p0, Landroid/net/util/-$Lambda$uAc0-SfvAbf39zjOK01b1lQkeVs;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/net/util/MultinetworkPolicyTracker;->lambda$-android_net_util_MultinetworkPolicyTracker_2908(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/util/-$Lambda$uAc0-SfvAbf39zjOK01b1lQkeVs;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/util/-$Lambda$uAc0-SfvAbf39zjOK01b1lQkeVs;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/net/util/-$Lambda$uAc0-SfvAbf39zjOK01b1lQkeVs;->$m$0()V

    return-void
.end method
