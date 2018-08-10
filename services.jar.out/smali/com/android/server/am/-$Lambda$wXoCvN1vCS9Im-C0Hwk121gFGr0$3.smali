.class final synthetic Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Z

.field private final synthetic -$f2:I

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;->-$f3:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, p0, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;->-$f2:I

    iget-boolean v3, p0, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;->-$f0:Z

    iget-boolean v4, p0, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;->-$f1:Z

    iget-object v1, p0, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;->-$f4:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->lambda$-com_android_server_am_ActivityStackSupervisor_135176(IZZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method public synthetic constructor <init>(ZZILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;->-$f0:Z

    iput-boolean p2, p0, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;->-$f1:Z

    iput p3, p0, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;->-$f2:I

    iput-object p4, p0, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0$3;->$m$0()V

    return-void
.end method
