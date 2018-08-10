.class final synthetic Landroid/app/-$Lambda$8uWMFb2KUDCg_0T38K6bXl5YuoU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/app/-$Lambda$8uWMFb2KUDCg_0T38K6bXl5YuoU;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityTransitionState;

    iget-object v1, p0, Landroid/app/-$Lambda$8uWMFb2KUDCg_0T38K6bXl5YuoU;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionState;->lambda$-android_app_ActivityTransitionState_12499(Landroid/app/Activity;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$Lambda$8uWMFb2KUDCg_0T38K6bXl5YuoU;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/app/-$Lambda$8uWMFb2KUDCg_0T38K6bXl5YuoU;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/app/-$Lambda$8uWMFb2KUDCg_0T38K6bXl5YuoU;->$m$0()V

    return-void
.end method
