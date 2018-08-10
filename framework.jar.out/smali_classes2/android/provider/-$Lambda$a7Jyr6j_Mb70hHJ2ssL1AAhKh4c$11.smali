.class final synthetic Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 5

    iget-object v0, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/provider/FontRequest;

    iget-object v3, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    iget-object v4, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;->-$f4:Ljava/lang/Object;

    check-cast v4, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_20963(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;->$m$0()V

    return-void
.end method
