.class final synthetic Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 7

    iget-object v0, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontRequest;

    iget-object v1, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f2:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f3:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f4:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f5:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f6:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/locks/Condition;

    invoke-static/range {v0 .. v6}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_13824(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f5:Ljava/lang/Object;

    iput-object p7, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->-$f6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;->$m$0()V

    return-void
.end method
