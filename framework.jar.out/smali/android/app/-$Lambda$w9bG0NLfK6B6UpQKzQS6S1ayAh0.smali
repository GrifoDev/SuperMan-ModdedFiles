.class final synthetic Landroid/app/-$Lambda$w9bG0NLfK6B6UpQKzQS6S1ayAh0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/app/-$Lambda$w9bG0NLfK6B6UpQKzQS6S1ayAh0;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityTransitionCoordinator;

    iget-object v1, p0, Landroid/app/-$Lambda$w9bG0NLfK6B6UpQKzQS6S1ayAh0;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionCoordinator;->lambda$-android_app_ActivityTransitionCoordinator_29192(Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$Lambda$w9bG0NLfK6B6UpQKzQS6S1ayAh0;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/app/-$Lambda$w9bG0NLfK6B6UpQKzQS6S1ayAh0;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/app/-$Lambda$w9bG0NLfK6B6UpQKzQS6S1ayAh0;->$m$0()V

    return-void
.end method
